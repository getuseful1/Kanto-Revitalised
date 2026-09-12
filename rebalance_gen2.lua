-- ============================================================================
-- Kanto & Johto Revitalised - Gen 2 Species Module (#152 - #251)
-- ============================================================================

return function(mod)
  if not mod or not mod.content or not mod.content.pokemon then
    error('gen1recomp modding API not initialized!')
  end

  mod.log:info("Kanto Revitalised: Registering Gen 2 Roster (#152 - #251)...")

  -- Cross-Gen Evolution Connections for Gen 1 Species
  mod.content.pokemon:patch("GOLBAT", { evolutions = { { type = "FRIENDSHIP", target = "CROBAT" } } })
  mod.content.pokemon:patch("CHANSEY", { evolutions = { { type = "FRIENDSHIP", target = "BLISSEY" } } })
  mod.content.pokemon:patch("ONIX", { evolutions = { { type = "ITEM", item = "METAL_COAT", target = "STEELIX" } } })
  mod.content.pokemon:patch("SCYTHER", { evolutions = { { type = "ITEM", item = "METAL_COAT", target = "SCIZOR" } } })
  mod.content.pokemon:patch("SEADRA", { evolutions = { { type = "ITEM", item = "DRAGON_SCALE", target = "KINGDRA" } } })
  mod.content.pokemon:patch("SLOWPOKE", { evolutions = { { type = "LEVEL", level = 37, target = "SLOWBRO" }, { type = "ITEM", item = "KING_ROCK", target = "SLOWKING" } } })
  mod.content.pokemon:patch("POLIWHIRL", { evolutions = { { type = "ITEM", item = "WATER_STONE", target = "POLIWRATH" }, { type = "ITEM", item = "KING_ROCK", target = "POLITOED" } } })
  mod.content.pokemon:patch("GLOOM", { evolutions = { { type = "ITEM", item = "LEAF_STONE", target = "VILEPLUME" }, { type = "ITEM", item = "SUN_STONE", target = "BELLOSSOM" } } })
  mod.content.pokemon:patch("PORYGON", { evolutions = { { type = "ITEM", item = "UP_GRADE", target = "PORYGON2" } } })

  -- #152 Chikorita (GRASS)
  mod.content.pokemon:register("CHIKORITA", {
    name = "Chikorita",
    types = { "GRASS" },
    baseStats = {
      hp = 45,
      attack = 49,
      defense = 65,
      speed = 45,
      special = 49, -- Unified Special
      spAtk = 49,
      spDef = 65
    },
    evolutions = {
      { type = "LEVEL", level = 16, target = "BAYLEEF" },
    },
    learnset = {
      { level = 1, move = "TACKLE" },
      { level = 1, move = "GROWL" },
      { level = 6, move = "RAZOR_LEAF" },
      { level = 12, move = "POISON_POWDER" },
      { level = 18, move = "SYNTHESIS" },
    },
    dex = 152,
    dexEntry = {
      kind = "LEAF",
      heightFt = 2,
      heightIn = 11,
      weight = 14,
      text = "A sweet aroma gently wafts from the leaf on its head."
    }
  })

  -- #153 Bayleef (GRASS / FAIRY)
  mod.content.pokemon:register("BAYLEEF", {
    name = "Bayleef",
    types = { "GRASS", "FAIRY" },
    baseStats = {
      hp = 60,
      attack = 62,
      defense = 80,
      speed = 60,
      special = 63, -- Unified Special
      spAtk = 63,
      spDef = 80
    },
    evolutions = {
      { type = "LEVEL", level = 32, target = "MEGANIUM" },
    },
    learnset = {
      { level = 1, move = "TACKLE" },
      { level = 1, move = "RAZOR_LEAF" },
      { level = 12, move = "POISON_POWDER" },
      { level = 18, move = "SYNTHESIS" },
      { level = 24, move = "BODY_SLAM" },
      { level = 30, move = "DISARMING_VOICE" },
    },
    dex = 153,
    dexEntry = {
      kind = "LEAF",
      heightFt = 3,
      heightIn = 11,
      weight = 35,
      text = "The spicy scent that emanates from its neck leaves inspires energy."
    }
  })

  -- #154 Meganium (GRASS / FAIRY)
  mod.content.pokemon:register("MEGANIUM", {
    name = "Meganium",
    types = { "GRASS", "FAIRY" },
    baseStats = {
      hp = 80,
      attack = 82,
      defense = 100,
      speed = 80,
      special = 105, -- Unified Special
      spAtk = 105,
      spDef = 100
    },
    learnset = {
      { level = 1, move = "TACKLE" },
      { level = 1, move = "RAZOR_LEAF" },
      { level = 18, move = "SYNTHESIS" },
      { level = 24, move = "BODY_SLAM" },
      { level = 34, move = "MOONBLAST" },
      { level = 42, move = "AROMATHERAPY" },
      { level = 54, move = "SOLAR_BEAM" },
    },
    dex = 154,
    dexEntry = {
      kind = "HERB",
      heightFt = 5,
      heightIn = 11,
      weight = 222,
      text = "Its breath has the power to revive dead grass and plants."
    }
  })

  -- #155 Cyndaquil (FIRE)
  mod.content.pokemon:register("CYNDAQUIL", {
    name = "Cyndaquil",
    types = { "FIRE" },
    baseStats = {
      hp = 39,
      attack = 52,
      defense = 43,
      speed = 65,
      special = 60, -- Unified Special
      spAtk = 60,
      spDef = 50
    },
    evolutions = {
      { type = "LEVEL", level = 14, target = "QUILAVA" },
    },
    learnset = {
      { level = 1, move = "TACKLE" },
      { level = 1, move = "LEER" },
      { level = 6, move = "EMBER" },
      { level = 10, move = "SMOKESCREEN" },
      { level = 19, move = "FLAME_WHEEL" },
    },
    dex = 155,
    dexEntry = {
      kind = "FIRE MOUSE",
      heightFt = 1,
      heightIn = 8,
      weight = 17,
      text = "It is timid, and always curls itself up in a ball."
    }
  })

  -- #156 Quilava (FIRE / GROUND)
  mod.content.pokemon:register("QUILAVA", {
    name = "Quilava",
    types = { "FIRE", "GROUND" },
    baseStats = {
      hp = 58,
      attack = 64,
      defense = 58,
      speed = 80,
      special = 80, -- Unified Special
      spAtk = 80,
      spDef = 65
    },
    evolutions = {
      { type = "LEVEL", level = 36, target = "TYPHLOSION" },
    },
    learnset = {
      { level = 1, move = "TACKLE" },
      { level = 1, move = "EMBER" },
      { level = 10, move = "SMOKESCREEN" },
      { level = 19, move = "FLAME_WHEEL" },
      { level = 24, move = "SWIFT" },
      { level = 32, move = "BULLDOZE" },
    },
    dex = 156,
    dexEntry = {
      kind = "VOLCANO",
      heightFt = 2,
      heightIn = 11,
      weight = 42,
      text = "Be careful if it turns its back during battle. It shoots flames."
    }
  })

  -- #157 Typhlosion (FIRE / GROUND)
  mod.content.pokemon:register("TYPHLOSION", {
    name = "Typhlosion",
    types = { "FIRE", "GROUND" },
    baseStats = {
      hp = 78,
      attack = 84,
      defense = 78,
      speed = 100,
      special = 109, -- Unified Special
      spAtk = 109,
      spDef = 85
    },
    learnset = {
      { level = 1, move = "EMBER" },
      { level = 19, move = "FLAME_WHEEL" },
      { level = 32, move = "BULLDOZE" },
      { level = 40, move = "ERUPTION" },
      { level = 48, move = "EARTH_POWER" },
      { level = 58, move = "FLARE_BLITZ" },
    },
    dex = 157,
    dexEntry = {
      kind = "VOLCANO",
      heightFt = 5,
      heightIn = 7,
      weight = 175,
      text = "It has a secret devastating move that rubs its blazing fur together."
    }
  })

  -- #158 Totodile (WATER)
  mod.content.pokemon:register("TOTODILE", {
    name = "Totodile",
    types = { "WATER" },
    baseStats = {
      hp = 50,
      attack = 65,
      defense = 64,
      speed = 43,
      special = 44, -- Unified Special
      spAtk = 44,
      spDef = 48
    },
    evolutions = {
      { type = "LEVEL", level = 18, target = "CROCONAW" },
    },
    learnset = {
      { level = 1, move = "SCRATCH" },
      { level = 1, move = "LEER" },
      { level = 6, move = "WATER_GUN" },
      { level = 13, move = "BITE" },
      { level = 20, move = "CRUNCH" },
    },
    dex = 158,
    dexEntry = {
      kind = "BIG JAW",
      heightFt = 2,
      heightIn = 0,
      weight = 21,
      text = "Its well-developed jaws are powerful and capable of crushing."
    }
  })

  -- #159 Croconaw (WATER / FIGHTING)
  mod.content.pokemon:register("CROCONAW", {
    name = "Croconaw",
    types = { "WATER", "FIGHTING" },
    baseStats = {
      hp = 65,
      attack = 80,
      defense = 80,
      speed = 58,
      special = 59, -- Unified Special
      spAtk = 59,
      spDef = 63
    },
    evolutions = {
      { type = "LEVEL", level = 30, target = "FERALIGATR" },
    },
    learnset = {
      { level = 1, move = "SCRATCH" },
      { level = 1, move = "WATER_GUN" },
      { level = 13, move = "BITE" },
      { level = 20, move = "CRUNCH" },
      { level = 26, move = "BRICK_BREAK" },
      { level = 32, move = "AQUA_TAIL" },
    },
    dex = 159,
    dexEntry = {
      kind = "BIG JAW",
      heightFt = 3,
      heightIn = 7,
      weight = 55,
      text = "Once it bites down, it won't let go until it loses its fangs."
    }
  })

  -- #160 Feraligatr (WATER / FIGHTING)
  mod.content.pokemon:register("FERALIGATR", {
    name = "Feraligatr",
    types = { "WATER", "FIGHTING" },
    baseStats = {
      hp = 85,
      attack = 110,
      defense = 100,
      speed = 78,
      special = 79, -- Unified Special
      spAtk = 79,
      spDef = 83
    },
    learnset = {
      { level = 1, move = "SCRATCH" },
      { level = 20, move = "CRUNCH" },
      { level = 26, move = "BRICK_BREAK" },
      { level = 32, move = "AQUA_TAIL" },
      { level = 38, move = "CLOSE_COMBAT" },
      { level = 48, move = "DRAGON_DANCE" },
      { level = 58, move = "SUPERPOWER" },
    },
    dex = 160,
    dexEntry = {
      kind = "BIG JAW",
      heightFt = 7,
      heightIn = 7,
      weight = 196,
      text = "It opens its huge mouth wide when attacking. Unmatched power."
    }
  })

  -- #161 Sentret (NORMAL)
  mod.content.pokemon:register("SENTRET", {
    name = "Sentret",
    types = { "NORMAL" },
    baseStats = {
      hp = 35,
      attack = 46,
      defense = 34,
      speed = 20,
      special = 35, -- Unified Special
      spAtk = 35,
      spDef = 45
    },
    evolutions = {
      { type = "LEVEL", level = 15, target = "FURRET" },
    },
    learnset = {
      { level = 1, move = "SCRATCH" },
      { level = 1, move = "DEFENSE_CURL" },
      { level = 7, move = "QUICK_ATTACK" },
      { level = 13, move = "SLAM" },
    },
    dex = 161,
    dexEntry = {
      kind = "SCOUT",
      heightFt = 2,
      heightIn = 7,
      weight = 13,
      text = "A very cautious Pokémon. It stands on its tail to look around."
    }
  })

  -- #162 Furret (NORMAL / GROUND)
  mod.content.pokemon:register("FURRET", {
    name = "Furret",
    types = { "NORMAL", "GROUND" },
    baseStats = {
      hp = 85,
      attack = 96,
      defense = 64,
      speed = 90,
      special = 45, -- Unified Special
      spAtk = 45,
      spDef = 55
    },
    learnset = {
      { level = 1, move = "SCRATCH" },
      { level = 7, move = "QUICK_ATTACK" },
      { level = 13, move = "SLAM" },
      { level = 18, move = "BULLDOZE" },
      { level = 28, move = "SUCKER_PUNCH" },
      { level = 36, move = "U_TURN" },
    },
    dex = 162,
    dexEntry = {
      kind = "LONG BODY",
      heightFt = 5,
      heightIn = 11,
      weight = 72,
      text = "It makes a nest to suit its long and skinny body."
    }
  })

  -- #163 Hoothoot (NORMAL / FLYING)
  mod.content.pokemon:register("HOOTHOOT", {
    name = "Hoothoot",
    types = { "NORMAL", "FLYING" },
    baseStats = {
      hp = 60,
      attack = 30,
      defense = 30,
      speed = 50,
      special = 36, -- Unified Special
      spAtk = 36,
      spDef = 56
    },
    evolutions = {
      { type = "LEVEL", level = 20, target = "NOCTOWL" },
    },
    learnset = {
      { level = 1, move = "PECK" },
      { level = 1, move = "HYPNOSIS" },
      { level = 9, move = "CONFUSION" },
      { level = 15, move = "AIR_SLASH" },
    },
    dex = 163,
    dexEntry = {
      kind = "OWL",
      heightFt = 2,
      heightIn = 4,
      weight = 47,
      text = "It has a perfect sense of time. It tilts its head regularly."
    }
  })

  -- #164 Noctowl (GHOST / FLYING)
  mod.content.pokemon:register("NOCTOWL", {
    name = "Noctowl",
    types = { "GHOST", "FLYING" },
    baseStats = {
      hp = 100,
      attack = 50,
      defense = 50,
      speed = 70,
      special = 86, -- Unified Special
      spAtk = 86,
      spDef = 96
    },
    learnset = {
      { level = 1, move = "PECK" },
      { level = 1, move = "HYPNOSIS" },
      { level = 15, move = "AIR_SLASH" },
      { level = 22, move = "SHADOW_BALL" },
      { level = 32, move = "ROOST" },
      { level = 42, move = "HYPER_VOICE" },
      { level = 52, move = "HURRICANE" },
    },
    dex = 164,
    dexEntry = {
      kind = "OWL",
      heightFt = 5,
      heightIn = 3,
      weight = 90,
      text = "Its eyes are specially adapted. They can see in pitch dark."
    }
  })

  -- #165 Ledyba (BUG / FLYING)
  mod.content.pokemon:register("LEDYBA", {
    name = "Ledyba",
    types = { "BUG", "FLYING" },
    baseStats = {
      hp = 40,
      attack = 20,
      defense = 30,
      speed = 55,
      special = 40, -- Unified Special
      spAtk = 40,
      spDef = 80
    },
    evolutions = {
      { type = "LEVEL", level = 18, target = "LEDIAN" },
    },
    learnset = {
      { level = 1, move = "TACKLE" },
      { level = 8, move = "LIGHT_SCREEN" },
      { level = 15, move = "MACH_PUNCH" },
    },
    dex = 165,
    dexEntry = {
      kind = "FIVE STAR",
      heightFt = 3,
      heightIn = 3,
      weight = 24,
      text = "It is timid and moves in swarms. It secretes an aromatic fluid."
    }
  })

  -- #166 Ledian (BUG / FIGHTING)
  mod.content.pokemon:register("LEDIAN", {
    name = "Ledian",
    types = { "BUG", "FIGHTING" },
    baseStats = {
      hp = 55,
      attack = 95,
      defense = 50,
      speed = 85,
      special = 55, -- Unified Special
      spAtk = 55,
      spDef = 110
    },
    learnset = {
      { level = 1, move = "TACKLE" },
      { level = 15, move = "MACH_PUNCH" },
      { level = 20, move = "ICE_PUNCH" },
      { level = 20, move = "THUNDER_PUNCH" },
      { level = 28, move = "DRAIN_PUNCH" },
      { level = 36, move = "BUG_BUZZ" },
      { level = 48, move = "CLOSE_COMBAT" },
    },
    dex = 166,
    dexEntry = {
      kind = "FIVE STAR",
      heightFt = 4,
      heightIn = 7,
      weight = 78,
      text = "When the stars shine in the night sky, it flutters about."
    }
  })

  -- #167 Spinarak (BUG / POISON)
  mod.content.pokemon:register("SPINARAK", {
    name = "Spinarak",
    types = { "BUG", "POISON" },
    baseStats = {
      hp = 40,
      attack = 60,
      defense = 40,
      speed = 30,
      special = 40, -- Unified Special
      spAtk = 40,
      spDef = 40
    },
    evolutions = {
      { type = "LEVEL", level = 22, target = "ARIADOS" },
    },
    learnset = {
      { level = 1, move = "POISON_STING" },
      { level = 1, move = "STRING_SHOT" },
      { level = 8, move = "LEECH_LIFE" },
      { level = 15, move = "NIGHT_SLASH" },
    },
    dex = 167,
    dexEntry = {
      kind = "STRING SPIDER",
      heightFt = 1,
      heightIn = 8,
      weight = 18,
      text = "It lies still on its web waiting for prey to get caught."
    }
  })

  -- #168 Ariados (BUG / POISON)
  mod.content.pokemon:register("ARIADOS", {
    name = "Ariados",
    types = { "BUG", "POISON" },
    baseStats = {
      hp = 70,
      attack = 110,
      defense = 70,
      speed = 40,
      special = 60, -- Unified Special
      spAtk = 60,
      spDef = 70
    },
    learnset = {
      { level = 1, move = "POISON_STING" },
      { level = 8, move = "LEECH_LIFE" },
      { level = 15, move = "NIGHT_SLASH" },
      { level = 24, move = "POISON_JAB" },
      { level = 32, move = "X_SCISSOR" },
      { level = 40, move = "TOXIC_SPIKES" },
      { level = 48, move = "SUCKER_PUNCH" },
    },
    dex = 168,
    dexEntry = {
      kind = "LONG LEG",
      heightFt = 3,
      heightIn = 7,
      weight = 74,
      text = "It spins thread not only from its rear but also from its mouth."
    }
  })

  -- #169 Crobat (POISON / FLYING)
  mod.content.pokemon:register("CROBAT", {
    name = "Crobat",
    types = { "POISON", "FLYING" },
    baseStats = {
      hp = 85,
      attack = 90,
      defense = 80,
      speed = 130,
      special = 70, -- Unified Special
      spAtk = 70,
      spDef = 80
    },
    learnset = {
      { level = 1, move = "SCREECH" },
      { level = 1, move = "LEECH_LIFE" },
      { level = 22, move = "POISON_FANG" },
      { level = 28, move = "AIR_SLASH" },
      { level = 36, move = "CROSS_POISON" },
      { level = 44, move = "U_TURN" },
      { level = 56, move = "BRAVE_BIRD" },
    },
    dex = 169,
    dexEntry = {
      kind = "BAT",
      heightFt = 5,
      heightIn = 11,
      weight = 165,
      text = "It flies so silently through the dark that it is never noticed."
    }
  })

  -- #170 Chinchou (WATER / ELECTRIC)
  mod.content.pokemon:register("CHINCHOU", {
    name = "Chinchou",
    types = { "WATER", "ELECTRIC" },
    baseStats = {
      hp = 75,
      attack = 38,
      defense = 38,
      speed = 67,
      special = 56, -- Unified Special
      spAtk = 56,
      spDef = 56
    },
    evolutions = {
      { type = "LEVEL", level = 27, target = "LANTURN" },
    },
    learnset = {
      { level = 1, move = "BUBBLE" },
      { level = 1, move = "THUNDERSHOCK" },
      { level = 12, move = "CONFUSE_RAY" },
      { level = 17, move = "SPARK" },
    },
    dex = 170,
    dexEntry = {
      kind = "ANGLER",
      heightFt = 1,
      heightIn = 8,
      weight = 26,
      text = "It shoots positive and negative electricity from its antennae."
    }
  })

  -- #171 Lanturn (WATER / ELECTRIC)
  mod.content.pokemon:register("LANTURN", {
    name = "Lanturn",
    types = { "WATER", "ELECTRIC" },
    baseStats = {
      hp = 125,
      attack = 58,
      defense = 58,
      speed = 67,
      special = 76, -- Unified Special
      spAtk = 76,
      spDef = 76
    },
    learnset = {
      { level = 1, move = "BUBBLE" },
      { level = 1, move = "THUNDERSHOCK" },
      { level = 12, move = "CONFUSE_RAY" },
      { level = 17, move = "SPARK" },
      { level = 28, move = "SCALD" },
      { level = 36, move = "DISCHARGE" },
      { level = 44, move = "ICE_BEAM" },
      { level = 54, move = "HYDRO_PUMP" },
    },
    dex = 171,
    dexEntry = {
      kind = "LIGHT",
      heightFt = 3,
      heightIn = 11,
      weight = 50,
      text = "The light it emits is so bright that it can illuminate the sea."
    }
  })

  -- #172 Pichu (ELECTRIC)
  mod.content.pokemon:register("PICHU", {
    name = "Pichu",
    types = { "ELECTRIC" },
    baseStats = {
      hp = 20,
      attack = 40,
      defense = 15,
      speed = 60,
      special = 35, -- Unified Special
      spAtk = 35,
      spDef = 35
    },
    evolutions = {
      { type = "FRIENDSHIP", target = "PIKACHU" },
    },
    learnset = {
      { level = 1, move = "THUNDERSHOCK" },
      { level = 1, move = "CHARM" },
      { level = 12, move = "NASTY_PLOT" },
    },
    dex = 172,
    dexEntry = {
      kind = "TINY MOUSE",
      heightFt = 1,
      heightIn = 0,
      weight = 4,
      text = "It is not yet skilled at storing electricity. It startles easily."
    }
  })

  -- #173 Cleffa (FAIRY)
  mod.content.pokemon:register("CLEFFA", {
    name = "Cleffa",
    types = { "FAIRY" },
    baseStats = {
      hp = 50,
      attack = 25,
      defense = 28,
      speed = 15,
      special = 45, -- Unified Special
      spAtk = 45,
      spDef = 55
    },
    evolutions = {
      { type = "FRIENDSHIP", target = "CLEFAIRY" },
    },
    learnset = {
      { level = 1, move = "POUND" },
      { level = 1, move = "CHARM" },
      { level = 7, move = "SING" },
    },
    dex = 173,
    dexEntry = {
      kind = "STAR SHAPE",
      heightFt = 1,
      heightIn = 0,
      weight = 7,
      text = "Because of its unusual star shape, people believe it came from a meteor."
    }
  })

  -- #174 Igglybuff (NORMAL / FAIRY)
  mod.content.pokemon:register("IGGLYBUFF", {
    name = "Igglybuff",
    types = { "NORMAL", "FAIRY" },
    baseStats = {
      hp = 90,
      attack = 30,
      defense = 15,
      speed = 15,
      special = 40, -- Unified Special
      spAtk = 40,
      spDef = 20
    },
    evolutions = {
      { type = "FRIENDSHIP", target = "JIGGLYPUFF" },
    },
    learnset = {
      { level = 1, move = "SING" },
      { level = 1, move = "CHARM" },
      { level = 5, move = "DEFENSE_CURL" },
    },
    dex = 174,
    dexEntry = {
      kind = "BALLOON",
      heightFt = 1,
      heightIn = 0,
      weight = 2,
      text = "It has a soft and bouncy body. It bounces continuously."
    }
  })

  -- #175 Togepi (FAIRY)
  mod.content.pokemon:register("TOGEPI", {
    name = "Togepi",
    types = { "FAIRY" },
    baseStats = {
      hp = 35,
      attack = 20,
      defense = 65,
      speed = 20,
      special = 40, -- Unified Special
      spAtk = 40,
      spDef = 65
    },
    evolutions = {
      { type = "FRIENDSHIP", target = "TOGETIC" },
    },
    learnset = {
      { level = 1, move = "GROWL" },
      { level = 1, move = "CHARM" },
      { level = 6, move = "METRONOME" },
      { level = 14, move = "ANCIENT_POWER" },
    },
    dex = 175,
    dexEntry = {
      kind = "SPIKE BALL",
      heightFt = 1,
      heightIn = 8,
      weight = 3,
      text = "A proverb claims that happiness will come to anyone who can make it stand."
    }
  })

  -- #176 Togetic (FAIRY / FLYING)
  mod.content.pokemon:register("TOGETIC", {
    name = "Togetic",
    types = { "FAIRY", "FLYING" },
    baseStats = {
      hp = 55,
      attack = 40,
      defense = 85,
      speed = 40,
      special = 80, -- Unified Special
      spAtk = 80,
      spDef = 105
    },
    learnset = {
      { level = 1, move = "GROWL" },
      { level = 1, move = "CHARM" },
      { level = 6, move = "METRONOME" },
      { level = 14, move = "ANCIENT_POWER" },
      { level = 22, move = "AIR_SLASH" },
      { level = 30, move = "DAZZLING_GLEAM" },
      { level = 40, move = "ROOST" },
      { level = 50, move = "MOONBLAST" },
    },
    dex = 176,
    dexEntry = {
      kind = "HAPPINESS",
      heightFt = 2,
      heightIn = 0,
      weight = 7,
      text = "It is said to appear in front of kindhearted people."
    }
  })

  -- #177 Natu (PSYCHIC / FLYING)
  mod.content.pokemon:register("NATU", {
    name = "Natu",
    types = { "PSYCHIC", "FLYING" },
    baseStats = {
      hp = 40,
      attack = 50,
      defense = 45,
      speed = 70,
      special = 70, -- Unified Special
      spAtk = 70,
      spDef = 45
    },
    evolutions = {
      { type = "LEVEL", level = 25, target = "XATU" },
    },
    learnset = {
      { level = 1, move = "PECK" },
      { level = 1, move = "LEER" },
      { level = 10, move = "NIGHT_SHADE" },
      { level = 15, move = "TELEPORT" },
    },
    dex = 177,
    dexEntry = {
      kind = "TINY BIRD",
      heightFt = 0,
      heightIn = 8,
      weight = 4,
      text = "It usually forages for food on the ground, but will hop up trees."
    }
  })

  -- #178 Xatu (PSYCHIC / FLYING)
  mod.content.pokemon:register("XATU", {
    name = "Xatu",
    types = { "PSYCHIC", "FLYING" },
    baseStats = {
      hp = 65,
      attack = 75,
      defense = 70,
      speed = 95,
      special = 95, -- Unified Special
      spAtk = 95,
      spDef = 70
    },
    learnset = {
      { level = 1, move = "PECK" },
      { level = 10, move = "NIGHT_SHADE" },
      { level = 15, move = "TELEPORT" },
      { level = 26, move = "AIR_SLASH" },
      { level = 35, move = "PSYCHIC" },
      { level = 44, move = "ROOST" },
      { level = 52, move = "CALM_MIND" },
    },
    dex = 178,
    dexEntry = {
      kind = "MYSTIC",
      heightFt = 4,
      heightIn = 11,
      weight = 33,
      text = "In South America, it is said that its right eye sees the future."
    }
  })

  -- #179 Mareep (ELECTRIC)
  mod.content.pokemon:register("MAREEP", {
    name = "Mareep",
    types = { "ELECTRIC" },
    baseStats = {
      hp = 55,
      attack = 40,
      defense = 40,
      speed = 35,
      special = 65, -- Unified Special
      spAtk = 65,
      spDef = 45
    },
    evolutions = {
      { type = "LEVEL", level = 15, target = "FLAAFFY" },
    },
    learnset = {
      { level = 1, move = "TACKLE" },
      { level = 1, move = "GROWL" },
      { level = 9, move = "THUNDERSHOCK" },
      { level = 16, move = "THUNDER_WAVE" },
    },
    dex = 179,
    dexEntry = {
      kind = "WOOL",
      heightFt = 2,
      heightIn = 0,
      weight = 17,
      text = "Its fleece grows continually. In summer, the fleece is shed."
    }
  })

  -- #180 Flaaffy (ELECTRIC)
  mod.content.pokemon:register("FLAAFFY", {
    name = "Flaaffy",
    types = { "ELECTRIC" },
    baseStats = {
      hp = 70,
      attack = 55,
      defense = 55,
      speed = 45,
      special = 80, -- Unified Special
      spAtk = 80,
      spDef = 60
    },
    evolutions = {
      { type = "LEVEL", level = 30, target = "AMPHAROS" },
    },
    learnset = {
      { level = 1, move = "TACKLE" },
      { level = 9, move = "THUNDERSHOCK" },
      { level = 16, move = "THUNDER_WAVE" },
      { level = 22, move = "POWER_GEM" },
      { level = 29, move = "DISCHARGE" },
    },
    dex = 180,
    dexEntry = {
      kind = "WOOL",
      heightFt = 2,
      heightIn = 7,
      weight = 29,
      text = "As a result of storing too much electricity, its skin turned rubbery."
    }
  })

  -- #181 Ampharos (ELECTRIC / DRAGON)
  mod.content.pokemon:register("AMPHAROS", {
    name = "Ampharos",
    types = { "ELECTRIC", "DRAGON" },
    baseStats = {
      hp = 90,
      attack = 75,
      defense = 85,
      speed = 55,
      special = 115, -- Unified Special
      spAtk = 115,
      spDef = 90
    },
    learnset = {
      { level = 1, move = "THUNDERSHOCK" },
      { level = 22, move = "POWER_GEM" },
      { level = 29, move = "DISCHARGE" },
      { level = 36, move = "DRAGON_PULSE" },
      { level = 45, move = "THUNDERBOLT" },
      { level = 55, move = "COTTON_GUARD" },
    },
    dex = 181,
    dexEntry = {
      kind = "LIGHT",
      heightFt = 4,
      heightIn = 7,
      weight = 136,
      text = "The light from its tail can be seen from far away at sea."
    }
  })

  -- #182 Bellossom (GRASS / FAIRY)
  mod.content.pokemon:register("BELLOSSOM", {
    name = "Bellossom",
    types = { "GRASS", "FAIRY" },
    baseStats = {
      hp = 75,
      attack = 80,
      defense = 95,
      speed = 50,
      special = 90, -- Unified Special
      spAtk = 90,
      spDef = 100
    },
    learnset = {
      { level = 1, move = "ABSORB" },
      { level = 1, move = "STUN_SPORE" },
      { level = 15, move = "SUNNY_DAY" },
      { level = 23, move = "MAGICAL_LEAF" },
      { level = 31, move = "DAZZLING_GLEAM" },
      { level = 39, move = "PETAL_DANCE" },
      { level = 48, move = "QUIVER_DANCE" },
    },
    dex = 182,
    dexEntry = {
      kind = "FLOWER",
      heightFt = 1,
      heightIn = 4,
      weight = 13,
      text = "PlENTIFUL in the tropics. When it dances, its petals rub together."
    }
  })

  -- #183 Marill (WATER / FAIRY)
  mod.content.pokemon:register("MARILL", {
    name = "Marill",
    types = { "WATER", "FAIRY" },
    baseStats = {
      hp = 70,
      attack = 50,
      defense = 50,
      speed = 40,
      special = 20, -- Unified Special
      spAtk = 20,
      spDef = 50
    },
    evolutions = {
      { type = "LEVEL", level = 18, target = "AZUMARILL" },
    },
    learnset = {
      { level = 1, move = "TACKLE" },
      { level = 1, move = "WATER_GUN" },
      { level = 10, move = "ROLLOUT" },
      { level = 15, move = "AQUA_JET" },
    },
    dex = 183,
    dexEntry = {
      kind = "AQUA MOUSE",
      heightFt = 1,
      heightIn = 4,
      weight = 19,
      text = "The tip of its tail is filled with oil that is lighter than water."
    }
  })

  -- #184 Azumarill (WATER / FAIRY)
  mod.content.pokemon:register("AZUMARILL", {
    name = "Azumarill",
    types = { "WATER", "FAIRY" },
    baseStats = {
      hp = 100,
      attack = 90,
      defense = 80,
      speed = 50,
      special = 60, -- Unified Special
      spAtk = 60,
      spDef = 80
    },
    learnset = {
      { level = 1, move = "TACKLE" },
      { level = 10, move = "ROLLOUT" },
      { level = 15, move = "AQUA_JET" },
      { level = 22, move = "PLAY_ROUGH" },
      { level = 32, move = "SUPERPOWER" },
      { level = 42, move = "LIQUIDATION" },
      { level = 52, move = "BELLY_DRUM" },
    },
    dex = 184,
    dexEntry = {
      kind = "AQUA RABBIT",
      heightFt = 2,
      heightIn = 7,
      weight = 63,
      text = "By keeping still and listening carefully, it can tell what is in rivers."
    }
  })

  -- #185 Sudowoodo (ROCK / GRASS)
  mod.content.pokemon:register("SUDOWOODO", {
    name = "Sudowoodo",
    types = { "ROCK", "GRASS" },
    baseStats = {
      hp = 70,
      attack = 100,
      defense = 115,
      speed = 30,
      special = 30, -- Unified Special
      spAtk = 30,
      spDef = 65
    },
    learnset = {
      { level = 1, move = "ROCK_THROW" },
      { level = 1, move = "LOW_KICK" },
      { level = 22, move = "WOOD_HAMMER" },
      { level = 30, move = "ROCK_SLIDE" },
      { level = 38, move = "SUCKER_PUNCH" },
      { level = 48, move = "HEAD_SMASH" },
    },
    dex = 185,
    dexEntry = {
      kind = "IMITATION",
      heightFt = 3,
      heightIn = 11,
      weight = 84,
      text = "Although it looks like a tree, its composition is closer to rock."
    }
  })

  -- #186 Politoed (WATER / GROUND)
  mod.content.pokemon:register("POLITOED", {
    name = "Politoed",
    types = { "WATER", "GROUND" },
    baseStats = {
      hp = 90,
      attack = 75,
      defense = 75,
      speed = 70,
      special = 90, -- Unified Special
      spAtk = 90,
      spDef = 100
    },
    learnset = {
      { level = 1, move = "WATER_GUN" },
      { level = 1, move = "HYPNOSIS" },
      { level = 18, move = "MUD_SHOT" },
      { level = 27, move = "HYPER_VOICE" },
      { level = 36, move = "EARTH_POWER" },
      { level = 46, move = "SCALD" },
      { level = 56, move = "HYDRO_PUMP" },
    },
    dex = 186,
    dexEntry = {
      kind = "FROG",
      heightFt = 3,
      heightIn = 7,
      weight = 75,
      text = "Whenever three or more gather, they sing in a loud voice."
    }
  })

  -- #187 Hoppip (GRASS / FLYING)
  mod.content.pokemon:register("HOPPIP", {
    name = "Hoppip",
    types = { "GRASS", "FLYING" },
    baseStats = {
      hp = 35,
      attack = 35,
      defense = 40,
      speed = 50,
      special = 35, -- Unified Special
      spAtk = 35,
      spDef = 55
    },
    evolutions = {
      { type = "LEVEL", level = 18, target = "SKIPLOOM" },
    },
    learnset = {
      { level = 1, move = "SPLASH" },
      { level = 1, move = "SYNTHESIS" },
      { level = 4, move = "TAIL_WHIP" },
      { level = 8, move = "TACKLE" },
      { level = 12, move = "LEECH_SEED" },
    },
    dex = 187,
    dexEntry = {
      kind = "COTTONWEED",
      heightFt = 1,
      heightIn = 4,
      weight = 1,
      text = "To keep from being blown away by the wind, they gather in clusters."
    }
  })

  -- #188 Skiploom (GRASS / FLYING)
  mod.content.pokemon:register("SKIPLOOM", {
    name = "Skiploom",
    types = { "GRASS", "FLYING" },
    baseStats = {
      hp = 55,
      attack = 45,
      defense = 50,
      speed = 80,
      special = 45, -- Unified Special
      spAtk = 45,
      spDef = 65
    },
    evolutions = {
      { type = "LEVEL", level = 27, target = "JUMPLUFF" },
    },
    learnset = {
      { level = 1, move = "SYNTHESIS" },
      { level = 12, move = "LEECH_SEED" },
      { level = 20, move = "MEGA_DRAIN" },
      { level = 25, move = "ACROBATICS" },
    },
    dex = 188,
    dexEntry = {
      kind = "COTTONWEED",
      heightFt = 2,
      heightIn = 0,
      weight = 2,
      text = "It blooms when the temperature rises above 60 degrees F."
    }
  })

  -- #189 Jumpluff (GRASS / FLYING)
  mod.content.pokemon:register("JUMPLUFF", {
    name = "Jumpluff",
    types = { "GRASS", "FLYING" },
    baseStats = {
      hp = 75,
      attack = 55,
      defense = 70,
      speed = 110,
      special = 55, -- Unified Special
      spAtk = 55,
      spDef = 95
    },
    learnset = {
      { level = 1, move = "SYNTHESIS" },
      { level = 12, move = "LEECH_SEED" },
      { level = 25, move = "ACROBATICS" },
      { level = 32, move = "SLEEP_POWDER" },
      { level = 40, move = "GIGA_DRAIN" },
      { level = 50, move = "STRENGTH_SAP" },
    },
    dex = 189,
    dexEntry = {
      kind = "COTTONWEED",
      heightFt = 2,
      heightIn = 11,
      weight = 7,
      text = "Once it catches the wind, it can deftly control its cotton spores."
    }
  })

  -- #190 Aipom (NORMAL)
  mod.content.pokemon:register("AIPOM", {
    name = "Aipom",
    types = { "NORMAL" },
    baseStats = {
      hp = 55,
      attack = 70,
      defense = 55,
      speed = 85,
      special = 40, -- Unified Special
      spAtk = 40,
      spDef = 55
    },
    learnset = {
      { level = 1, move = "SCRATCH" },
      { level = 1, move = "TAIL_WHIP" },
      { level = 6, move = "SAND_ATTACK" },
      { level = 18, move = "BATON_PASS" },
      { level = 25, move = "U_TURN" },
      { level = 32, move = "DOUBLE_HIT" },
    },
    dex = 190,
    dexEntry = {
      kind = "LONG TAIL",
      heightFt = 2,
      heightIn = 7,
      weight = 26,
      text = "Its tail is so powerful that it can use it to grab tree branches."
    }
  })

  -- #191 Sunkern (GRASS)
  mod.content.pokemon:register("SUNKERN", {
    name = "Sunkern",
    types = { "GRASS" },
    baseStats = {
      hp = 30,
      attack = 30,
      defense = 30,
      speed = 30,
      special = 30, -- Unified Special
      spAtk = 30,
      spDef = 30
    },
    evolutions = {
      { type = "ITEM", item = "SUN_STONE", target = "SUNFLORA" },
    },
    learnset = {
      { level = 1, move = "ABSORB" },
      { level = 1, move = "GROWTH" },
      { level = 10, move = "MEGA_DRAIN" },
      { level = 16, move = "SUNNY_DAY" },
    },
    dex = 191,
    dexEntry = {
      kind = "SEED",
      heightFt = 1,
      heightIn = 0,
      weight = 4,
      text = "It suddenly falls out of the sky in the morning. It drinks dew."
    }
  })

  -- #192 Sunflora (GRASS / FIRE)
  mod.content.pokemon:register("SUNFLORA", {
    name = "Sunflora",
    types = { "GRASS", "FIRE" },
    baseStats = {
      hp = 75,
      attack = 75,
      defense = 55,
      speed = 30,
      special = 125, -- Unified Special
      spAtk = 125,
      spDef = 85
    },
    learnset = {
      { level = 1, move = "ABSORB" },
      { level = 1, move = "GROWTH" },
      { level = 16, move = "SUNNY_DAY" },
      { level = 28, move = "GIGA_DRAIN" },
      { level = 38, move = "FLAMETHROWER" },
      { level = 48, move = "SOLAR_BEAM" },
    },
    dex = 192,
    dexEntry = {
      kind = "SUNFLOWER",
      heightFt = 2,
      heightIn = 7,
      weight = 19,
      text = "It converts sunlight into energy. In the darkness, it closes petals."
    }
  })

  -- #193 Yanma (BUG / FLYING)
  mod.content.pokemon:register("YANMA", {
    name = "Yanma",
    types = { "BUG", "FLYING" },
    baseStats = {
      hp = 65,
      attack = 65,
      defense = 45,
      speed = 95,
      special = 75, -- Unified Special
      spAtk = 75,
      spDef = 45
    },
    learnset = {
      { level = 1, move = "TACKLE" },
      { level = 6, move = "QUICK_ATTACK" },
      { level = 22, move = "AIR_SLASH" },
      { level = 32, move = "BUG_BUZZ" },
      { level = 40, move = "U_TURN" },
    },
    dex = 193,
    dexEntry = {
      kind = "CLEAR WING",
      heightFt = 3,
      heightIn = 11,
      weight = 84,
      text = "It can see 360 degrees without moving its eyes."
    }
  })

  -- #194 Wooper (WATER / GROUND)
  mod.content.pokemon:register("WOOPER", {
    name = "Wooper",
    types = { "WATER", "GROUND" },
    baseStats = {
      hp = 55,
      attack = 45,
      defense = 45,
      speed = 15,
      special = 25, -- Unified Special
      spAtk = 25,
      spDef = 25
    },
    evolutions = {
      { type = "LEVEL", level = 20, target = "QUAGSIRE" },
    },
    learnset = {
      { level = 1, move = "WATER_GUN" },
      { level = 1, move = "TAIL_WHIP" },
      { level = 11, move = "MUD_SHOT" },
      { level = 19, move = "AMNESIA" },
    },
    dex = 194,
    dexEntry = {
      kind = "WATER FISH",
      heightFt = 1,
      heightIn = 8,
      weight = 19,
      text = "This Pokémon lives in cold water. It leaves the water when cool."
    }
  })

  -- #195 Quagsire (WATER / GROUND)
  mod.content.pokemon:register("QUAGSIRE", {
    name = "Quagsire",
    types = { "WATER", "GROUND" },
    baseStats = {
      hp = 95,
      attack = 85,
      defense = 85,
      speed = 35,
      special = 65, -- Unified Special
      spAtk = 65,
      spDef = 65
    },
    learnset = {
      { level = 1, move = "WATER_GUN" },
      { level = 11, move = "MUD_SHOT" },
      { level = 19, move = "AMNESIA" },
      { level = 32, move = "EARTHQUAKE" },
      { level = 40, move = "RECOVER" },
      { level = 48, move = "SCALD" },
    },
    dex = 195,
    dexEntry = {
      kind = "WATER FISH",
      heightFt = 4,
      heightIn = 7,
      weight = 165,
      text = "A carefree Pokémon. It bumps its head on boats while swimming."
    }
  })

  -- #196 Espeon (PSYCHIC)
  mod.content.pokemon:register("ESPEON", {
    name = "Espeon",
    types = { "PSYCHIC" },
    baseStats = {
      hp = 65,
      attack = 65,
      defense = 60,
      speed = 110,
      special = 130, -- Unified Special
      spAtk = 130,
      spDef = 95
    },
    learnset = {
      { level = 1, move = "TACKLE" },
      { level = 1, move = "CONFUSION" },
      { level = 15, move = "QUICK_ATTACK" },
      { level = 22, move = "PSYBEAM" },
      { level = 29, move = "CALM_MIND" },
      { level = 36, move = "PSYCHIC" },
      { level = 45, move = "MORNING_SUN" },
    },
    dex = 196,
    dexEntry = {
      kind = "SUN",
      heightFt = 2,
      heightIn = 11,
      weight = 58,
      text = "By reading air currents, it can predict things such as the weather."
    }
  })

  -- #197 Umbreon (DARK / GHOST)
  mod.content.pokemon:register("UMBREON", {
    name = "Umbreon",
    types = { "DARK", "GHOST" },
    baseStats = {
      hp = 95,
      attack = 65,
      defense = 110,
      speed = 65,
      special = 60, -- Unified Special
      spAtk = 60,
      spDef = 130
    },
    learnset = {
      { level = 1, move = "TACKLE" },
      { level = 1, move = "PURSUIT" },
      { level = 15, move = "CONFUSE_RAY" },
      { level = 22, move = "FEINT_ATTACK" },
      { level = 29, move = "FOUL_PLAY" },
      { level = 36, move = "MOONLIGHT" },
      { level = 45, move = "WISH" },
    },
    dex = 197,
    dexEntry = {
      kind = "MOONLIGHT",
      heightFt = 3,
      heightIn = 3,
      weight = 64,
      text = "When exposed to the moon's aura, the rings on its body glow."
    }
  })

  -- #198 Murkrow (DARK / FLYING)
  mod.content.pokemon:register("MURKROW", {
    name = "Murkrow",
    types = { "DARK", "FLYING" },
    baseStats = {
      hp = 60,
      attack = 85,
      defense = 42,
      speed = 91,
      special = 85, -- Unified Special
      spAtk = 85,
      spDef = 42
    },
    learnset = {
      { level = 1, move = "PECK" },
      { level = 1, move = "ASTONISH" },
      { level = 11, move = "PURSUIT" },
      { level = 25, move = "AIR_SLASH" },
      { level = 35, move = "FOUL_PLAY" },
      { level = 45, move = "BRAVE_BIRD" },
    },
    dex = 198,
    dexEntry = {
      kind = "DARKNESS",
      heightFt = 1,
      heightIn = 8,
      weight = 5,
      text = "Feared and loathed as an omen of bad luck."
    }
  })

  -- #199 Slowking (WATER / PSYCHIC)
  mod.content.pokemon:register("SLOWKING", {
    name = "Slowking",
    types = { "WATER", "PSYCHIC" },
    baseStats = {
      hp = 95,
      attack = 75,
      defense = 80,
      speed = 30,
      special = 100, -- Unified Special
      spAtk = 100,
      spDef = 110
    },
    learnset = {
      { level = 1, move = "WATER_GUN" },
      { level = 1, move = "CONFUSION" },
      { level = 25, move = "NASTY_PLOT" },
      { level = 36, move = "PSYCHIC" },
      { level = 45, move = "SLACK_OFF" },
      { level = 55, move = "HYDRO_PUMP" },
    },
    dex = 199,
    dexEntry = {
      kind = "ROYAL",
      heightFt = 6,
      heightIn = 7,
      weight = 175,
      text = "Every time it yawns, Shellder injects poison into its brain."
    }
  })

  -- #200 Misdreavus (GHOST)
  mod.content.pokemon:register("MISDREAVUS", {
    name = "Misdreavus",
    types = { "GHOST" },
    baseStats = {
      hp = 60,
      attack = 60,
      defense = 60,
      speed = 85,
      special = 85, -- Unified Special
      spAtk = 85,
      spDef = 85
    },
    learnset = {
      { level = 1, move = "ASTONISH" },
      { level = 10, move = "CONFUSE_RAY" },
      { level = 19, move = "HEX" },
      { level = 28, move = "PAIN_SPLIT" },
      { level = 37, move = "SHADOW_BALL" },
      { level = 46, move = "NASTY_PLOT" },
    },
    dex = 200,
    dexEntry = {
      kind = "SCREECH",
      heightFt = 2,
      heightIn = 4,
      weight = 2,
      text = "A Pokémon that likes to frighten people with a eerie cry."
    }
  })

  -- #201 Unown (PSYCHIC)
  mod.content.pokemon:register("UNOWN", {
    name = "Unown",
    types = { "PSYCHIC" },
    baseStats = {
      hp = 48,
      attack = 72,
      defense = 48,
      speed = 48,
      special = 72, -- Unified Special
      spAtk = 72,
      spDef = 48
    },
    learnset = {
      { level = 1, move = "HIDDEN_POWER" },
    },
    dex = 201,
    dexEntry = {
      kind = "SYMBOL",
      heightFt = 1,
      heightIn = 8,
      weight = 11,
      text = "Shaped like ancient writing characters. What came first is a mystery."
    }
  })

  -- #202 Wobbuffet (PSYCHIC)
  mod.content.pokemon:register("WOBBUFFET", {
    name = "Wobbuffet",
    types = { "PSYCHIC" },
    baseStats = {
      hp = 190,
      attack = 33,
      defense = 58,
      speed = 33,
      special = 33, -- Unified Special
      spAtk = 33,
      spDef = 58
    },
    learnset = {
      { level = 1, move = "COUNTER" },
      { level = 1, move = "MIRROR_COAT" },
      { level = 1, move = "SAFEGUARD" },
      { level = 1, move = "DESTINY_BOND" },
    },
    dex = 202,
    dexEntry = {
      kind = "PATIENT",
      heightFt = 4,
      heightIn = 3,
      weight = 62,
      text = "To hide its pitch-black tail, it lives quietly in the dark."
    }
  })

  -- #203 Girafarig (NORMAL / PSYCHIC)
  mod.content.pokemon:register("GIRAFARIG", {
    name = "Girafarig",
    types = { "NORMAL", "PSYCHIC" },
    baseStats = {
      hp = 70,
      attack = 80,
      defense = 65,
      speed = 85,
      special = 90, -- Unified Special
      spAtk = 90,
      spDef = 65
    },
    learnset = {
      { level = 1, move = "TACKLE" },
      { level = 1, move = "CONFUSION" },
      { level = 14, move = "AGILITY" },
      { level = 23, move = "STOMP" },
      { level = 32, move = "PSYCHIC" },
      { level = 41, move = "NASTY_PLOT" },
    },
    dex = 203,
    dexEntry = {
      kind = "LONG NECK",
      heightFt = 4,
      heightIn = 11,
      weight = 91,
      text = "Its tail has a small brain of its own. It bites if approached."
    }
  })

  -- #204 Pineco (BUG)
  mod.content.pokemon:register("PINECO", {
    name = "Pineco",
    types = { "BUG" },
    baseStats = {
      hp = 50,
      attack = 65,
      defense = 90,
      speed = 15,
      special = 35, -- Unified Special
      spAtk = 35,
      spDef = 35
    },
    evolutions = {
      { type = "LEVEL", level = 31, target = "FORRETRESS" },
    },
    learnset = {
      { level = 1, move = "TACKLE" },
      { level = 1, move = "PROTECT" },
      { level = 12, move = "SELF_DESTRUCT" },
      { level = 20, move = "BUG_BITE" },
    },
    dex = 204,
    dexEntry = {
      kind = "BAGWORM",
      heightFt = 2,
      heightIn = 0,
      weight = 16,
      text = "It hangs from tree branches and waits for prey."
    }
  })

  -- #205 Forretress (BUG / STEEL)
  mod.content.pokemon:register("FORRETRESS", {
    name = "Forretress",
    types = { "BUG", "STEEL" },
    baseStats = {
      hp = 75,
      attack = 90,
      defense = 140,
      speed = 40,
      special = 60, -- Unified Special
      spAtk = 60,
      spDef = 60
    },
    learnset = {
      { level = 1, move = "TACKLE" },
      { level = 20, move = "BUG_BITE" },
      { level = 28, move = "RAPID_SPIN" },
      { level = 36, move = "SPIKES" },
      { level = 44, move = "GYRO_BALL" },
      { level = 52, move = "VOLT_SWITCH" },
    },
    dex = 205,
    dexEntry = {
      kind = "BAGWORM",
      heightFt = 3,
      heightIn = 11,
      weight = 277,
      text = "Its entire body is shielded by a steel shell."
    }
  })

  -- #206 Dunsparce (NORMAL / GROUND)
  mod.content.pokemon:register("DUNSPARCE", {
    name = "Dunsparce",
    types = { "NORMAL", "GROUND" },
    baseStats = {
      hp = 100,
      attack = 70,
      defense = 70,
      speed = 45,
      special = 65, -- Unified Special
      spAtk = 65,
      spDef = 65
    },
    learnset = {
      { level = 1, move = "DEFENSE_CURL" },
      { level = 1, move = "ROLLOUT" },
      { level = 12, move = "GLARE" },
      { level = 22, move = "ROOST" },
      { level = 32, move = "BODY_SLAM" },
      { level = 42, move = "COIL" },
    },
    dex = 206,
    dexEntry = {
      kind = "LAND SNAKE",
      heightFt = 4,
      heightIn = 11,
      weight = 31,
      text = "When spotted, this Pokémon escapes by drilling backward."
    }
  })

  -- #207 Gligar (GROUND / FLYING)
  mod.content.pokemon:register("GLIGAR", {
    name = "Gligar",
    types = { "GROUND", "FLYING" },
    baseStats = {
      hp = 65,
      attack = 75,
      defense = 105,
      speed = 85,
      special = 35, -- Unified Special
      spAtk = 35,
      spDef = 65
    },
    learnset = {
      { level = 1, move = "POISON_STING" },
      { level = 1, move = "SAND_ATTACK" },
      { level = 10, move = "QUICK_ATTACK" },
      { level = 22, move = "U_TURN" },
      { level = 34, move = "EARTHQUAKE" },
      { level = 44, move = "ROOST" },
    },
    dex = 207,
    dexEntry = {
      kind = "FLY SCORPION",
      heightFt = 3,
      heightIn = 7,
      weight = 143,
      text = "It flies straight at its target's face then clamps down."
    }
  })

  -- #208 Steelix (STEEL / GROUND)
  mod.content.pokemon:register("STEELIX", {
    name = "Steelix",
    types = { "STEEL", "GROUND" },
    baseStats = {
      hp = 75,
      attack = 85,
      defense = 200,
      speed = 30,
      special = 55, -- Unified Special
      spAtk = 55,
      spDef = 65
    },
    learnset = {
      { level = 1, move = "TACKLE" },
      { level = 1, move = "ROCK_THROW" },
      { level = 16, move = "CURSE" },
      { level = 28, move = "GYRO_BALL" },
      { level = 40, move = "EARTHQUAKE" },
      { level = 52, move = "STEALTH_ROCK" },
    },
    dex = 208,
    dexEntry = {
      kind = "IRON SNAKE",
      heightFt = 30,
      heightIn = 2,
      weight = 882,
      text = "It is thought that its body transformed because of high pressure."
    }
  })

  -- #209 Snubbull (FAIRY)
  mod.content.pokemon:register("SNUBBULL", {
    name = "Snubbull",
    types = { "FAIRY" },
    baseStats = {
      hp = 60,
      attack = 80,
      defense = 50,
      speed = 30,
      special = 40, -- Unified Special
      spAtk = 40,
      spDef = 40
    },
    evolutions = {
      { type = "LEVEL", level = 23, target = "GRANBULL" },
    },
    learnset = {
      { level = 1, move = "TACKLE" },
      { level = 1, move = "BITE" },
      { level = 19, move = "PLAY_ROUGH" },
      { level = 26, move = "CRUNCH" },
    },
    dex = 209,
    dexEntry = {
      kind = "FAIRY",
      heightFt = 2,
      heightIn = 0,
      weight = 17,
      text = "Although it looks frightening, it is actually affectionate."
    }
  })

  -- #210 Granbull (FAIRY / FIGHTING)
  mod.content.pokemon:register("GRANBULL", {
    name = "Granbull",
    types = { "FAIRY", "FIGHTING" },
    baseStats = {
      hp = 90,
      attack = 120,
      defense = 75,
      speed = 45,
      special = 60, -- Unified Special
      spAtk = 60,
      spDef = 60
    },
    learnset = {
      { level = 1, move = "TACKLE" },
      { level = 19, move = "PLAY_ROUGH" },
      { level = 26, move = "CRUNCH" },
      { level = 36, move = "CLOSE_COMBAT" },
      { level = 46, move = "EARTHQUAKE" },
    },
    dex = 210,
    dexEntry = {
      kind = "FAIRY",
      heightFt = 4,
      heightIn = 7,
      weight = 107,
      text = "It is actually timid and easily spooked."
    }
  })

  -- #211 Qwilfish (WATER / POISON)
  mod.content.pokemon:register("QWILFISH", {
    name = "Qwilfish",
    types = { "WATER", "POISON" },
    baseStats = {
      hp = 65,
      attack = 95,
      defense = 85,
      speed = 85,
      special = 55, -- Unified Special
      spAtk = 55,
      spDef = 55
    },
    learnset = {
      { level = 1, move = "SPIKES" },
      { level = 1, move = "POISON_STING" },
      { level = 18, move = "TOXIC_SPIKES" },
      { level = 28, move = "POISON_JAB" },
      { level = 38, move = "AQUA_TAIL" },
    },
    dex = 211,
    dexEntry = {
      kind = "BALLOON",
      heightFt = 1,
      heightIn = 8,
      weight = 9,
      text = "To swallow water, it absorbs air to swell up."
    }
  })

  -- #212 Scizor (BUG / STEEL)
  mod.content.pokemon:register("SCIZOR", {
    name = "Scizor",
    types = { "BUG", "STEEL" },
    baseStats = {
      hp = 70,
      attack = 130,
      defense = 100,
      speed = 65,
      special = 55, -- Unified Special
      spAtk = 55,
      spDef = 80
    },
    learnset = {
      { level = 1, move = "BULLET_PUNCH" },
      { level = 1, move = "QUICK_ATTACK" },
      { level = 21, move = "SWORDS_DANCE" },
      { level = 33, move = "X_SCISSOR" },
      { level = 45, move = "U_TURN" },
      { level = 55, move = "ROOST" },
    },
    dex = 212,
    dexEntry = {
      kind = "PINCER",
      heightFt = 5,
      heightIn = 11,
      weight = 260,
      text = "It has a steel-hard body. It intimidates foes by raising claws."
    }
  })

  -- #213 Shuckle (BUG / ROCK)
  mod.content.pokemon:register("SHUCKLE", {
    name = "Shuckle",
    types = { "BUG", "ROCK" },
    baseStats = {
      hp = 20,
      attack = 10,
      defense = 230,
      speed = 5,
      special = 10, -- Unified Special
      spAtk = 10,
      spDef = 230
    },
    learnset = {
      { level = 1, move = "CONSTRICT" },
      { level = 1, move = "WITHDRAW" },
      { level = 15, move = "STICKY_WEB" },
      { level = 25, move = "TOXIC" },
      { level = 35, move = "REST" },
    },
    dex = 213,
    dexEntry = {
      kind = "MOLD",
      heightFt = 2,
      heightIn = 0,
      weight = 45,
      text = "It stores berries inside its shell. They ferment into juice."
    }
  })

  -- #214 Heracross (BUG / FIGHTING)
  mod.content.pokemon:register("HERACROSS", {
    name = "Heracross",
    types = { "BUG", "FIGHTING" },
    baseStats = {
      hp = 80,
      attack = 125,
      defense = 75,
      speed = 85,
      special = 40, -- Unified Special
      spAtk = 40,
      spDef = 95
    },
    learnset = {
      { level = 1, move = "TACKLE" },
      { level = 1, move = "LEER" },
      { level = 16, move = "BRICK_BREAK" },
      { level = 31, move = "MEGAHORN" },
      { level = 46, move = "CLOSE_COMBAT" },
      { level = 56, move = "SWORDS_DANCE" },
    },
    dex = 214,
    dexEntry = {
      kind = "SINGLE HORN",
      heightFt = 4,
      heightIn = 11,
      weight = 119,
      text = "With its powerful horn, it can throw an opponent."
    }
  })

  -- #215 Sneasel (DARK / ICE)
  mod.content.pokemon:register("SNEASEL", {
    name = "Sneasel",
    types = { "DARK", "ICE" },
    baseStats = {
      hp = 55,
      attack = 95,
      defense = 55,
      speed = 115,
      special = 35, -- Unified Special
      spAtk = 35,
      spDef = 75
    },
    learnset = {
      { level = 1, move = "SCRATCH" },
      { level = 1, move = "TAUNT" },
      { level = 14, move = "ICE_SHARD" },
      { level = 24, move = "FEINT_ATTACK" },
      { level = 36, move = "ICICLE_CRASH" },
      { level = 48, move = "LOW_SWEEP" },
    },
    dex = 215,
    dexEntry = {
      kind = "SHARP CLAW",
      heightFt = 2,
      heightIn = 11,
      weight = 62,
      text = "Vicious and cunning. It drives parents away to steal eggs."
    }
  })

  -- #216 Teddiursa (NORMAL)
  mod.content.pokemon:register("TEDDIURSA", {
    name = "Teddiursa",
    types = { "NORMAL" },
    baseStats = {
      hp = 60,
      attack = 80,
      defense = 50,
      speed = 40,
      special = 50, -- Unified Special
      spAtk = 50,
      spDef = 50
    },
    evolutions = {
      { type = "LEVEL", level = 30, target = "URSARING" },
    },
    learnset = {
      { level = 1, move = "SCRATCH" },
      { level = 1, move = "LICK" },
      { level = 13, move = "FEINT_ATTACK" },
      { level = 22, move = "SLASH" },
    },
    dex = 216,
    dexEntry = {
      kind = "LITTLE BEAR",
      heightFt = 2,
      heightIn = 0,
      weight = 19,
      text = "If it finds honey, its crescent mark glows."
    }
  })

  -- #217 Ursaring (NORMAL / GROUND)
  mod.content.pokemon:register("URSARING", {
    name = "Ursaring",
    types = { "NORMAL", "GROUND" },
    baseStats = {
      hp = 90,
      attack = 130,
      defense = 75,
      speed = 55,
      special = 75, -- Unified Special
      spAtk = 75,
      spDef = 75
    },
    learnset = {
      { level = 1, move = "SCRATCH" },
      { level = 13, move = "FEINT_ATTACK" },
      { level = 22, move = "SLASH" },
      { level = 36, move = "EARTHQUAKE" },
      { level = 48, move = "HAMMER_ARM" },
      { level = 58, move = "CLOSE_COMBAT" },
    },
    dex = 217,
    dexEntry = {
      kind = "HIBERNATOR",
      heightFt = 6,
      heightIn = 3,
      weight = 277,
      text = "Although it has a large body, it can climb trees easily."
    }
  })

  -- #218 Slugma (FIRE)
  mod.content.pokemon:register("SLUGMA", {
    name = "Slugma",
    types = { "FIRE" },
    baseStats = {
      hp = 40,
      attack = 40,
      defense = 40,
      speed = 20,
      special = 70, -- Unified Special
      spAtk = 70,
      spDef = 40
    },
    evolutions = {
      { type = "LEVEL", level = 38, target = "MAGCARGO" },
    },
    learnset = {
      { level = 1, move = "SMOG" },
      { level = 1, move = "EMBER" },
      { level = 15, move = "ROCK_THROW" },
      { level = 28, move = "LAVA_PLUME" },
    },
    dex = 218,
    dexEntry = {
      kind = "LAVA",
      heightFt = 2,
      heightIn = 4,
      weight = 77,
      text = "Its body is made of magma. If it cools, its skin hardens."
    }
  })

  -- #219 Magcargo (FIRE / ROCK)
  mod.content.pokemon:register("MAGCARGO", {
    name = "Magcargo",
    types = { "FIRE", "ROCK" },
    baseStats = {
      hp = 60,
      attack = 50,
      defense = 120,
      speed = 30,
      special = 90, -- Unified Special
      spAtk = 90,
      spDef = 80
    },
    learnset = {
      { level = 1, move = "EMBER" },
      { level = 15, move = "ROCK_THROW" },
      { level = 28, move = "LAVA_PLUME" },
      { level = 38, move = "SHELL_SMASH" },
      { level = 48, move = "EARTH_POWER" },
      { level = 58, move = "FIRE_BLAST" },
    },
    dex = 219,
    dexEntry = {
      kind = "LAVA",
      heightFt = 2,
      heightIn = 7,
      weight = 121,
      text = "Its body temperature is roughly 18,000 degrees F."
    }
  })

  -- #220 Swinub (ICE / GROUND)
  mod.content.pokemon:register("SWINUB", {
    name = "Swinub",
    types = { "ICE", "GROUND" },
    baseStats = {
      hp = 50,
      attack = 50,
      defense = 40,
      speed = 50,
      special = 30, -- Unified Special
      spAtk = 30,
      spDef = 30
    },
    evolutions = {
      { type = "LEVEL", level = 33, target = "PILOSWINE" },
    },
    learnset = {
      { level = 1, move = "TACKLE" },
      { level = 1, move = "MUD_SLAP" },
      { level = 11, move = "ICE_SHARD" },
      { level = 18, move = "BULLDOZE" },
    },
    dex = 220,
    dexEntry = {
      kind = "PIG",
      heightFt = 1,
      heightIn = 4,
      weight = 14,
      text = "It rubs its snout on the ground to find food."
    }
  })

  -- #221 Piloswine (ICE / GROUND)
  mod.content.pokemon:register("PILOSWINE", {
    name = "Piloswine",
    types = { "ICE", "GROUND" },
    baseStats = {
      hp = 100,
      attack = 100,
      defense = 80,
      speed = 50,
      special = 60, -- Unified Special
      spAtk = 60,
      spDef = 60
    },
    learnset = {
      { level = 1, move = "TACKLE" },
      { level = 11, move = "ICE_SHARD" },
      { level = 18, move = "BULLDOZE" },
      { level = 33, move = "ICICLE_CRASH" },
      { level = 44, move = "EARTHQUAKE" },
    },
    dex = 221,
    dexEntry = {
      kind = "SWINE",
      heightFt = 3,
      heightIn = 7,
      weight = 123,
      text = "If it charges at an opponent, its hair obstructs its view."
    }
  })

  -- #222 Corsola (ROCK / WATER)
  mod.content.pokemon:register("CORSOLA", {
    name = "Corsola",
    types = { "ROCK", "WATER" },
    baseStats = {
      hp = 65,
      attack = 55,
      defense = 95,
      speed = 35,
      special = 65, -- Unified Special
      spAtk = 65,
      spDef = 95
    },
    learnset = {
      { level = 1, move = "TACKLE" },
      { level = 1, move = "WATER_GUN" },
      { level = 20, move = "RECOVER" },
      { level = 30, move = "POWER_GEM" },
      { level = 40, move = "SCALD" },
    },
    dex = 222,
    dexEntry = {
      kind = "CORAL",
      heightFt = 2,
      heightIn = 0,
      weight = 11,
      text = "It continuously grows and regrows. The tip of its stalk falls off."
    }
  })

  -- #223 Remoraid (WATER)
  mod.content.pokemon:register("REMORAID", {
    name = "Remoraid",
    types = { "WATER" },
    baseStats = {
      hp = 35,
      attack = 65,
      defense = 35,
      speed = 65,
      special = 65, -- Unified Special
      spAtk = 65,
      spDef = 35
    },
    evolutions = {
      { type = "LEVEL", level = 25, target = "OCTILLERY" },
    },
    learnset = {
      { level = 1, move = "WATER_GUN" },
      { level = 10, move = "AURORA_BEAM" },
      { level = 18, move = "BUBBLEBEAM" },
    },
    dex = 223,
    dexEntry = {
      kind = "JET",
      heightFt = 2,
      heightIn = 0,
      weight = 26,
      text = "It squirts water from its mouth with tremendous accuracy."
    }
  })

  -- #224 Octillery (WATER / FIRE)
  mod.content.pokemon:register("OCTILLERY", {
    name = "Octillery",
    types = { "WATER", "FIRE" },
    baseStats = {
      hp = 75,
      attack = 105,
      defense = 75,
      speed = 45,
      special = 105, -- Unified Special
      spAtk = 105,
      spDef = 75
    },
    learnset = {
      { level = 1, move = "WATER_GUN" },
      { level = 25, move = "OCTAZOOKA" },
      { level = 34, move = "FLAMETHROWER" },
      { level = 44, move = "ENERGY_BALL" },
      { level = 54, move = "HYDRO_PUMP" },
    },
    dex = 224,
    dexEntry = {
      kind = "JET",
      heightFt = 2,
      heightIn = 11,
      weight = 63,
      text = "It instinctively sneaks into rocky holes."
    }
  })

  -- #225 Delibird (ICE / FLYING)
  mod.content.pokemon:register("DELIBIRD", {
    name = "Delibird",
    types = { "ICE", "FLYING" },
    baseStats = {
      hp = 45,
      attack = 55,
      defense = 45,
      speed = 75,
      special = 65, -- Unified Special
      spAtk = 65,
      spDef = 45
    },
    learnset = {
      { level = 1, move = "PRESENT" },
      { level = 18, move = "ICE_PUNCH" },
      { level = 28, move = "AIR_SLASH" },
      { level = 38, move = "DRILL_PECK" },
    },
    dex = 225,
    dexEntry = {
      kind = "DELIVERY",
      heightFt = 2,
      heightIn = 11,
      weight = 35,
      text = "It carries food all day long. There are stories about it."
    }
  })

  -- #226 Mantine (WATER / FLYING)
  mod.content.pokemon:register("MANTINE", {
    name = "Mantine",
    types = { "WATER", "FLYING" },
    baseStats = {
      hp = 85,
      attack = 40,
      defense = 70,
      speed = 70,
      special = 80, -- Unified Special
      spAtk = 80,
      spDef = 140
    },
    learnset = {
      { level = 1, move = "TACKLE" },
      { level = 1, move = "WATER_GUN" },
      { level = 22, move = "ROOST" },
      { level = 32, move = "AIR_SLASH" },
      { level = 44, move = "HYDRO_PUMP" },
    },
    dex = 226,
    dexEntry = {
      kind = "KITE",
      heightFt = 6,
      heightIn = 11,
      weight = 485,
      text = "As it majestic ally swims through the sea, Remoraid attach."
    }
  })

  -- #227 Skarmory (STEEL / FLYING)
  mod.content.pokemon:register("SKARMORY", {
    name = "Skarmory",
    types = { "STEEL", "FLYING" },
    baseStats = {
      hp = 65,
      attack = 80,
      defense = 140,
      speed = 70,
      special = 40, -- Unified Special
      spAtk = 40,
      spDef = 70
    },
    learnset = {
      { level = 1, move = "PECK" },
      { level = 1, move = "LEER" },
      { level = 16, move = "SPIKES" },
      { level = 28, move = "STEEL_WING" },
      { level = 38, move = "ROOST" },
      { level = 50, move = "BRAVE_BIRD" },
    },
    dex = 227,
    dexEntry = {
      kind = "ARMOR BIRD",
      heightFt = 5,
      heightIn = 7,
      weight = 112,
      text = "Its sturdy wings look heavy, but they are hollow and light."
    }
  })

  -- #228 Houndour (DARK / FIRE)
  mod.content.pokemon:register("HOUNDOUR", {
    name = "Houndour",
    types = { "DARK", "FIRE" },
    baseStats = {
      hp = 45,
      attack = 60,
      defense = 30,
      speed = 65,
      special = 80, -- Unified Special
      spAtk = 80,
      spDef = 50
    },
    evolutions = {
      { type = "LEVEL", level = 24, target = "HOUNDOOM" },
    },
    learnset = {
      { level = 1, move = "LEER" },
      { level = 1, move = "EMBER" },
      { level = 14, move = "FEINT_ATTACK" },
      { level = 20, move = "FIRE_FANG" },
    },
    dex = 228,
    dexEntry = {
      kind = "DARK",
      heightFt = 2,
      heightIn = 0,
      weight = 24,
      text = "It uses different cries to communicate with others of its kind."
    }
  })

  -- #229 Houndoom (DARK / FIRE)
  mod.content.pokemon:register("HOUNDOOM", {
    name = "Houndoom",
    types = { "DARK", "FIRE" },
    baseStats = {
      hp = 75,
      attack = 90,
      defense = 50,
      speed = 95,
      special = 110, -- Unified Special
      spAtk = 110,
      spDef = 80
    },
    learnset = {
      { level = 1, move = "LEER" },
      { level = 14, move = "FEINT_ATTACK" },
      { level = 20, move = "FIRE_FANG" },
      { level = 32, move = "NASTY_PLOT" },
      { level = 42, move = "DARK_PULSE" },
      { level = 52, move = "FLAMETHROWER" },
    },
    dex = 229,
    dexEntry = {
      kind = "DARK",
      heightFt = 4,
      heightIn = 7,
      weight = 77,
      text = "If you come across one, it will make you shudder."
    }
  })

  -- #230 Kingdra (WATER / DRAGON)
  mod.content.pokemon:register("KINGDRA", {
    name = "Kingdra",
    types = { "WATER", "DRAGON" },
    baseStats = {
      hp = 75,
      attack = 95,
      defense = 95,
      speed = 85,
      special = 95, -- Unified Special
      spAtk = 95,
      spDef = 95
    },
    learnset = {
      { level = 1, move = "WATER_GUN" },
      { level = 1, move = "DRAGON_BREATH" },
      { level = 20, move = "AGILITY" },
      { level = 35, move = "DRAGON_PULSE" },
      { level = 48, move = "HYDRO_PUMP" },
      { level = 58, move = "OUTRAGE" },
    },
    dex = 230,
    dexEntry = {
      kind = "DRAGON",
      heightFt = 5,
      heightIn = 11,
      weight = 335,
      text = "It lives in caves on the seafloor. It creates whirlpools."
    }
  })

  -- #231 Phanpy (GROUND)
  mod.content.pokemon:register("PHANPY", {
    name = "Phanpy",
    types = { "GROUND" },
    baseStats = {
      hp = 90,
      attack = 60,
      defense = 60,
      speed = 40,
      special = 40, -- Unified Special
      spAtk = 40,
      spDef = 40
    },
    evolutions = {
      { type = "LEVEL", level = 25, target = "DONPHAN" },
    },
    learnset = {
      { level = 1, move = "TACKLE" },
      { level = 1, move = "DEFENSE_CURL" },
      { level = 9, move = "ROLLOUT" },
      { level = 18, move = "BULLDOZE" },
    },
    dex = 231,
    dexEntry = {
      kind = "LONG NOSE",
      heightFt = 3,
      heightIn = 11,
      weight = 74,
      text = "As a sign of affection, it bumps with its snout."
    }
  })

  -- #232 Donphan (GROUND)
  mod.content.pokemon:register("DONPHAN", {
    name = "Donphan",
    types = { "GROUND" },
    baseStats = {
      hp = 90,
      attack = 120,
      defense = 120,
      speed = 50,
      special = 60, -- Unified Special
      spAtk = 60,
      spDef = 60
    },
    learnset = {
      { level = 1, move = "TACKLE" },
      { level = 9, move = "ROLLOUT" },
      { level = 18, move = "BULLDOZE" },
      { level = 25, move = "RAPID_SPIN" },
      { level = 36, move = "EARTHQUAKE" },
      { level = 48, move = "STONE_EDGE" },
    },
    dex = 232,
    dexEntry = {
      kind = "ARMOR",
      heightFt = 3,
      heightIn = 7,
      weight = 265,
      text = "The longer its tusks, the higher its rank in its herd."
    }
  })

  -- #233 Porygon2 (NORMAL / ELECTRIC)
  mod.content.pokemon:register("PORYGON2", {
    name = "Porygon2",
    types = { "NORMAL", "ELECTRIC" },
    baseStats = {
      hp = 85,
      attack = 80,
      defense = 90,
      speed = 60,
      special = 105, -- Unified Special
      spAtk = 105,
      spDef = 95
    },
    learnset = {
      { level = 1, move = "TACKLE" },
      { level = 1, move = "CONVERSION" },
      { level = 20, move = "RECOVER" },
      { level = 32, move = "DISCHARGE" },
      { level = 42, move = "TRI_ATTACK" },
      { level = 52, move = "ICE_BEAM" },
    },
    dex = 233,
    dexEntry = {
      kind = "VIRTUAL",
      heightFt = 2,
      heightIn = 0,
      weight = 72,
      text = "This upgraded version was designed for space exploration."
    }
  })

  -- #234 Stantler (NORMAL / PSYCHIC)
  mod.content.pokemon:register("STANTLER", {
    name = "Stantler",
    types = { "NORMAL", "PSYCHIC" },
    baseStats = {
      hp = 73,
      attack = 95,
      defense = 62,
      speed = 85,
      special = 85, -- Unified Special
      spAtk = 85,
      spDef = 65
    },
    learnset = {
      { level = 1, move = "TACKLE" },
      { level = 1, move = "CONFUSION" },
      { level = 13, move = "HYPNOSIS" },
      { level = 23, move = "ZEN_HEADBUTT" },
      { level = 36, move = "DOUBLE_EDGE" },
      { level = 46, move = "ME_FIRST" },
    },
    dex = 234,
    dexEntry = {
      kind = "BIG HORN",
      heightFt = 4,
      heightIn = 7,
      weight = 157,
      text = "The curved antlers subtly change the flow of air."
    }
  })

  -- #235 Smeargle (NORMAL)
  mod.content.pokemon:register("SMEARGLE", {
    name = "Smeargle",
    types = { "NORMAL" },
    baseStats = {
      hp = 55,
      attack = 20,
      defense = 35,
      speed = 75,
      special = 20, -- Unified Special
      spAtk = 20,
      spDef = 45
    },
    learnset = {
      { level = 1, move = "SKETCH" },
      { level = 11, move = "SKETCH" },
      { level = 21, move = "SKETCH" },
      { level = 31, move = "SKETCH" },
    },
    dex = 235,
    dexEntry = {
      kind = "PAINTER",
      heightFt = 3,
      heightIn = 11,
      weight = 128,
      text = "A special fluid oozes from the tip of its tail."
    }
  })

  -- #236 Tyrogue (FIGHTING)
  mod.content.pokemon:register("TYROGUE", {
    name = "Tyrogue",
    types = { "FIGHTING" },
    baseStats = {
      hp = 35,
      attack = 35,
      defense = 35,
      speed = 35,
      special = 35, -- Unified Special
      spAtk = 35,
      spDef = 35
    },
    evolutions = {
      { type = "LEVEL", level = 20, target = "HITMONTOP" },
    },
    learnset = {
      { level = 1, move = "TACKLE" },
      { level = 1, move = "HELPING_HAND" },
      { level = 7, move = "FAKE_OUT" },
    },
    dex = 236,
    dexEntry = {
      kind = "SCUFFLE",
      heightFt = 2,
      heightIn = 4,
      weight = 46,
      text = "To push its capacity, it will keep fighting even if it loses."
    }
  })

  -- #237 Hitmontop (FIGHTING)
  mod.content.pokemon:register("HITMONTOP", {
    name = "Hitmontop",
    types = { "FIGHTING" },
    baseStats = {
      hp = 50,
      attack = 95,
      defense = 95,
      speed = 70,
      special = 35, -- Unified Special
      spAtk = 35,
      spDef = 110
    },
    learnset = {
      { level = 1, move = "TACKLE" },
      { level = 1, move = "RAPID_SPIN" },
      { level = 19, move = "TRIPLE_KICK" },
      { level = 38, move = "CLOSE_COMBAT" },
    },
    dex = 237,
    dexEntry = {
      kind = "HANDSTAND",
      heightFt = 4,
      heightIn = 7,
      weight = 106,
      text = "It fights while spinning like a top. The centrifugal force is huge."
    }
  })

  -- #238 Smoochum (ICE / PSYCHIC)
  mod.content.pokemon:register("SMOOCHUM", {
    name = "Smoochum",
    types = { "ICE", "PSYCHIC" },
    baseStats = {
      hp = 45,
      attack = 30,
      defense = 15,
      speed = 65,
      special = 85, -- Unified Special
      spAtk = 85,
      spDef = 65
    },
    evolutions = {
      { type = "LEVEL", level = 30, target = "JYNX" },
    },
    learnset = {
      { level = 1, move = "POUND" },
      { level = 1, move = "LICK" },
      { level = 8, move = "POWDER_SNOW" },
      { level = 15, move = "CONFUSION" },
    },
    dex = 238,
    dexEntry = {
      kind = "KISS",
      heightFt = 1,
      heightIn = 4,
      weight = 13,
      text = "It tests everything by touching with its lips."
    }
  })

  -- #239 Elekid (ELECTRIC)
  mod.content.pokemon:register("ELEKID", {
    name = "Elekid",
    types = { "ELECTRIC" },
    baseStats = {
      hp = 45,
      attack = 63,
      defense = 37,
      speed = 95,
      special = 65, -- Unified Special
      spAtk = 65,
      spDef = 55
    },
    evolutions = {
      { type = "LEVEL", level = 30, target = "ELECTABUZZ" },
    },
    learnset = {
      { level = 1, move = "QUICK_ATTACK" },
      { level = 1, move = "THUNDERSHOCK" },
      { level = 11, move = "SWIFT" },
      { level = 20, move = "THUNDER_PUNCH" },
    },
    dex = 239,
    dexEntry = {
      kind = "ELECTRIC",
      heightFt = 2,
      heightIn = 0,
      weight = 52,
      text = "It rotates its arms to generate electricity."
    }
  })

  -- #240 Magby (FIRE)
  mod.content.pokemon:register("MAGBY", {
    name = "Magby",
    types = { "FIRE" },
    baseStats = {
      hp = 45,
      attack = 75,
      defense = 37,
      speed = 83,
      special = 70, -- Unified Special
      spAtk = 70,
      spDef = 55
    },
    evolutions = {
      { type = "LEVEL", level = 30, target = "MAGMAR" },
    },
    learnset = {
      { level = 1, move = "SMOG" },
      { level = 1, move = "EMBER" },
      { level = 20, move = "FIRE_PUNCH" },
      { level = 28, move = "FLAMETHROWER" },
    },
    dex = 240,
    dexEntry = {
      kind = "LIVE COAL",
      heightFt = 2,
      heightIn = 0,
      weight = 47,
      text = "Its bone structure is warm. It breathes yellow flames."
    }
  })

  -- #241 Miltank (NORMAL)
  mod.content.pokemon:register("MILTANK", {
    name = "Miltank",
    types = { "NORMAL" },
    baseStats = {
      hp = 95,
      attack = 80,
      defense = 105,
      speed = 100,
      special = 40, -- Unified Special
      spAtk = 40,
      spDef = 70
    },
    learnset = {
      { level = 1, move = "TACKLE" },
      { level = 8, move = "MILK_DRINK" },
      { level = 24, move = "BODY_SLAM" },
      { level = 35, move = "HEAL_BELL" },
    },
    dex = 241,
    dexEntry = {
      kind = "MILK COW",
      heightFt = 3,
      heightIn = 11,
      weight = 165,
      text = "Its milk is packed with nutrition, making it a great drink."
    }
  })

  -- #242 Blissey (NORMAL / FAIRY)
  mod.content.pokemon:register("BLISSEY", {
    name = "Blissey",
    types = { "NORMAL", "FAIRY" },
    baseStats = {
      hp = 255,
      attack = 10,
      defense = 10,
      speed = 55,
      special = 75, -- Unified Special
      spAtk = 75,
      spDef = 135
    },
    learnset = {
      { level = 1, move = "POUND" },
      { level = 1, move = "SOFT_BOILED" },
      { level = 24, move = "HEAL_BELL" },
      { level = 40, move = "HYPER_VOICE" },
    },
    dex = 242,
    dexEntry = {
      kind = "HAPPINESS",
      heightFt = 4,
      heightIn = 11,
      weight = 103,
      text = "Anyone who eats even a bite of Blissey's egg will become kind."
    }
  })

  -- #243 Raikou (ELECTRIC / STEEL)
  mod.content.pokemon:register("RAIKOU", {
    name = "Raikou",
    types = { "ELECTRIC", "STEEL" },
    baseStats = {
      hp = 90,
      attack = 85,
      defense = 75,
      speed = 115,
      special = 115, -- Unified Special
      spAtk = 115,
      spDef = 115
    },
    learnset = {
      { level = 1, move = "THUNDERSHOCK" },
      { level = 15, move = "VOLT_SWITCH" },
      { level = 30, move = "FLASH_CANNON" },
      { level = 50, move = "THUNDERBOLT" },
    },
    dex = 243,
    dexEntry = {
      kind = "THUNDER",
      heightFt = 6,
      heightIn = 3,
      weight = 392,
      text = "It embodies the speed of lightning. Its roars send shock waves."
    }
  })

  -- #244 Entei (FIRE / GROUND)
  mod.content.pokemon:register("ENTEI", {
    name = "Entei",
    types = { "FIRE", "GROUND" },
    baseStats = {
      hp = 115,
      attack = 115,
      defense = 85,
      speed = 100,
      special = 90, -- Unified Special
      spAtk = 90,
      spDef = 75
    },
    learnset = {
      { level = 1, move = "EMBER" },
      { level = 15, move = "BULLDOZE" },
      { level = 30, move = "SACRED_FIRE" },
      { level = 50, move = "EXTREME_SPEED" },
    },
    dex = 244,
    dexEntry = {
      kind = "VOLCANO",
      heightFt = 6,
      heightIn = 11,
      weight = 437,
      text = "A Pokémon that races across the land. It is said that one is born."
    }
  })

  -- #245 Suicune (WATER / ICE)
  mod.content.pokemon:register("SUICUNE", {
    name = "Suicune",
    types = { "WATER", "ICE" },
    baseStats = {
      hp = 100,
      attack = 75,
      defense = 115,
      speed = 85,
      special = 90, -- Unified Special
      spAtk = 90,
      spDef = 115
    },
    learnset = {
      { level = 1, move = "WATER_GUN" },
      { level = 15, move = "ICY_WIND" },
      { level = 30, move = "CALM_MIND" },
      { level = 50, move = "HYDRO_PUMP" },
    },
    dex = 245,
    dexEntry = {
      kind = "AURORA",
      heightFt = 6,
      heightIn = 7,
      weight = 412,
      text = "Said to be the reincarnation of north winds. It can instantly purify."
    }
  })

  -- #246 Larvitar (ROCK / GROUND)
  mod.content.pokemon:register("LARVITAR", {
    name = "Larvitar",
    types = { "ROCK", "GROUND" },
    baseStats = {
      hp = 50,
      attack = 64,
      defense = 50,
      speed = 41,
      special = 45, -- Unified Special
      spAtk = 45,
      spDef = 50
    },
    evolutions = {
      { type = "LEVEL", level = 30, target = "PUPITAR" },
    },
    learnset = {
      { level = 1, move = "BITE" },
      { level = 1, move = "ROCK_THROW" },
      { level = 15, move = "DARK_PULSE" },
      { level = 28, move = "EARTHQUAKE" },
    },
    dex = 246,
    dexEntry = {
      kind = "ROCK SKIN",
      heightFt = 2,
      heightIn = 0,
      weight = 159,
      text = "Born deep underground, it eats dirt until it reaches the surface."
    }
  })

  -- #247 Pupitar (ROCK / GROUND)
  mod.content.pokemon:register("PUPITAR", {
    name = "Pupitar",
    types = { "ROCK", "GROUND" },
    baseStats = {
      hp = 70,
      attack = 84,
      defense = 70,
      speed = 51,
      special = 65, -- Unified Special
      spAtk = 65,
      spDef = 70
    },
    evolutions = {
      { type = "LEVEL", level = 55, target = "TYRANITAR" },
    },
    learnset = {
      { level = 1, move = "BITE" },
      { level = 1, move = "ROCK_THROW" },
      { level = 15, move = "DARK_PULSE" },
      { level = 28, move = "EARTHQUAKE" },
      { level = 38, move = "CRUNCH" },
    },
    dex = 247,
    dexEntry = {
      kind = "HARD SHELL",
      heightFt = 3,
      heightIn = 11,
      weight = 335,
      text = "Its shell is as hard as bedrock. It moves around by venting gas."
    }
  })

  -- #248 Tyranitar (ROCK / DARK)
  mod.content.pokemon:register("TYRANITAR", {
    name = "Tyranitar",
    types = { "ROCK", "DARK" },
    baseStats = {
      hp = 100,
      attack = 134,
      defense = 110,
      speed = 61,
      special = 95, -- Unified Special
      spAtk = 95,
      spDef = 100
    },
    learnset = {
      { level = 1, move = "BITE" },
      { level = 1, move = "STONE_EDGE" },
      { level = 38, move = "CRUNCH" },
      { level = 48, move = "DRAGON_DANCE" },
      { level = 60, move = "PURSUIT" },
    },
    dex = 248,
    dexEntry = {
      kind = "ARMOR",
      heightFt = 6,
      heightIn = 7,
      weight = 445,
      text = "Extremely strong, it can change the landscape. It has an insolent nature."
    }
  })

  -- #249 Lugia (PSYCHIC / FLYING)
  mod.content.pokemon:register("LUGIA", {
    name = "Lugia",
    types = { "PSYCHIC", "FLYING" },
    baseStats = {
      hp = 106,
      attack = 90,
      defense = 130,
      speed = 110,
      special = 90, -- Unified Special
      spAtk = 90,
      spDef = 154
    },
    learnset = {
      { level = 1, move = "GUST" },
      { level = 15, move = "AEROBLAST" },
      { level = 35, move = "ROOST" },
      { level = 55, move = "PSYCHIC" },
    },
    dex = 249,
    dexEntry = {
      kind = "DIVINE",
      heightFt = 17,
      heightIn = 1,
      weight = 476,
      text = "It sleeps in deep ocean trenches. It calms stormy seas."
    }
  })

  -- #250 Ho-Oh (FIRE / FLYING)
  mod.content.pokemon:register("HO_OH", {
    name = "Ho-Oh",
    types = { "FIRE", "FLYING" },
    baseStats = {
      hp = 106,
      attack = 130,
      defense = 90,
      speed = 90,
      special = 110, -- Unified Special
      spAtk = 110,
      spDef = 154
    },
    learnset = {
      { level = 1, move = "GUST" },
      { level = 15, move = "SACRED_FIRE" },
      { level = 35, move = "ROOST" },
      { level = 55, move = "BRAVE_BIRD" },
    },
    dex = 250,
    dexEntry = {
      kind = "RAINBOW",
      heightFt = 12,
      heightIn = 6,
      weight = 439,
      text = "A legend says that its body glows in seven colors."
    }
  })

  -- #251 Celebi (GRASS / PSYCHIC)
  mod.content.pokemon:register("CELEBI", {
    name = "Celebi",
    types = { "GRASS", "PSYCHIC" },
    baseStats = {
      hp = 100,
      attack = 100,
      defense = 100,
      speed = 100,
      special = 100, -- Unified Special
      spAtk = 100,
      spDef = 100
    },
    learnset = {
      { level = 1, move = "CONFUSION" },
      { level = 1, move = "RECOVER" },
      { level = 30, move = "GIGA_DRAIN" },
      { level = 60, move = "NASTY_PLOT" },
    },
    dex = 251,
    dexEntry = {
      kind = "TIME TRAVEL",
      heightFt = 2,
      heightIn = 0,
      weight = 11,
      text = "Revered as a guardian of the forest. It appears in peaceful times."
    }
  })

end
