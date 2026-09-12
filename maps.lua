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

  -- 1. Override Signs Across Kanto
  mod.content.text:override("_PalletTownSignText", "PALLET TOWN\nShades of your journey await!")
  mod.content.text:override("_OaksLabSignText", "PROF. MAHOGANY'S\nPOKéMON LAB")
  mod.content.text:override("_RedsHouseSignText", "RED & GRANDMA'S HOUSE")
  mod.content.text:override("_VermilionGymSignText", "VERMILION CITY POKéMON GYM\nLEADER: SGT. SPARKS")
  mod.content.text:override("_LavenderTownSignText", "LAVENDER TOWN\nThe Noble Purple Town\nHOME OF THE RADIO & MEMORIAL TOWER")

  -- 2. Chapter 1: Spawn Retired Professor Oak & Route 2 Guard
  mod.content.maps:patch("PALLET_TOWN", {
    objects = {
      __append = {
        {
          index = 95,
          x = 12,
          y = 10,
          sprite = "SPRITE_OAK",
          movement = "STAY",
          range = "DOWN",
          text = "TEXT_RETIRED_OAK",
          name = "RETIRED_PROF_OAK"
        }
      }
    }
  })

  mod.content.maps:patch("VIRIDIAN_CITY", {
    objects = {
      __append = {
        {
          index = 96,
          x = 18,
          y = 2,
          sprite = "SPRITE_GUARD",
          movement = "STAY",
          range = "DOWN",
          text = "TEXT_ROUTE2_QUARANTINE_GUARD",
          name = "ROUTE2_QUARANTINE_GUARD"
        }
      }
    }
  })

  -- 3. Chapter 2: Mt. Moon Petrel & Cerulean Cape Proton
  mod.content.maps:patch("MT_MOON_B2F", {
    objects = {
      __append = {
        {
          index = 97,
          x = 12,
          y = 10,
          sprite = "SPRITE_ROCKET",
          movement = "STAY",
          range = "DOWN",
          text = "TEXT_MT_MOON_PETREL",
          name = "ROCKET_ADMIN_PETREL"
        }
      }
    }
  })

  -- 4. Chapter 3: Vermilion Docks Ariana & Lavender Tower Archer
  mod.content.maps:patch("SS_ANNE_DECK", {
    objects = {
      __append = {
        {
          index = 98,
          x = 10,
          y = 8,
          sprite = "SPRITE_ROCKET",
          movement = "STAY",
          range = "DOWN",
          text = "TEXT_SS_ANNE_ARIANA",
          name = "ROCKET_ADMIN_ARIANA"
        }
      }
    }
  })

  mod.content.maps:patch("POKEMONTOWER_7F", {
    objects = {
      __append = {
        {
          index = 99,
          x = 10,
          y = 3,
          sprite = "SPRITE_ROCKET",
          movement = "STAY",
          range = "DOWN",
          text = "TEXT_POKEMONTOWER_ARCHER",
          name = "ROCKET_ADMIN_ARCHER"
        }
      }
    }
  })
end
