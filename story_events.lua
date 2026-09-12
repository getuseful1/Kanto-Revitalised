-- ============================================================================
-- Kanto Revitalised - Story Events Module (story_events.lua)
-- Gen1Recomp Mod API v2
-- Handles narrative flags, route roadblocks, and story progression state
-- ============================================================================

return function(mod)
  if not mod or not mod.events or not mod.hooks then
    error("story_events.lua requires a valid gen1recomp mod object!")
  end

  mod.log:info("Kanto Revitalised: Initializing Story Events Engine...")

  -- 1. Helper function for story flags
  local function getStoryFlag(key, default)
    if not game or not game.save then return default end
    if not game.save.flags then game.save.flags = {} end
    if game.save.flags[key] == nil then return default end
    return game.save.flags[key]
  end

  local function setStoryFlag(key, value)
    if not game or not game.save then return end
    if not game.save.flags then game.save.flags = {} end
    game.save.flags[key] = value
  end

  -- Expose flag helper on mod object
  mod.getStoryFlag = getStoryFlag
  mod.setStoryFlag = setStoryFlag

  -- 2. Route 2 Quarantine Step Trigger (Prevents progression North before Flint Jr.)
  if mod.content and mod.content.map_scripts then
    mod.content.map_scripts:register("VIRIDIAN_CITY", {
      onStep = function(game, x, y)
        if not mod.options:get("enable_story_overhaul") then return end
        
        -- Cell x,y near North Route 2 exit (Viridian Gate / North Exit)
        if x >= 17 and x <= 19 and y <= 3 then
          local defeatedBrock = getStoryFlag("kr_gym_pewter_cleared", false) or (game.save and game.save.badges and game.save.badges[1])
          if not defeatedBrock then
            if mod.ui and mod.ui.TextBox and mod.ui.TextBox.show then
              mod.ui.TextBox.show(game, {
                title = "ROUTE 2 QUARANTINE",
                text = "ATTENTION TRAINER!\nRoute 2 North is quarantined due to invasive species.\n\nTake the Route 22 detour west to Pewter City!"
              })
            end
            -- Step player back 1 cell south
            if mod.world and mod.world.npc then
              local p = mod.world:npc("player")
              if p and p.placeAt then p:placeAt(x, y + 1, "down") end
            end
          end
        end
      end
    })
  end

  -- 3. Game Start Story Notification
  mod.events:on("game.ready", function(ev)
    if mod.options:get("enable_story_overhaul") then
      mod.log:info("Kanto Revitalised Story Overhaul Campaign is ACTIVE in this session!")
    end
  end)

  -- 4. Chapter 4 Step Triggers: Saffron City Blockade & Silph Co. Lockdown
  if mod.content and mod.content.map_scripts then
    mod.content.map_scripts:register("SAFFRON_CITY", {
      onStep = function(game, x, y)
        if not mod.options:get("enable_story_overhaul") then return end
        local silphLiberated = getStoryFlag("kr_silph_co_liberated", false)
        if not silphLiberated and y >= 20 and y <= 22 and x >= 18 and x <= 22 then
          if mod.ui and mod.ui.TextBox and mod.ui.TextBox.show then
            mod.ui.TextBox.show(game, {
              title = "SAFFRON UNDER LOCKDOWN",
              text = "ATTENTION CITIZEN!\nSilph Co. HQ is under lockdown by Rocket Syndicate forces.\n\nLiberate Silph Co. to restore city access!"
            })
          end
        end
      end
    })
  end
end
