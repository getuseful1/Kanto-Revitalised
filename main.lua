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
    if not (status and type(fn) == "function") then
      local pathsToTry = {
        name .. ".lua",
        name
      }
      if mod and mod.path then
        table.insert(pathsToTry, 1, mod.path .. "/" .. name .. ".lua")
        table.insert(pathsToTry, 2, mod.path .. "/" .. name)
      end
      for _, path in ipairs(pathsToTry) do
        local loaded, err = loadfile(path)
        if loaded and type(loaded) == "function" then
          status = true
          fn = loaded
          break
        end
      end
    end

    if status and type(fn) == "function" then
      local runStatus, err = pcall(fn, mod)
      if runStatus then
        mod.log:info("Kanto Revitalised: Successfully loaded module '" .. name .. "'")
      else
        mod.log:error("Kanto Revitalised: Error executing module '" .. name .. "': " .. tostring(err))
      end
    else
      mod.log:error("Kanto Revitalised: Failed to load module '" .. name .. "': " .. tostring(fn))
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
