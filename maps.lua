-- ============================================================================
-- Kanto Revitalised - World Maps Patch Module (maps.lua)
-- Gen1Recomp Mod API v2
-- Modifies Kanto map blocks, signs, and places story NPCs
-- ============================================================================

return function(mod)
  if not mod or not mod.content or not mod.content.maps or not mod.content.text then
    error("maps.lua requires a valid gen1recomp mod object!")
  end

  mod.log:info("Kanto Revitalised: Applying Overworld Story Map Patches...")

  -- 1. Override Signs Across Kanto (15 Years Later)
  mod.content.text:override("_PalletTownSignText", "PALLET TOWN\nShades of your journey await!")
  mod.content.text:override("_OaksLabSignText", "PROF. MAHOGANY'S\nPOKéMON LAB")
  mod.content.text:override("_RedsHouseSignText", "RED & GRANDMA'S HOUSE")
  mod.content.text:override("_VermilionGymSignText", "VERMILION CITY POKéMON GYM\nLEADER: SGT. SPARKS")
  mod.content.text:override("_LavenderTownSignText", "LAVENDER TOWN\nThe Noble Purple Town\nHOME OF THE RADIO & MEMORIAL TOWER")

  -- 2. Register NPC Dialogue Text Strings[cite: 41]
  mod.content.text:register("TEXT_GRANDMA", "GRANDMA: Your father, Red, rested his team here 15 years ago. Let me heal your Pokémon.")
  mod.content.text:register("TEXT_RETIRED_OAK", "RETIRED PROF. OAK: Ah, the child of Red! The ecosystem has shifted immensely since my time.")
  mod.content.text:register("TEXT_PROF_MAHOGANY", "PROF. MAHOGANY: Welcome! Kanto's habitats have changed. Take this Research Pokédex!")
  mod.content.text:register("TEXT_ROUTE2_QUARANTINE_GUARD", "ATTENTION TRAINER!\nRoute 2 North is quarantined. Take the Route 22 detour west to Pewter City!")
  
  -- Syndicate Dialogue[cite: 41]
  mod.content.text:register("TEXT_MT_MOON_PETREL", "ADMIN PETREL: Hehehe! I oversee these fossil excavations for the Syndicate!")
  mod.content.text:register("TEXT_ROUTE25_PROTON", "ADMIN PROTON: You dare interrupt my maritime smuggling operations at the Cape?")
  mod.content.text:register("TEXT_SS_ANNE_ARIANA", "ADMIN ARIANA: I direct our cargo logistics! You will regret interfering!")
  mod.content.text:register("TEXT_POKEMONTOWER_ARCHER", "ADMIN ARCHER: I broadcast high-frequency control signals from this tower! Begone!")
  mod.content.text:register("TEXT_GAMECORNER_VANCE", "EXECUTIVE VANCE: Welcome to our corporate syndicate. My weather manipulation plan is absolute.")
  mod.content.text:register("TEXT_SILPH_VANCE", "EXECUTIVE VANCE: You persist? Silph Co. is under my lockdown!")
  mod.content.text:register("TEXT_SEAFOAM_ARIANA", "ADMIN ARIANA: The titan of ice... Articuno belongs to the Syndicate now!")
  mod.content.text:register("TEXT_POWERPLANT_ARCHER", "ADMIN ARCHER: This magnetic dampening grid will ground Zapdos permanently!")
  mod.content.text:register("TEXT_VICTORYROAD_VANCE", "EXECUTIVE VANCE: The weather control array is active! Come to me, Moltres!")

  -- 3. Prologue: Pallet Town Placements[cite: 41]
  mod.content.maps:patch("PALLET_TOWN", {
    objects = {
      __append = {
        { index = 95, x = 12, y = 10, sprite = "SPRITE_OAK", movement = "STAY", range = "DOWN", text = "TEXT_RETIRED_OAK", name = "RETIRED_PROF_OAK" }
      }
    }
  })

  mod.content.maps:patch("OAKS_LAB", {
    objects = {
      __append = {
        { index = 96, x = 5, y = 3, sprite = "SPRITE_SCIENTIST_F", movement = "STAY", range = "DOWN", text = "TEXT_PROF_MAHOGANY", name = "PROF_MAHOGANY" }
      }
    }
  })

  -- 4. Chapter 1: Route 2 Guard[cite: 41]
  mod.content.maps:patch("VIRIDIAN_CITY", {
    objects = {
      __append = {
        { index = 97, x = 18, y = 2, sprite = "SPRITE_GUARD", movement = "STAY", range = "DOWN", text = "TEXT_ROUTE2_QUARANTINE_GUARD", name = "ROUTE2_QUARANTINE_GUARD" }
      }
    }
  })

  -- 5. Chapter 2: Mt. Moon & Cerulean Cape Admins[cite: 41]
  mod.content.maps:patch("MT_MOON_B2F", {
    objects = {
      __append = {
        { index = 98, x = 12, y = 10, sprite = "SPRITE_ROCKET", movement = "STAY", range = "DOWN", text = "TEXT_MT_MOON_PETREL", name = "ROCKET_ADMIN_PETREL" }
      }
    }
  })

  mod.content.maps:patch("ROUTE_25", {
    objects = {
      __append = {
        { index = 99, x = 45, y = 3, sprite = "SPRITE_ROCKET", movement = "STAY", range = "DOWN", text = "TEXT_ROUTE25_PROTON", name = "ROCKET_ADMIN_PROTON" }
      }
    }
  })

  -- 6. Chapter 3: Vermilion & Lavender Admins[cite: 41]
  mod.content.maps:patch("SS_ANNE_DECK", {
    objects = {
      __append = {
        { index = 100, x = 10, y = 8, sprite = "SPRITE_ROCKET_F", movement = "STAY", range = "DOWN", text = "TEXT_SS_ANNE_ARIANA", name = "ROCKET_ADMIN_ARIANA" }
      }
    }
  })

  mod.content.maps:patch("POKEMONTOWER_7F", {
    objects = {
      __append = {
        { index = 101, x = 10, y = 3, sprite = "SPRITE_ROCKET", movement = "STAY", range = "DOWN", text = "TEXT_POKEMONTOWER_ARCHER", name = "ROCKET_ADMIN_ARCHER" }
      }
    }
  })

  -- 7. Chapter 4: Executive Vance (Game Corner & Silph)[cite: 41]
  mod.content.maps:patch("ROCKET_HIDEOUT_B4F", {
    objects = {
      __append = {
        { index = 102, x = 20, y = 12, sprite = "SPRITE_GIOVANNI", movement = "STAY", range = "DOWN", text = "TEXT_GAMECORNER_VANCE", name = "EXECUTIVE_VANCE_HIDEOUT" }
      }
    }
  })

  mod.content.maps:patch("SILPH_CO_11F", {
    objects = {
      __append = {
        { index = 103, x = 6, y = 13, sprite = "SPRITE_GIOVANNI", movement = "STAY", range = "DOWN", text = "TEXT_SILPH_VANCE", name = "EXECUTIVE_VANCE_SILPH" }
      }
    }
  })

  -- 8. Chapters 5, 6, 8: Legendary Snag Events[cite: 41]
  mod.content.maps:patch("SEAFOAM_ISLANDS_B4F", {
    objects = {
      __append = {
        { index = 104, x = 10, y = 10, sprite = "SPRITE_ROCKET_F", movement = "STAY", range = "DOWN", text = "TEXT_SEAFOAM_ARIANA", name = "ROCKET_ADMIN_ARIANA_ICE" }
      }
    }
  })

  mod.content.maps:patch("POWER_PLANT", {
    objects = {
      __append = {
        { index = 105, x = 4, y = 9, sprite = "SPRITE_ROCKET", movement = "STAY", range = "DOWN", text = "TEXT_POWERPLANT_ARCHER", name = "ROCKET_ADMIN_ARCHER_ELEC" }
      }
    }
  })

  mod.content.maps:patch("VICTORY_ROAD_3F", {
    objects = {
      __append = {
        { index = 106, x = 10, y = 10, sprite = "SPRITE_GIOVANNI", movement = "STAY", range = "DOWN", text = "TEXT_VICTORYROAD_VANCE", name = "EXECUTIVE_VANCE_VOLCANO" }
      }
    }
  })
end
