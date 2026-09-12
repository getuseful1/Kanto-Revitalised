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

  local function getStoryFlag(game, key, default)
    if not game or not game.save then return default end
    if not game.save.flags then game.save.flags = {} end
    if game.save.flags[key] == nil then return default end
    return game.save.flags[key]
  end

  local function setStoryFlag(game, key, value)
    if not game or not game.save then return end
    if not game.save.flags then game.save.flags = {} end
    game.save.flags[key] = value
  end

  mod.getStoryFlag = getStoryFlag
  mod.setStoryFlag = setStoryFlag

  -- 1. Prologue Dialogue & Heal Events[cite: 41]
  if mod.content.map_scripts then
    mod.content.map_scripts:register("REDS_HOUSE_1F", {
      talk = {
        TEXT_GRANDMA = {
          { "show_text", "TEXT_GRANDMA" },
          { "heal_party" },
          { "show_text", "Your Pokémon are fully recovered! Good luck!" }
        }
      }
    })
  end

  -- 2. Step Triggers: Quarantines and Lockdowns[cite: 41]
  if mod.content.map_scripts then
    mod.content.map_scripts:register("VIRIDIAN_CITY", {
      onStep = function(game, x, y)
        if not mod.options:get("enable_story_overhaul") then return end
        
        -- Check Route 2 North Quarantine (Cleared by defeating Flint Jr. / Boulder Badge)[cite: 41]
        if x >= 17 and x <= 19 and y <= 3 then
          local defeatedFlint = getStoryFlag(game, "kr_gym_pewter_cleared", false) or (game.save and game.save.badges and game.save.badges[1])
          
          if not defeatedFlint then
            if mod.ui and mod.ui.TextBox and mod.ui.TextBox.show then
              mod.ui.TextBox.show(game, {
                title = "ROUTE 2 QUARANTINE",
                text = "ATTENTION TRAINER!\nRoute 2 North is quarantined due to invasive species.\nTake the Route 22 detour west to Pewter City!"
              })
            end
            if game.player and game.player.placeAt then
              game.player:placeAt(x, y + 1, "down")
            end
          end
        end
      end
    })

    mod.content.map_scripts:register("SAFFRON_CITY", {
      onStep = function(game, x, y)
        if not mod.options:get("enable_story_overhaul") then return end
        
        -- Check Silph Co. Lockdown[cite: 41]
        local silphLiberated = getStoryFlag(game, "kr_silph_cleared", false)
        if not silphLiberated and y >= 20 and y <= 22 and x >= 18 and x <= 22 then
          if mod.ui and mod.ui.TextBox and mod.ui.TextBox.show then
            mod.ui.TextBox.show(game, {
              title = "SAFFRON UNDER LOCKDOWN",
              text = "ATTENTION CITIZEN!\nSilph Co. HQ is under lockdown by Executive Vance.\nLiberate Silph Co. to restore city access!"
            })
          end
          if game.player and game.player.placeAt then
            game.player:placeAt(x, y + 1, "down")
          end
        end
      end
    })
  end

  -- 3. Syndicate Admins: Multi-Stage Talk & Battle Scripting[cite: 41]
  -- Using Gen1Recomp's sequential arrays to force a battle right after dialogue.
  if mod.content.map_scripts then
    
    -- Chapter 2: Petrel[cite: 41]
    mod.content.map_scripts:register("MT_MOON_B2F", {
      talk = {
        TEXT_MT_MOON_PETREL = {
          { "show_text", "TEXT_MT_MOON_PETREL" },
          { "start_battle", "trainer", "ROCKET", 1 }, -- Triggers the battle engine immediately
          { "hide_object", "ROCKET_ADMIN_PETREL" }
        }
      }
    })

    -- Chapter 2: Proton[cite: 41]
    mod.content.map_scripts:register("ROUTE_25", {
      talk = {
        TEXT_ROUTE25_PROTON = {
          { "show_text", "TEXT_ROUTE25_PROTON" },
          { "start_battle", "trainer", "ROCKET", 2 },
          { "hide_object", "ROCKET_ADMIN_PROTON" }
        }
      }
    })

    -- Chapter 3: Ariana (S.S. Anne)[cite: 41]
    mod.content.map_scripts:register("SS_ANNE_DECK", {
      talk = {
        TEXT_SS_ANNE_ARIANA = {
          { "show_text", "TEXT_SS_ANNE_ARIANA" },
          { "start_battle", "trainer", "ROCKET", 3 },
          { "hide_object", "ROCKET_ADMIN_ARIANA" }
        }
      }
    })

    -- Chapter 3: Archer (Lavender Tower)[cite: 41]
    mod.content.map_scripts:register("POKEMONTOWER_7F", {
      talk = {
        TEXT_POKEMONTOWER_ARCHER = {
          { "show_text", "TEXT_POKEMONTOWER_ARCHER" },
          { "start_battle", "trainer", "ROCKET", 4 },
          { "hide_object", "ROCKET_ADMIN_ARCHER" }
        }
      }
    })

    -- Chapter 4: Executive Vance (Hideout & Silph Co)[cite: 41]
    mod.content.map_scripts:register("ROCKET_HIDEOUT_B4F", {
      talk = {
        TEXT_GAMECORNER_VANCE = {
          { "show_text", "TEXT_GAMECORNER_VANCE" },
          { "start_battle", "trainer", "BOSS", 1 },
          { "hide_object", "EXECUTIVE_VANCE_HIDEOUT" }
        }
      }
    })

    mod.content.map_scripts:register("SILPH_CO_11F", {
      talk = {
        TEXT_SILPH_VANCE = {
          { "show_text", "TEXT_SILPH_VANCE" },
          { "start_battle", "trainer", "BOSS", 2 },
          { "hide_object", "EXECUTIVE_VANCE_SILPH" }
        }
      }
    })

    -- Chapters 5, 6, 8: Legendary Snag Confrontations[cite: 41]
    mod.content.map_scripts:register("SEAFOAM_ISLANDS_B4F", {
      talk = {
        TEXT_SEAFOAM_ARIANA = {
          { "show_text", "TEXT_SEAFOAM_ARIANA" },
          { "start_battle", "trainer", "ROCKET", 5 },
          { "hide_object", "ROCKET_ADMIN_ARIANA_ICE" }
        }
      }
    })

    mod.content.map_scripts:register("POWER_PLANT", {
      talk = {
        TEXT_POWERPLANT_ARCHER = {
          { "show_text", "TEXT_POWERPLANT_ARCHER" },
          { "start_battle", "trainer", "ROCKET", 6 },
          { "hide_object", "ROCKET_ADMIN_ARCHER_ELEC" }
        }
      }
    })

    mod.content.map_scripts:register("VICTORY_ROAD_3F", {
      talk = {
        TEXT_VICTORYROAD_VANCE = {
          { "show_text", "TEXT_VICTORYROAD_VANCE" },
          { "start_battle", "trainer", "BOSS", 3 },
          { "hide_object", "EXECUTIVE_VANCE_VOLCANO" }
        }
      }
    })
  end

  -- 4. Battle Completion Hook (Update Flags when Admins are defeated)[cite: 41]
  mod.events:on("battle.ended", function(ev)
    if ev.battle and ev.battle.enemy_trainer and ev.battle.result == "win" then
      local tid = ev.battle.enemy_trainer.id
      local trIdx = ev.battle.enemy_trainer_index
      
      -- Set appropriate flags upon defeating key syndicate members[cite: 41]
      if tid == "ROCKET" then
        if trIdx == 1 then setStoryFlag(ev.battle.game, "kr_mtmoon_cleared", true)
        elseif trIdx == 2 then setStoryFlag(ev.battle.game, "kr_ceruleancape_cleared", true)
        elseif trIdx == 3 then setStoryFlag(ev.battle.game, "kr_ssanne_cleared", true)
        elseif trIdx == 4 then setStoryFlag(ev.battle.game, "kr_lavender_tower_cleared", true)
        elseif trIdx == 5 then setStoryFlag(ev.battle.game, "kr_articuno_captured", true)
        elseif trIdx == 6 then setStoryFlag(ev.battle.game, "kr_zapdos_captured", true)
        end
      elseif tid == "BOSS" then
        if trIdx == 1 then setStoryFlag(ev.battle.game, "kr_hideout_cleared", true)
        elseif trIdx == 2 then setStoryFlag(ev.battle.game, "kr_silph_cleared", true)
        elseif trIdx == 3 then setStoryFlag(ev.battle.game, "kr_moltres_captured", true)
        end
      end
    end
  end)

  mod.events:on("game.ready", function(ev)
    if mod.options:get("enable_story_overhaul") then
      mod.log:info("Kanto Revitalised Story Overhaul Campaign is ACTIVE!")
    end
  end)
end
