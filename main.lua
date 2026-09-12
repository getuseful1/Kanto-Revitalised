-- ============================================================================
-- Kanto Revitalised - Entry Point (main.lua)
-- Gen1Recomp Mod API v2
-- ============================================================================

return function(mod)
  mod.log:info("Initializing Kanto Revitalised v" .. tostring(mod.version or "1.0.0"))

  mod.options:define({
    { key = "enable_rebalance", type = "toggle", label = "ENABLE REBALANCE OVERHAUL", default = true },
    { key = "modern_battle_fixes", type = "toggle", label = "ENABLE MODERN BATTLE FIXES", default = true },
    { key = "enable_story_overhaul", type = "toggle", label = "ENABLE STORY OVERHAUL", default = true },
    { key = "sprite_source", type = "choice", label = "POKEMON SPRITE SOURCE", options = { { label = "Mod Sprites", value = "mod" }, { label = "ROM Sprites", value = "rom" } }, default = "mod" }
  })

  -- Store custom abilities safely outside the engine registry
  mod.CUSTOM_ABILITIES = mod.CUSTOM_ABILITIES or {}

  -- Detect booting generation to shape records perfectly[cite: 1]
  local isGen2 = pcall(function()
    mod.content.pokemon:patch("BULBASAUR", { levelMoves = {} })
  end)

  local function normalizePokemonData(id, data)
    if type(data) ~= "table" then return data end
    local out = {}

    for k, v in pairs(data) do
      if k ~= "abilities" and k ~= "spAtk" and k ~= "spDef" and k ~= "type" and k ~= "moves" then
        out[k] = v
      end
    end

    -- 1. Safely extract abilities before they cause schema validation crashes[cite: 1]
    if data.abilities then
      mod.CUSTOM_ABILITIES[id] = data.abilities
    end

    -- 2. Format BaseStats for Gen 1 vs Gen 2[cite: 1]
    if data.baseStats and type(data.baseStats) == "table" then
      local bs = {}
      for k, v in pairs(data.baseStats) do
        if k ~= "spAtk" and k ~= "spDef" and k ~= "special" and k ~= "specialAttack" and k ~= "specialDefense" then
          bs[k] = v
        end
      end
      
      local spec = data.baseStats.special or data.baseStats.spAtk or data.baseStats.specialAttack or 50
      local spDef = data.baseStats.spDef or data.baseStats.specialDefense or spec

      if isGen2 then
        bs.specialAttack = spec
        bs.specialDefense = spDef
      else
        bs.special = spec
      end
      out.baseStats = bs
    end

    -- 3. Format Learnset vs LevelMoves[cite: 1]
    local rawLearnset = data.learnset or data.levelMoves
    if rawLearnset and type(rawLearnset) == "table" then
      local cleanLearnset = {}
      local lvl1Moves = data.level1Moves or {}
      
      for _, entry in pairs(rawLearnset) do
        if type(entry) == "table" then
          local lvl = entry.level or entry.lvl or 1
          local mv = entry.move or entry.id
          if mv then
            if isGen2 then
              table.insert(cleanLearnset, { level = lvl, move = mv })
            else
              if lvl == 1 then
                table.insert(lvl1Moves, mv)
              else
                table.insert(cleanLearnset, { level = lvl, move = mv })
              end
            end
          end
        end
      end
      
      if isGen2 then
        out.levelMoves = cleanLearnset
        out.learnset = nil
        out.level1Moves = nil
      else
        out.learnset = cleanLearnset
        out.level1Moves = lvl1Moves
        out.levelMoves = nil
      end
    end

    return out
  end

  -- Hook engine registry calls to apply formatting dynamically
  if mod.content and mod.content.pokemon then
    local origPatch = mod.content.pokemon.patch
    mod.content.pokemon.patch = function(self, id, partial, ...)
      if type(partial) == "table" then
        partial = normalizePokemonData(id, partial)
      end
      return origPatch(self, id, partial, ...)
    end

    local origReg = mod.content.pokemon.register
    mod.content.pokemon.register = function(self, id, data, ...)
      if type(data) == "table" then
        data = normalizePokemonData(id, data)
      end
      return origReg(self, id, data, ...)
    end
  end

  -- Safe Module Loader
  local function loadModule(name)
    local status, fn = pcall(require, name)
    if status and type(fn) == "function" then
      pcall(fn, mod)
      return true
    end
    local path = mod.path and (mod.path .. "/" .. name .. ".lua") or (name .. ".lua")
    local chunk = loadfile(path)
    if chunk then
      local ok, inner = pcall(chunk)
      if ok and type(inner) == "function" then pcall(inner, mod) end
    end
  end
  mod.loadModule = loadModule

  if mod.options:get("modern_battle_fixes") then
    mod.content.moves:patch("FOCUS_ENERGY", { accuracy = 100 })
    mod.content.moves:patch("BLIZZARD", { accuracy = 70 })
  end

  loadModule("new-moves")
  loadModule("new-moves-effects")
  loadModule("items")
  loadModule("balls")
  loadModule("abilities")

  if mod.options:get("enable_rebalance") then
    loadModule("rebalance")
    loadModule("encounters")
    loadModule("trainers")
  end

  loadModule("overworld_icons")
  loadModule("maps")
  loadModule("npcs_dialogue")
  loadModule("story_events")
  loadModule("ui-enhancements")

  mod.events:on("game.ready", function(ev)
    mod.log:info("Kanto Revitalised is active!")
  end)
end
