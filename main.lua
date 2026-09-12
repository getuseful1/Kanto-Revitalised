-- ============================================================================
-- Kanto Revitalised - Entry Point (main.lua)
-- Gen1Recomp Mod API v2
-- ============================================================================

return function(mod)
  -- 1. Mod Metadata & Initialization Log
  mod.log:info("Initializing Kanto Revitalised v" .. tostring(mod.version or "1.0.0"))

  -- 2. Define Mod Options
  mod.options:define({
    { 
      key = "enable_rebalance", 
      type = "toggle", 
      label = "ENABLE REBALANCE OVERHAUL", 
      default = true 
    },
    { 
      key = "modern_battle_fixes", 
      type = "toggle", 
      label = "ENABLE MODERN BATTLE FIXES", 
      default = true 
    },
    {
      key = "enable_story_overhaul",
      type = "toggle",
      label = "ENABLE STORY OVERHAUL",
      default = true
    },
    {
      key = "sprite_source",
      type = "choice",
      label = "POKEMON SPRITE SOURCE",
      options = {
        { label = "Mod Sprites (GSC)", value = "mod" },
        { label = "Vanilla ROM Sprites", value = "rom" }
      },
      default = "mod"
    }
  })

  -- Helper function to safely require and execute submodules
  local function loadModule(name)
    if mod and mod.path and type(mod.path) == "string" then
      local pattern = mod.path .. "/?.lua;" .. mod.path .. "/?/init.lua"
      if not package.path:find(pattern, 1, true) then
        package.path = pattern .. ";" .. package.path
      end
    end

    local status, fn = pcall(require, name)

    -- If fn is a function returned by require, execute it with mod if needed
    if status and type(fn) == "function" then
      local runStatus, err = pcall(fn, mod)
      if runStatus then
        mod.log:info("Kanto Revitalised: Successfully loaded module '" .. name .. "'")
        return true
      else
        mod.log:error("Kanto Revitalised: Error executing module '" .. name .. "': " .. tostring(err))
        return false
      end
    end

    -- Fallback strategy using loadfile
    local pathsToTry = {
      name .. ".lua",
      name
    }
    if mod and mod.path then
      table.insert(pathsToTry, 1, mod.path .. "/" .. name .. ".lua")
      table.insert(pathsToTry, 2, mod.path .. "/" .. name)
    end

    for _, path in ipairs(pathsToTry) do
      local loadedChunk, err = loadfile(path)
      if loadedChunk and type(loadedChunk) == "function" then
        -- Execute the chunk to get module export (e.g. return function(mod) ... end)
        local chunkOk, innerFn = pcall(loadedChunk)
        if chunkOk then
          if type(innerFn) == "function" then
            local runStatus, runErr = pcall(innerFn, mod)
            if runStatus then
              mod.log:info("Kanto Revitalised: Successfully loaded module '" .. name .. "' via loadfile (" .. path .. ")")
              return true
            else
              mod.log:error("Kanto Revitalised: Error executing module '" .. name .. "' (" .. path .. "): " .. tostring(runErr))
              return false
            end
          else
            -- Chunk executed directly without returning a function wrapper
            mod.log:info("Kanto Revitalised: Successfully loaded module '" .. name .. "' chunk (" .. path .. ")")
            return true
          end
        else
          mod.log:error("Kanto Revitalised: Error evaluating module chunk '" .. name .. "' (" .. path .. "): " .. tostring(innerFn))
        end
      end
    end

    mod.log:error("Kanto Revitalised: Failed to load module '" .. name .. "'")
    return false
  end

  mod.loadModule = loadModule

  -- Normalize Pokémon data structures to support all Gen1Recomp API key aliases for types and learnsets
  local function normalizePokemonData(data)
    if not data or type(data) ~= "table" then return data end

    -- Typing normalization (types, type1, type2, type)
    local tList = data.types or data.type
    if not tList and (data.type1 or data.type2) then
      tList = {}
      if data.type1 then table.insert(tList, data.type1) end
      if data.type2 then table.insert(tList, data.type2) end
    end

    if tList then
      if type(tList) == "string" then
        tList = { tList }
      end
      data.types = tList
      data.type = tList
      if tList[1] then data.type1 = tList[1] end
      if tList[2] then data.type2 = tList[2] else data.type2 = tList[1] end
    end

    -- Learnset normalization (learnset, moves, levelUpMoves, level_up_moves)
    local lset = data.learnset or data.moves or data.levelUpMoves or data.level_up_moves
    if lset and type(lset) == "table" then
      local normalizedLset = {}
      for k, entry in pairs(lset) do
        if type(entry) == "table" then
          local lvl = entry.level or entry.lvl
          local mv = entry.move or entry.id
          if not lvl or not mv then
            for _, v in pairs(entry) do
              if type(v) == "number" then lvl = v end
              if type(v) == "string" then mv = v end
            end
          end
          if not lvl and type(k) == "number" then lvl = k end
          lvl = lvl or 1
          if mv then
            table.insert(normalizedLset, {
              level = lvl,
              move = mv,
              lvl = lvl,
              id = mv,
              [1] = lvl,
              [2] = mv
            })
          end
        elseif type(k) == "number" and type(entry) == "string" then
          table.insert(normalizedLset, {
            level = k,
            move = entry,
            lvl = k,
            id = entry,
            [1] = k,
            [2] = entry
          })
        end
      end

      table.sort(normalizedLset, function(a, b) return (a.level or 0) < (b.level or 0) end)

      data.learnset = normalizedLset
      data.moves = normalizedLset
      data.levelUpMoves = normalizedLset
      data.level_up_moves = normalizedLset
    end

    return data
  end

  if mod.content and mod.content.pokemon then
    local origPatch = mod.content.pokemon.patch
    if origPatch then
      mod.content.pokemon.patch = function(self, id, data)
        return origPatch(self, id, normalizePokemonData(data))
      end
    end

    local origRegister = mod.content.pokemon.register
    if origRegister then
      mod.content.pokemon.register = function(self, id, data)
        return origRegister(self, id, normalizePokemonData(data))
      end
    end
  end

  -- 3. Apply Modern Battle Ruleset Adjustments
  if mod.options:get("modern_battle_fixes") then
    if mod.content and mod.content.moves then
      mod.content.moves:patch("FOCUS_ENERGY", { accuracy = 100 })
      mod.content.moves:patch("BLIZZARD", { accuracy = 70 })
    end
  end

  -- 4. Load Content & Mechanics Modules
  loadModule("new-moves")
  loadModule("new-moves-effects")
  loadModule("items")
  loadModule("balls")
  loadModule("abilities")

  -- 5. Load Roster Rebalance & Encounter Overhauls
  if mod.options:get("enable_rebalance") then
    loadModule("rebalance")
    loadModule("encounters")
    loadModule("trainers")
  end

  -- 6. Load Overworld, Story & UI Enhancements
  loadModule("overworld_icons")
  loadModule("maps")
  loadModule("npcs_dialogue")
  loadModule("story_events")
  loadModule("ui-enhancements")

  -- 7. Lifecycle Event Subscriptions
  if mod.events and mod.events.on then
    mod.events:on("game.ready", function(ev)
      mod.log:info("Kanto Revitalised is active in live game session!")
    end)
  end
end
