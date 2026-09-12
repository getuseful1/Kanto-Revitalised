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

    if status then
      if type(fn) == "function" then
        local runStatus, err = pcall(fn, mod)
        if runStatus then
          mod.log:info("Kanto Revitalised: Successfully loaded module '" .. name .. "'")
          return true
        else
          mod.log:error("Kanto Revitalised: Error executing module '" .. name .. "': " .. tostring(err))
          return false
        end
      else
        mod.log:info("Kanto Revitalised: Successfully loaded module '" .. name .. "' (non-function export)")
        return true
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

  -- Normalize Pokémon data structures to support all Gen1Recomp API key requirements
  -- without triggering strict schema typo validation.
  local function normalizePokemonData(data)
    if not data or type(data) ~= "table" then return data end

    -- 1. BaseStats normalization:
    -- Gen1Recomp expects 'special' (Gen 1) or 'specialAttack' / 'specialDefense' (Gen 2 shape).
    -- Passing 'spAtk' or 'spDef' directly triggers a schema validation load error.
    if data.baseStats and type(data.baseStats) == "table" then
      local bs = data.baseStats
      if bs.spAtk then
        bs.specialAttack = bs.spAtk
        bs.spAtk = nil
      end
      if bs.spDef then
        bs.specialDefense = bs.spDef
        bs.spDef = nil
      end
    end

    -- 2. Learnset Array Cleanup:
    -- The schema strictly requires exactly { level = X, move = "Y" }. 
    if data.learnset and type(data.learnset) == "table" then
      for _, entry in pairs(data.learnset) do
        if type(entry) == "table" then
          -- Remove extra inner keys to prevent shape validation failures
          entry.lvl = nil
          entry.id = nil
          entry[1] = nil
          entry[2] = nil
        end
      end
    end

    -- 3. Remove Schema-Violating Aliases:
    -- The engine strictly rejects top-level keys that look like typo variants of real fields.
    -- We must ensure the interceptor does not inject these back in.
    data.type = nil
    data.type1 = nil
    data.type2 = nil
    data.moves = nil
    data.levelUpMoves = nil
    data.level_up_moves = nil
    data.levelMoves = nil

    return data
  end

  if mod.content and mod.content.pokemon then
    local origPatch = mod.content.pokemon.patch
    if origPatch then
      mod.content.pokemon.patch = function(self, id, dataOrKey, value, ...)
        if value ~= nil then
          if type(value) == "table" then
            value = normalizePokemonData(value)
          end
          return origPatch(self, id, dataOrKey, value, ...)
        elseif type(dataOrKey) == "table" then
          return origPatch(self, id, normalizePokemonData(dataOrKey), ...)
        else
          return origPatch(self, id, dataOrKey, ...)
        end
      end
    end

    local origRegister = mod.content.pokemon.register
    if origRegister then
      mod.content.pokemon.register = function(self, id, data, ...)
        if type(data) == "table" then
          return origRegister(self, id, normalizePokemonData(data), ...)
        else
          return origRegister(self, id, data, ...)
        end
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
