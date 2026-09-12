-- ============================================================================
-- Kanto Revitalised - Wild Encounter Overhaul (encounters.lua)
-- Gen1Recomp Mod API v2
-- Distributes all 151 rebalanced species across Kanto routes & caves
-- ============================================================================

return function(mod)
  if not mod or not mod.content or not mod.content.encounters then
    error('gen1recomp modding API not initialized!')
  end

  -- Encounters for ROUTE_1
  mod.content.encounters:patch("ROUTE_1", {
    grass = {
      rate = 25,
      slots = {
          { species = "PIDGEY", level = 3 },
          { species = "RATTATA", level = 3 },
          { species = "BULBASAUR", level = 4 },
          { species = "CATERPIE", level = 3 },
          { species = "WEEDLE", level = 3 },
          { species = "PIDGEY", level = 4 },
          { species = "RATTATA", level = 4 },
          { species = "ODDISH", level = 4 },
          { species = "BELLSPROUT", level = 4 },
          { species = "BULBASAUR", level = 5 },
        }
    }
  })

  -- Encounters for VIRIDIAN_FOREST
  mod.content.encounters:patch("VIRIDIAN_FOREST", {
    grass = {
      rate = 25,
      slots = {
          { species = "CATERPIE", level = 4 },
          { species = "WEEDLE", level = 4 },
          { species = "METAPOD", level = 5 },
          { species = "KAKUNA", level = 5 },
          { species = "PIKACHU", level = 5 },
          { species = "BUTTERFREE", level = 7 },
          { species = "BEEDRILL", level = 7 },
          { species = "ODDISH", level = 6 },
          { species = "BELLSPROUT", level = 6 },
          { species = "PIKACHU", level = 8 },
        }
    }
  })

  -- Encounters for ROUTE_2
  mod.content.encounters:patch("ROUTE_2", {
    grass = {
      rate = 20,
      slots = {
          { species = "PIDGEY", level = 4 },
          { species = "RATTATA", level = 4 },
          { species = "CATERPIE", level = 5 },
          { species = "WEEDLE", level = 5 },
          { species = "NIDORAN_F", level = 6 },
          { species = "NIDORAN_M", level = 6 },
          { species = "PIKACHU", level = 6 },
          { species = "PIDGEOTTO", level = 8 },
          { species = "RATICATE", level = 8 },
          { species = "ABRA", level = 8 },
        }
    }
  })

  -- Encounters for ROUTE_3
  mod.content.encounters:patch("ROUTE_3", {
    grass = {
      rate = 20,
      slots = {
          { species = "SPEAROW", level = 8 },
          { species = "PIDGEOTTO", level = 9 },
          { species = "NIDORAN_F", level = 8 },
          { species = "NIDORAN_M", level = 8 },
          { species = "JIGGLYPUFF", level = 9 },
          { species = "MANKEY", level = 9 },
          { species = "EKANS", level = 10 },
          { species = "SANDSHREW", level = 10 },
          { species = "CHARMANDER", level = 8 },
          { species = "SQUIRTLE", level = 8 },
        }
    }
  })

  -- Encounters for MT_MOON_1F
  mod.content.encounters:patch("MT_MOON_1F", {
    grass = {
      rate = 15,
      slots = {
          { species = "ZUBAT", level = 8 },
          { species = "GEODUDE", level = 9 },
          { species = "PARAS", level = 10 },
          { species = "CLEFAIRY", level = 10 },
          { species = "ZUBAT", level = 11 },
          { species = "GEODUDE", level = 11 },
          { species = "ONIX", level = 12 },
          { species = "PARAS", level = 12 },
          { species = "CLEFAIRY", level = 12 },
          { species = "ABRA", level = 10 },
        }
    }
  })

  -- Encounters for ROUTE_4
  mod.content.encounters:patch("ROUTE_4", {
    grass = {
      rate = 20,
      slots = {
          { species = "RATTATA", level = 10 },
          { species = "SPEAROW", level = 10 },
          { species = "EKANS", level = 11 },
          { species = "SANDSHREW", level = 11 },
          { species = "MANKEY", level = 12 },
          { species = "PSYDUCK", level = 12 },
          { species = "MEOWTH", level = 12 },
          { species = "VULPIX", level = 12 },
          { species = "GROWLITHE", level = 12 },
          { species = "ABRA", level = 12 },
        }
    }
  })

  -- Encounters for ROUTE_24
  mod.content.encounters:patch("ROUTE_24", {
    grass = {
      rate = 20,
      slots = {
          { species = "CATERPIE", level = 12 },
          { species = "WEEDLE", level = 12 },
          { species = "METAPOD", level = 13 },
          { species = "KAKUNA", level = 13 },
          { species = "PIDGEY", level = 13 },
          { species = "BELLSPROUT", level = 14 },
          { species = "ODDISH", level = 14 },
          { species = "ABRA", level = 14 },
          { species = "VENONAT", level = 15 },
          { species = "SQUIRTLE", level = 12 },
        }
    },
    water = {
      rate = 10,
      slots = {
          { species = "GOLDEEN", level = 15 },
          { species = "POLIWAG", level = 15 },
          { species = "PSYDUCK", level = 16 },
          { species = "SLOWPOKE", level = 16 },
          { species = "KRABBY", level = 18 },
          { species = "SEAKING", level = 20 },
          { species = "POLIWHIRL", level = 20 },
          { species = "GOLDUCK", level = 22 },
          { species = "SLOWBRO", level = 22 },
          { species = "GYARADOS", level = 25 },
        }
    }
  })

  -- Encounters for ROUTE_25
  mod.content.encounters:patch("ROUTE_25", {
    grass = {
      rate = 15,
      slots = {
          { species = "PIDGEOTTO", level = 14 },
          { species = "ODDISH", level = 14 },
          { species = "BELLSPROUT", level = 14 },
          { species = "VENONAT", level = 15 },
          { species = "MEOWTH", level = 15 },
          { species = "PSYDUCK", level = 15 },
          { species = "ABRA", level = 15 },
          { species = "CHARMANDER", level = 12 },
          { species = "BUTTERFREE", level = 16 },
          { species = "BEEDRILL", level = 16 },
        }
    }
  })

  -- Encounters for DIGLETTS_CAVE
  mod.content.encounters:patch("DIGLETTS_CAVE", {
    grass = {
      rate = 20,
      slots = {
          { species = "DIGLETT", level = 18 },
          { species = "DIGLETT", level = 19 },
          { species = "DIGLETT", level = 20 },
          { species = "DIGLETT", level = 21 },
          { species = "DIGLETT", level = 22 },
          { species = "DUGTRIO", level = 29 },
          { species = "DUGTRIO", level = 30 },
          { species = "DUGTRIO", level = 31 },
          { species = "DUGTRIO", level = 32 },
          { species = "DUGTRIO", level = 35 },
        }
    }
  })

  -- Encounters for ROUTE_6
  mod.content.encounters:patch("ROUTE_6", {
    grass = {
      rate = 15,
      slots = {
          { species = "PIDGEY", level = 14 },
          { species = "RATTATA", level = 14 },
          { species = "MEOWTH", level = 15 },
          { species = "PSYDUCK", level = 15 },
          { species = "SLOWPOKE", level = 15 },
          { species = "DROWZEE", level = 16 },
          { species = "MAGNEMITE", level = 16 },
          { species = "JIGGLYPUFF", level = 16 },
          { species = "MANKEY", level = 16 },
          { species = "FARFETCHD", level = 18 },
        }
    }
  })

  -- Encounters for ROUTE_11
  mod.content.encounters:patch("ROUTE_11", {
    grass = {
      rate = 15,
      slots = {
          { species = "SPEAROW", level = 15 },
          { species = "DROWZEE", level = 16 },
          { species = "MAGNEMITE", level = 16 },
          { species = "VOLTORB", level = 16 },
          { species = "EKANS", level = 17 },
          { species = "SANDSHREW", level = 17 },
          { species = "FEAROW", level = 18 },
          { species = "HYPNO", level = 20 },
          { species = "MAGNETON", level = 20 },
          { species = "ELECTRODE", level = 20 },
        }
    }
  })

  -- Encounters for ROCK_TUNNEL_1F
  mod.content.encounters:patch("ROCK_TUNNEL_1F", {
    grass = {
      rate = 15,
      slots = {
          { species = "ZUBAT", level = 16 },
          { species = "GEODUDE", level = 17 },
          { species = "MACHOP", level = 17 },
          { species = "ONIX", level = 18 },
          { species = "GRAVELER", level = 19 },
          { species = "CUBONE", level = 19 },
          { species = "RHYHORN", level = 20 },
          { species = "GOLBAT", level = 21 },
          { species = "MACHOKE", level = 22 },
          { species = "CHARMANDER", level = 15 },
        }
    }
  })

  -- Encounters for POKEMON_TOWER_3F
  mod.content.encounters:patch("POKEMON_TOWER_3F", {
    grass = {
      rate = 10,
      slots = {
          { species = "GASTLY", level = 20 },
          { species = "GASTLY", level = 21 },
          { species = "GASTLY", level = 22 },
          { species = "CUBONE", level = 20 },
          { species = "HAUNTER", level = 23 },
          { species = "PARASECT", level = 24 },
          { species = "ARBOK", level = 24 },
          { species = "NINETALES", level = 25 },
          { species = "MAROWAK", level = 26 },
          { species = "GENGAR", level = 28 },
        }
    }
  })

  -- Encounters for ROUTE_12
  mod.content.encounters:patch("ROUTE_12", {
    grass = {
      rate = 15,
      slots = {
          { species = "ODDISH", level = 22 },
          { species = "BELLSPROUT", level = 22 },
          { species = "PIDGEY", level = 23 },
          { species = "PIDGEOTTO", level = 24 },
          { species = "VENONAT", level = 24 },
          { species = "FARFETCHD", level = 25 },
          { species = "VILEPLUME", level = 28 },
          { species = "VICTREEBEL", level = 28 },
          { species = "TANGELA", level = 26 },
          { species = "SNORLAX", level = 30 },
        }
    },
    water = {
      rate = 10,
      slots = {
          { species = "TENTACOOL", level = 20 },
          { species = "HORSEA", level = 22 },
          { species = "STARYU", level = 22 },
          { species = "SEADRA", level = 28 },
          { species = "STARMIE", level = 28 },
          { species = "TENTACRUEL", level = 30 },
          { species = "GYARADOS", level = 30 },
          { species = "LAPRAS", level = 32 },
          { species = "BLASTOISE", level = 36 },
          { species = "DRATINI", level = 25 },
        }
    }
  })

  -- Encounters for SAFARI_ZONE_CENTER
  mod.content.encounters:patch("SAFARI_ZONE_CENTER", {
    grass = {
      rate = 20,
      slots = {
          { species = "NIDORINA", level = 24 },
          { species = "NIDORINO", level = 24 },
          { species = "EXEGGCUTE", level = 25 },
          { species = "PARASECT", level = 26 },
          { species = "RHYHORN", level = 26 },
          { species = "CHANSEY", level = 28 },
          { species = "KANGASKHAN", level = 28 },
          { species = "TAUROS", level = 28 },
          { species = "SCYTHER", level = 29 },
          { species = "PINSIR", level = 29 },
        }
    },
    water = {
      rate = 15,
      slots = {
          { species = "DRATINI", level = 20 },
          { species = "DRATINI", level = 22 },
          { species = "PSYDUCK", level = 22 },
          { species = "SLOWPOKE", level = 22 },
          { species = "DRAGONAIR", level = 30 },
          { species = "GYARADOS", level = 30 },
          { species = "GOLDUCK", level = 32 },
          { species = "SLOWBRO", level = 32 },
          { species = "DRAGONAIR", level = 35 },
          { species = "DRAGONITE", level = 45 },
        }
    }
  })

  -- Encounters for POWER_PLANT
  mod.content.encounters:patch("POWER_PLANT", {
    grass = {
      rate = 10,
      slots = {
          { species = "VOLTORB", level = 30 },
          { species = "MAGNEMITE", level = 30 },
          { species = "PIKACHU", level = 32 },
          { species = "ELECTRODE", level = 35 },
          { species = "MAGNETON", level = 35 },
          { species = "RAICHU", level = 38 },
          { species = "ELECTABUZZ", level = 38 },
          { species = "PORYGON", level = 36 },
          { species = "ELECTRODE", level = 40 },
          { species = "ZAPDOS", level = 50 },
        }
    }
  })

  -- Encounters for POKEMON_MANSION_1F
  mod.content.encounters:patch("POKEMON_MANSION_1F", {
    grass = {
      rate = 10,
      slots = {
          { species = "KOFFING", level = 32 },
          { species = "GROWLITHE", level = 32 },
          { species = "VULPIX", level = 32 },
          { species = "PONYTA", level = 34 },
          { species = "WEEZING", level = 36 },
          { species = "ARCANINE", level = 38 },
          { species = "NINETALES", level = 38 },
          { species = "RAPIDASH", level = 38 },
          { species = "MAGMAR", level = 40 },
          { species = "MOLTRES", level = 50 },
        }
    }
  })

  -- Encounters for SEAFOAM_ISLANDS_1F
  mod.content.encounters:patch("SEAFOAM_ISLANDS_1F", {
    grass = {
      rate = 10,
      slots = {
          { species = "SEEL", level = 30 },
          { species = "SHELLDER", level = 30 },
          { species = "KRABBY", level = 30 },
          { species = "STARYU", level = 30 },
          { species = "DEWGONG", level = 36 },
          { species = "CLOYSTER", level = 36 },
          { species = "KINGLER", level = 36 },
          { species = "STARMIE", level = 36 },
          { species = "JYNX", level = 38 },
          { species = "ARTICUNO", level = 50 },
        }
    }
  })

  -- Encounters for VICTORY_ROAD_1F
  mod.content.encounters:patch("VICTORY_ROAD_1F", {
    grass = {
      rate = 15,
      slots = {
          { species = "MACHOKE", level = 40 },
          { species = "GRAVELER", level = 40 },
          { species = "ONIX", level = 42 },
          { species = "RHYDON", level = 44 },
          { species = "MACHAMP", level = 46 },
          { species = "GOLEM", level = 46 },
          { species = "VENUSAUR", level = 50 },
          { species = "CHARIZARD", level = 50 },
          { species = "BLASTOISE", level = 50 },
          { species = "DRAGONITE", level = 52 },
        }
    }
  })

  -- Encounters for CERULEAN_CAVE_1F
  mod.content.encounters:patch("CERULEAN_CAVE_1F", {
    grass = {
      rate = 10,
      slots = {
          { species = "GOLBAT", level = 50 },
          { species = "HYPNO", level = 50 },
          { species = "MAGNETON", level = 52 },
          { species = "ELECTRODE", level = 52 },
          { species = "RHYDON", level = 54 },
          { species = "ALAKAZAM", level = 55 },
          { species = "GENGAR", level = 55 },
          { species = "SNORLAX", level = 56 },
          { species = "DRAGONITE", level = 58 },
          { species = "MEWTWO", level = 70 },
        }
    }
  })

  mod.log:info('Successfully loaded Kanto Revitalised wild encounter distribution!')
end
