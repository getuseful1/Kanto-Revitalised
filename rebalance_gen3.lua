-- ============================================================================
-- Kanto, Johto & Hoenn Revitalised - Gen 3 Species Module (#252 - #386)
-- ============================================================================

return function(mod)
  if not mod or not mod.content or not mod.content.pokemon then
    error('gen1recomp modding API not initialized!')
  end

  mod.log:info("Kanto Revitalised: Registering Gen 3 Roster (#252 - #386)...")

  -- #252 Treecko (GRASS)
  mod.content.pokemon:register("TREECKO", {
    name = "Treecko",
    types = { "GRASS" },
    baseStats = {
      hp = 40,
      attack = 45,
      defense = 35,
      speed = 70,
      special = 65, -- Unified Special
      spAtk = 65,
      spDef = 55
    },
    evolutions = {
      { type = "LEVEL", level = 16, target = "GROVYLE" },
    },
    learnset = {
      { level = 1, move = "POUND" },
      { level = 1, move = "ABSORB" },
      { level = 11, move = "QUICK_ATTACK" },
      { level = 21, move = "GIGA_DRAIN" },
    },
    dex = 252,
    dexEntry = {
      kind = "WOOD GECKO",
      heightFt = 1,
      heightIn = 8,
      weight = 11,
      text = "It makes its nest in a big tree. It defends its territory against threat."
    }
  })

  -- #253 Grovyle (GRASS / DRAGON)
  mod.content.pokemon:register("GROVYLE", {
    name = "Grovyle",
    types = { "GRASS", "DRAGON" },
    baseStats = {
      hp = 50,
      attack = 65,
      defense = 45,
      speed = 95,
      special = 85, -- Unified Special
      spAtk = 85,
      spDef = 65
    },
    evolutions = {
      { type = "LEVEL", level = 36, target = "SCEPTILE" },
    },
    learnset = {
      { level = 1, move = "POUND" },
      { level = 1, move = "ABSORB" },
      { level = 11, move = "QUICK_ATTACK" },
      { level = 16, move = "LEAF_BLADE" },
      { level = 24, move = "DRAGON_BREATH" },
    },
    dex = 253,
    dexEntry = {
      kind = "WOOD GECKO",
      heightFt = 2,
      heightIn = 11,
      weight = 48,
      text = "Leaves grow out of its body. They camouflage it in forests."
    }
  })

  -- #254 Sceptile (GRASS / DRAGON)
  mod.content.pokemon:register("SCEPTILE", {
    name = "Sceptile",
    types = { "GRASS", "DRAGON" },
    baseStats = {
      hp = 70,
      attack = 85,
      defense = 65,
      speed = 120,
      special = 105, -- Unified Special
      spAtk = 105,
      spDef = 85
    },
    learnset = {
      { level = 1, move = "POUND" },
      { level = 16, move = "LEAF_BLADE" },
      { level = 36, move = "DRAGON_PULSE" },
      { level = 48, move = "DRAGON_DANCE" },
      { level = 58, move = "LEAF_STORM" },
    },
    dex = 254,
    dexEntry = {
      kind = "FOREST",
      heightFt = 5,
      heightIn = 7,
      weight = 115,
      text = "The leaves growing on its arms can slice through thick trees."
    }
  })

  -- #255 Torchic (FIRE)
  mod.content.pokemon:register("TORCHIC", {
    name = "Torchic",
    types = { "FIRE" },
    baseStats = {
      hp = 45,
      attack = 60,
      defense = 40,
      speed = 45,
      special = 70, -- Unified Special
      spAtk = 70,
      spDef = 50
    },
    evolutions = {
      { type = "LEVEL", level = 16, target = "COMBUSKEN" },
    },
    learnset = {
      { level = 1, move = "SCRATCH" },
      { level = 1, move = "GROWL" },
      { level = 10, move = "EMBER" },
      { level = 16, move = "PECK" },
    },
    dex = 255,
    dexEntry = {
      kind = "CHICK",
      heightFt = 1,
      heightIn = 4,
      weight = 6,
      text = "If hugged, it feels warm. A fire burns inside its belly."
    }
  })

  -- #256 Combusken (FIRE / FIGHTING)
  mod.content.pokemon:register("COMBUSKEN", {
    name = "Combusken",
    types = { "FIRE", "FIGHTING" },
    baseStats = {
      hp = 60,
      attack = 85,
      defense = 60,
      speed = 55,
      special = 85, -- Unified Special
      spAtk = 85,
      spDef = 60
    },
    evolutions = {
      { type = "LEVEL", level = 36, target = "BLAZIKEN" },
    },
    learnset = {
      { level = 1, move = "SCRATCH" },
      { level = 10, move = "EMBER" },
      { level = 16, move = "DOUBLE_KICK" },
      { level = 25, move = "FLAME_CHARGE" },
    },
    dex = 256,
    dexEntry = {
      kind = "YOUNG FOWL",
      heightFt = 2,
      heightIn = 11,
      weight = 43,
      text = "Its powerful legs can deliver 10 clean kicks per second."
    }
  })

  -- #257 Blaziken (FIRE / FIGHTING)
  mod.content.pokemon:register("BLAZIKEN", {
    name = "Blaziken",
    types = { "FIRE", "FIGHTING" },
    baseStats = {
      hp = 80,
      attack = 120,
      defense = 70,
      speed = 80,
      special = 110, -- Unified Special
      spAtk = 110,
      spDef = 70
    },
    learnset = {
      { level = 1, move = "SCRATCH" },
      { level = 16, move = "DOUBLE_KICK" },
      { level = 36, move = "BLAZE_KICK" },
      { level = 48, move = "CLOSE_COMBAT" },
      { level = 58, move = "FLARE_BLITZ" },
    },
    dex = 257,
    dexEntry = {
      kind = "BLAZE",
      heightFt = 6,
      heightIn = 3,
      weight = 115,
      text = "In battle, Blaziken blows intense flames from its wrists."
    }
  })

  -- #258 Mudkip (WATER)
  mod.content.pokemon:register("MUDKIP", {
    name = "Mudkip",
    types = { "WATER" },
    baseStats = {
      hp = 50,
      attack = 70,
      defense = 50,
      speed = 40,
      special = 50, -- Unified Special
      spAtk = 50,
      spDef = 50
    },
    evolutions = {
      { type = "LEVEL", level = 16, target = "MARSHTOMP" },
    },
    learnset = {
      { level = 1, move = "TACKLE" },
      { level = 1, move = "WATER_GUN" },
      { level = 10, move = "MUD_SLAP" },
      { level = 16, move = "WATER_PULSE" },
    },
    dex = 258,
    dexEntry = {
      kind = "MUD FISH",
      heightFt = 1,
      heightIn = 4,
      weight = 17,
      text = "The fin on Mudkip's head acts as highly sensitive radar."
    }
  })

  -- #259 Marshtomp (WATER / GROUND)
  mod.content.pokemon:register("MARSHTOMP", {
    name = "Marshtomp",
    types = { "WATER", "GROUND" },
    baseStats = {
      hp = 70,
      attack = 85,
      defense = 70,
      speed = 50,
      special = 60, -- Unified Special
      spAtk = 60,
      spDef = 70
    },
    evolutions = {
      { type = "LEVEL", level = 36, target = "SWAMPERT" },
    },
    learnset = {
      { level = 1, move = "TACKLE" },
      { level = 1, move = "WATER_GUN" },
      { level = 16, move = "MUD_SHOT" },
      { level = 25, move = "WATER_PULSE" },
    },
    dex = 259,
    dexEntry = {
      kind = "MUD FISH",
      heightFt = 2,
      heightIn = 4,
      weight = 62,
      text = "Its surface is covered by a slimy film that preserves moisture."
    }
  })

  -- #260 Swampert (WATER / GROUND)
  mod.content.pokemon:register("SWAMPERT", {
    name = "Swampert",
    types = { "WATER", "GROUND" },
    baseStats = {
      hp = 100,
      attack = 110,
      defense = 90,
      speed = 60,
      special = 85, -- Unified Special
      spAtk = 85,
      spDef = 90
    },
    learnset = {
      { level = 1, move = "TACKLE" },
      { level = 16, move = "MUD_SHOT" },
      { level = 36, move = "EARTHQUAKE" },
      { level = 48, move = "HAMMER_ARM" },
      { level = 58, move = "LIQUIDATION" },
    },
    dex = 260,
    dexEntry = {
      kind = "MUD FISH",
      heightFt = 4,
      heightIn = 11,
      weight = 181,
      text = "Swampert is very strong. It can easily tow a large boulder."
    }
  })

  -- #261 Poochyena (DARK)
  mod.content.pokemon:register("POOCHYENA", {
    name = "Poochyena",
    types = { "DARK" },
    baseStats = {
      hp = 35,
      attack = 55,
      defense = 35,
      speed = 35,
      special = 30, -- Unified Special
      spAtk = 30,
      spDef = 30
    },
    evolutions = {
      { type = "LEVEL", level = 18, target = "MIGHTYENA" },
    },
    learnset = {
      { level = 1, move = "TACKLE" },
      { level = 5, move = "BITE" },
      { level = 20, move = "CRUNCH" },
    },
    dex = 261,
    dexEntry = {
      kind = "BITE",
      heightFt = 3,
      heightIn = 3,
      weight = 30,
      text = "A Pokémon with a persistent nature. It chases prey."
    }
  })

  -- #262 Mightyena (DARK)
  mod.content.pokemon:register("MIGHTYENA", {
    name = "Mightyena",
    types = { "DARK" },
    baseStats = {
      hp = 70,
      attack = 90,
      defense = 70,
      speed = 70,
      special = 60, -- Unified Special
      spAtk = 60,
      spDef = 60
    },
    learnset = {
      { level = 1, move = "TACKLE" },
      { level = 5, move = "BITE" },
      { level = 20, move = "CRUNCH" },
      { level = 32, move = "PLAY_ROUGH" },
      { level = 42, move = "SUCKER_PUNCH" },
    },
    dex = 262,
    dexEntry = {
      kind = "BITE",
      heightFt = 3,
      heightIn = 3,
      weight = 82,
      text = "It gives obvious signals when it is preparing to attack."
    }
  })

  -- #263 Zigzagoon (NORMAL)
  mod.content.pokemon:register("ZIGZAGOON", {
    name = "Zigzagoon",
    types = { "NORMAL" },
    baseStats = {
      hp = 38,
      attack = 30,
      defense = 41,
      speed = 60,
      special = 30, -- Unified Special
      spAtk = 30,
      spDef = 41
    },
    evolutions = {
      { type = "LEVEL", level = 20, target = "LINOONE" },
    },
    learnset = {
      { level = 1, move = "TACKLE" },
      { level = 9, move = "HEADBUTT" },
      { level = 18, move = "TAKE_DOWN" },
    },
    dex = 263,
    dexEntry = {
      kind = "TINY RACCOON",
      heightFt = 1,
      heightIn = 4,
      weight = 38,
      text = "Restlessly wanders everywhere for things it likes."
    }
  })

  -- #264 Linoone (NORMAL / GROUND)
  mod.content.pokemon:register("LINOONE", {
    name = "Linoone",
    types = { "NORMAL", "GROUND" },
    baseStats = {
      hp = 78,
      attack = 70,
      defense = 61,
      speed = 100,
      special = 50, -- Unified Special
      spAtk = 50,
      spDef = 61
    },
    learnset = {
      { level = 1, move = "TACKLE" },
      { level = 9, move = "HEADBUTT" },
      { level = 20, move = "BELLY_DRUM" },
      { level = 32, move = "EXTREME_SPEED" },
      { level = 40, move = "STOMP" },
    },
    dex = 264,
    dexEntry = {
      kind = "RUSH",
      heightFt = 1,
      heightIn = 8,
      weight = 72,
      text = "It runs straight ahead at full speed. It has trouble turning."
    }
  })

  -- #265 Wurmple (BUG)
  mod.content.pokemon:register("WURMPLE", {
    name = "Wurmple",
    types = { "BUG" },
    baseStats = {
      hp = 45,
      attack = 45,
      defense = 35,
      speed = 20,
      special = 20, -- Unified Special
      spAtk = 20,
      spDef = 30
    },
    evolutions = {
      { type = "LEVEL", level = 7, target = "SILCOON" },
    },
    learnset = {
      { level = 1, move = "TACKLE" },
      { level = 1, move = "STRING_SHOT" },
      { level = 5, move = "POISON_STING" },
    },
    dex = 265,
    dexEntry = {
      kind = "WORM",
      heightFt = 1,
      heightIn = 0,
      weight = 8,
      text = "It lives among tall grass and in forests."
    }
  })

  -- #266 Silcoon (BUG)
  mod.content.pokemon:register("SILCOON", {
    name = "Silcoon",
    types = { "BUG" },
    baseStats = {
      hp = 50,
      attack = 35,
      defense = 55,
      speed = 15,
      special = 25, -- Unified Special
      spAtk = 25,
      spDef = 25
    },
    evolutions = {
      { type = "LEVEL", level = 10, target = "BEAUTIFLY" },
    },
    learnset = {
      { level = 1, move = "HARDEN" },
    },
    dex = 266,
    dexEntry = {
      kind = "COCOON",
      heightFt = 2,
      heightIn = 0,
      weight = 22,
      text = "It wraps silk around branches to keep from falling."
    }
  })

  -- #267 Beautifly (BUG / FLYING)
  mod.content.pokemon:register("BEAUTIFLY", {
    name = "Beautifly",
    types = { "BUG", "FLYING" },
    baseStats = {
      hp = 60,
      attack = 70,
      defense = 50,
      speed = 65,
      special = 100, -- Unified Special
      spAtk = 100,
      spDef = 50
    },
    learnset = {
      { level = 1, move = "GUST" },
      { level = 20, move = "BUG_BUZZ" },
      { level = 30, move = "QUIVER_DANCE" },
      { level = 40, move = "AIR_SLASH" },
    },
    dex = 267,
    dexEntry = {
      kind = "BUTTERFLY",
      heightFt = 3,
      heightIn = 3,
      weight = 62,
      text = "Despite its appearance, it has an aggressive nature."
    }
  })

  -- #268 Cascoon (BUG)
  mod.content.pokemon:register("CASCOON", {
    name = "Cascoon",
    types = { "BUG" },
    baseStats = {
      hp = 50,
      attack = 35,
      defense = 55,
      speed = 15,
      special = 25, -- Unified Special
      spAtk = 25,
      spDef = 25
    },
    evolutions = {
      { type = "LEVEL", level = 10, target = "DUSTOX" },
    },
    learnset = {
      { level = 1, move = "HARDEN" },
    },
    dex = 268,
    dexEntry = {
      kind = "COCOON",
      heightFt = 2,
      heightIn = 4,
      weight = 25,
      text = "It never forgets any attack it endured while in cocoon."
    }
  })

  -- #269 Dustox (BUG / POISON)
  mod.content.pokemon:register("DUSTOX", {
    name = "Dustox",
    types = { "BUG", "POISON" },
    baseStats = {
      hp = 60,
      attack = 50,
      defense = 70,
      speed = 65,
      special = 50, -- Unified Special
      spAtk = 50,
      spDef = 90
    },
    learnset = {
      { level = 1, move = "CONFUSION" },
      { level = 12, move = "POISON_POWDER" },
      { level = 20, move = "BUG_BUZZ" },
      { level = 30, move = "QUIVER_DANCE" },
    },
    dex = 269,
    dexEntry = {
      kind = "POISON MOTH",
      heightFt = 3,
      heightIn = 11,
      weight = 70,
      text = "It is nocturnal. When night falls, it flies out."
    }
  })

  -- #270 Lotad (WATER / GRASS)
  mod.content.pokemon:register("LOTAD", {
    name = "Lotad",
    types = { "WATER", "GRASS" },
    baseStats = {
      hp = 40,
      attack = 30,
      defense = 30,
      speed = 30,
      special = 40, -- Unified Special
      spAtk = 40,
      spDef = 50
    },
    evolutions = {
      { type = "LEVEL", level = 14, target = "LOMBRE" },
    },
    learnset = {
      { level = 1, move = "ASTONISH" },
      { level = 6, move = "WATER_GUN" },
      { level = 12, move = "MEGA_DRAIN" },
    },
    dex = 270,
    dexEntry = {
      kind = "WATER WEED",
      heightFt = 1,
      heightIn = 8,
      weight = 6,
      text = "It searches for clean water. It carries small Pokémon."
    }
  })

  -- #271 Lombre (WATER / GRASS)
  mod.content.pokemon:register("LOMBRE", {
    name = "Lombre",
    types = { "WATER", "GRASS" },
    baseStats = {
      hp = 60,
      attack = 50,
      defense = 50,
      speed = 50,
      special = 60, -- Unified Special
      spAtk = 60,
      spDef = 70
    },
    evolutions = {
      { type = "ITEM", item = "WATER_STONE", target = "LUDICOLO" },
    },
    learnset = {
      { level = 1, move = "ASTONISH" },
      { level = 6, move = "WATER_GUN" },
      { level = 12, move = "MEGA_DRAIN" },
      { level = 22, move = "SCALD" },
    },
    dex = 271,
    dexEntry = {
      kind = "JOLLY",
      heightFt = 3,
      heightIn = 3,
      weight = 72,
      text = "It is mischievous by nature. When it spots anglers, it tugs lines."
    }
  })

  -- #272 Ludicolo (WATER / GRASS)
  mod.content.pokemon:register("LUDICOLO", {
    name = "Ludicolo",
    types = { "WATER", "GRASS" },
    baseStats = {
      hp = 80,
      attack = 70,
      defense = 70,
      speed = 70,
      special = 90, -- Unified Special
      spAtk = 90,
      spDef = 100
    },
    learnset = {
      { level = 1, move = "ASTONISH" },
      { level = 22, move = "SCALD" },
      { level = 30, move = "GIGA_DRAIN" },
      { level = 40, move = "RAIN_DANCE" },
      { level = 50, move = "HYDRO_PUMP" },
    },
    dex = 272,
    dexEntry = {
      kind = "CAREFREE",
      heightFt = 4,
      heightIn = 11,
      weight = 121,
      text = "Upon hearing festive music, all its muscles fill with power."
    }
  })

  -- #273 Seedot (GRASS)
  mod.content.pokemon:register("SEEDOT", {
    name = "Seedot",
    types = { "GRASS" },
    baseStats = {
      hp = 40,
      attack = 40,
      defense = 50,
      speed = 30,
      special = 30, -- Unified Special
      spAtk = 30,
      spDef = 30
    },
    evolutions = {
      { type = "LEVEL", level = 14, target = "NUZLEAF" },
    },
    learnset = {
      { level = 1, move = "BIDE" },
      { level = 3, move = "HARDEN" },
      { level = 9, move = "BULLET_SEED" },
    },
    dex = 273,
    dexEntry = {
      kind = "ACORN",
      heightFt = 1,
      heightIn = 8,
      weight = 9,
      text = "It hangs from tree branches using its cap."
    }
  })

  -- #274 Nuzleaf (GRASS / DARK)
  mod.content.pokemon:register("NUZLEAF", {
    name = "Nuzleaf",
    types = { "GRASS", "DARK" },
    baseStats = {
      hp = 70,
      attack = 70,
      defense = 40,
      speed = 60,
      special = 60, -- Unified Special
      spAtk = 60,
      spDef = 40
    },
    evolutions = {
      { type = "ITEM", item = "LEAF_STONE", target = "SHIFTRY" },
    },
    learnset = {
      { level = 1, move = "POUND" },
      { level = 14, move = "RAZOR_LEAF" },
      { level = 20, move = "FEINT_ATTACK" },
    },
    dex = 274,
    dexEntry = {
      kind = "WILY",
      heightFt = 3,
      heightIn = 3,
      weight = 62,
      text = "It plays a grass whistle to terrify people in forests."
    }
  })

  -- #275 Shiftry (GRASS / DARK)
  mod.content.pokemon:register("SHIFTRY", {
    name = "Shiftry",
    types = { "GRASS", "DARK" },
    baseStats = {
      hp = 90,
      attack = 100,
      defense = 60,
      speed = 80,
      special = 90, -- Unified Special
      spAtk = 90,
      spDef = 60
    },
    learnset = {
      { level = 1, move = "POUND" },
      { level = 20, move = "LEAF_BLADE" },
      { level = 32, move = "NASTY_PLOT" },
      { level = 44, move = "LEAF_STORM" },
      { level = 54, move = "DARK_PULSE" },
    },
    dex = 275,
    dexEntry = {
      kind = "WICKED",
      heightFt = 4,
      heightIn = 3,
      weight = 131,
      text = "A mythical forest guardian that can create gale-force winds."
    }
  })

  -- #276 Taillow (NORMAL / FLYING)
  mod.content.pokemon:register("TAILLOW", {
    name = "Taillow",
    types = { "NORMAL", "FLYING" },
    baseStats = {
      hp = 40,
      attack = 55,
      defense = 30,
      speed = 85,
      special = 30, -- Unified Special
      spAtk = 30,
      spDef = 30
    },
    evolutions = {
      { type = "LEVEL", level = 22, target = "SWELLOW" },
    },
    learnset = {
      { level = 1, move = "PECK" },
      { level = 5, move = "QUICK_ATTACK" },
      { level = 13, move = "WING_ATTACK" },
    },
    dex = 276,
    dexEntry = {
      kind = "TINYSWALLOW",
      heightFt = 1,
      heightIn = 0,
      weight = 5,
      text = "It dislikes cold weather. It flies in search of warmth."
    }
  })

  -- #277 Swellow (NORMAL / FLYING)
  mod.content.pokemon:register("SWELLOW", {
    name = "Swellow",
    types = { "NORMAL", "FLYING" },
    baseStats = {
      hp = 60,
      attack = 85,
      defense = 60,
      speed = 125,
      special = 75, -- Unified Special
      spAtk = 75,
      spDef = 50
    },
    learnset = {
      { level = 1, move = "PECK" },
      { level = 13, move = "WING_ATTACK" },
      { level = 24, move = "FACADE" },
      { level = 38, move = "BRAVE_BIRD" },
      { level = 50, move = "BOOMBURST" },
    },
    dex = 277,
    dexEntry = {
      kind = "SWALLOW",
      heightFt = 2,
      heightIn = 4,
      weight = 44,
      text = "It dives gracefully from the sky to catch prey."
    }
  })

  -- #278 Wingull (WATER / FLYING)
  mod.content.pokemon:register("WINGULL", {
    name = "Wingull",
    types = { "WATER", "FLYING" },
    baseStats = {
      hp = 40,
      attack = 30,
      defense = 30,
      speed = 85,
      special = 55, -- Unified Special
      spAtk = 55,
      spDef = 30
    },
    evolutions = {
      { type = "LEVEL", level = 25, target = "PELIPPER" },
    },
    learnset = {
      { level = 1, move = "GROWL" },
      { level = 1, move = "WATER_GUN" },
      { level = 11, move = "WING_ATTACK" },
    },
    dex = 278,
    dexEntry = {
      kind = "SEAGULL",
      heightFt = 2,
      heightIn = 0,
      weight = 53,
      text = "It rides ocean winds like a glider to soar into skies."
    }
  })

  -- #279 Pelipper (WATER / FLYING)
  mod.content.pokemon:register("PELIPPER", {
    name = "Pelipper",
    types = { "WATER", "FLYING" },
    baseStats = {
      hp = 60,
      attack = 50,
      defense = 100,
      speed = 65,
      special = 95, -- Unified Special
      spAtk = 95,
      spDef = 70
    },
    learnset = {
      { level = 1, move = "GROWL" },
      { level = 11, move = "WING_ATTACK" },
      { level = 25, move = "ROOST" },
      { level = 35, move = "SCALD" },
      { level = 48, move = "HURRICANE" },
    },
    dex = 279,
    dexEntry = {
      kind = "WATER BIRD",
      heightFt = 3,
      heightIn = 11,
      weight = 62,
      text = "It scoops up small Pokémon in its beak and carries them."
    }
  })

  -- #280 Ralts (PSYCHIC / FAIRY)
  mod.content.pokemon:register("RALTS", {
    name = "Ralts",
    types = { "PSYCHIC", "FAIRY" },
    baseStats = {
      hp = 28,
      attack = 25,
      defense = 25,
      speed = 40,
      special = 45, -- Unified Special
      spAtk = 45,
      spDef = 35
    },
    evolutions = {
      { type = "LEVEL", level = 20, target = "KIRLIA" },
    },
    learnset = {
      { level = 1, move = "GROWL" },
      { level = 6, move = "CONFUSION" },
      { level = 12, move = "DISARMING_VOICE" },
    },
    dex = 280,
    dexEntry = {
      kind = "FEELING",
      heightFt = 1,
      heightIn = 4,
      weight = 14,
      text = "It uses the horns on its head to sense emotions."
    }
  })

  -- #281 Kirlia (PSYCHIC / FAIRY)
  mod.content.pokemon:register("KIRLIA", {
    name = "Kirlia",
    types = { "PSYCHIC", "FAIRY" },
    baseStats = {
      hp = 38,
      attack = 35,
      defense = 35,
      speed = 50,
      special = 65, -- Unified Special
      spAtk = 65,
      spDef = 55
    },
    evolutions = {
      { type = "LEVEL", level = 30, target = "GARDEVOIR" },
    },
    learnset = {
      { level = 1, move = "GROWL" },
      { level = 6, move = "CONFUSION" },
      { level = 12, move = "DISARMING_VOICE" },
      { level = 22, move = "PSYBEAM" },
    },
    dex = 281,
    dexEntry = {
      kind = "EMOTION",
      heightFt = 2,
      heightIn = 7,
      weight = 44,
      text = "The cheerful spirit of its Trainer powers its psychic energy."
    }
  })

  -- #282 Gardevoir (PSYCHIC / FAIRY)
  mod.content.pokemon:register("GARDEVOIR", {
    name = "Gardevoir",
    types = { "PSYCHIC", "FAIRY" },
    baseStats = {
      hp = 68,
      attack = 65,
      defense = 65,
      speed = 80,
      special = 125, -- Unified Special
      spAtk = 125,
      spDef = 115
    },
    learnset = {
      { level = 1, move = "CONFUSION" },
      { level = 12, move = "DISARMING_VOICE" },
      { level = 30, move = "PSYCHIC" },
      { level = 40, move = "MOONBLAST" },
      { level = 50, move = "CALM_MIND" },
    },
    dex = 282,
    dexEntry = {
      kind = "EMBRACE",
      heightFt = 5,
      heightIn = 3,
      weight = 107,
      text = "It has the power to predict the future and protect its Trainer."
    }
  })

  -- #283 Surskit (BUG / WATER)
  mod.content.pokemon:register("SURSKIT", {
    name = "Surskit",
    types = { "BUG", "WATER" },
    baseStats = {
      hp = 40,
      attack = 30,
      defense = 32,
      speed = 65,
      special = 50, -- Unified Special
      spAtk = 50,
      spDef = 52
    },
    evolutions = {
      { type = "LEVEL", level = 22, target = "MASQUERAIN" },
    },
    learnset = {
      { level = 1, move = "BUBBLE" },
      { level = 6, move = "QUICK_ATTACK" },
      { level = 15, move = "WATER_PULSE" },
    },
    dex = 283,
    dexEntry = {
      kind = "POND SKATER",
      heightFt = 1,
      heightIn = 8,
      weight = 4,
      text = "It secretes oil from the tips of its feet to glide on water."
    }
  })

  -- #284 Masquerain (BUG / FLYING)
  mod.content.pokemon:register("MASQUERAIN", {
    name = "Masquerain",
    types = { "BUG", "FLYING" },
    baseStats = {
      hp = 70,
      attack = 60,
      defense = 62,
      speed = 80,
      special = 100, -- Unified Special
      spAtk = 100,
      spDef = 82
    },
    learnset = {
      { level = 1, move = "BUBBLE" },
      { level = 15, move = "WATER_PULSE" },
      { level = 22, move = "AIR_SLASH" },
      { level = 32, move = "BUG_BUZZ" },
      { level = 42, move = "QUIVER_DANCE" },
    },
    dex = 284,
    dexEntry = {
      kind = "EYEALL",
      heightFt = 3,
      heightIn = 11,
      weight = 121,
      text = "The eye patterns on its antennae intimidate predators."
    }
  })

  -- #285 Shroomish (GRASS)
  mod.content.pokemon:register("SHROOMISH", {
    name = "Shroomish",
    types = { "GRASS" },
    baseStats = {
      hp = 60,
      attack = 40,
      defense = 60,
      speed = 35,
      special = 40, -- Unified Special
      spAtk = 40,
      spDef = 60
    },
    evolutions = {
      { type = "LEVEL", level = 23, target = "BRELOOM" },
    },
    learnset = {
      { level = 1, move = "ABSORB" },
      { level = 5, move = "STUN_SPORE" },
      { level = 12, move = "LEECH_SEED" },
      { level = 28, move = "SPORE" },
    },
    dex = 285,
    dexEntry = {
      kind = "MUSHROOM",
      heightFt = 1,
      heightIn = 4,
      weight = 10,
      text = "It sheds toxic spores from the top of its head."
    }
  })

  -- #286 Breloom (GRASS / FIGHTING)
  mod.content.pokemon:register("BRELOOM", {
    name = "Breloom",
    types = { "GRASS", "FIGHTING" },
    baseStats = {
      hp = 60,
      attack = 130,
      defense = 80,
      speed = 70,
      special = 60, -- Unified Special
      spAtk = 60,
      spDef = 60
    },
    learnset = {
      { level = 1, move = "ABSORB" },
      { level = 23, move = "MACH_PUNCH" },
      { level = 28, move = "SPORE" },
      { level = 35, move = "BULLET_SEED" },
      { level = 48, move = "CLOSE_COMBAT" },
    },
    dex = 286,
    dexEntry = {
      kind = "MUSHROOM",
      heightFt = 3,
      heightIn = 11,
      weight = 86,
      text = "Its short arms stretch when throwing punches."
    }
  })

  -- #287 Slakoth (NORMAL)
  mod.content.pokemon:register("SLAKOTH", {
    name = "Slakoth",
    types = { "NORMAL" },
    baseStats = {
      hp = 60,
      attack = 60,
      defense = 60,
      speed = 30,
      special = 35, -- Unified Special
      spAtk = 35,
      spDef = 35
    },
    evolutions = {
      { type = "LEVEL", level = 18, target = "VIGOROTH" },
    },
    learnset = {
      { level = 1, move = "SCRATCH" },
      { level = 1, move = "YAWN" },
      { level = 13, move = "SLACK_OFF" },
    },
    dex = 287,
    dexEntry = {
      kind = "SLOTH",
      heightFt = 2,
      heightIn = 7,
      weight = 53,
      text = "It sleeps for 20 hours a day. It eats leaves off trees."
    }
  })

  -- #288 Vigoroth (NORMAL)
  mod.content.pokemon:register("VIGOROTH", {
    name = "Vigoroth",
    types = { "NORMAL" },
    baseStats = {
      hp = 80,
      attack = 80,
      defense = 80,
      speed = 90,
      special = 55, -- Unified Special
      spAtk = 55,
      spDef = 55
    },
    evolutions = {
      { type = "LEVEL", level = 36, target = "SLAKING" },
    },
    learnset = {
      { level = 1, move = "SCRATCH" },
      { level = 13, move = "SLACK_OFF" },
      { level = 25, move = "SLASH" },
      { level = 35, move = "BODY_SLAM" },
    },
    dex = 288,
    dexEntry = {
      kind = "WILD MONKEY",
      heightFt = 4,
      heightIn = 7,
      weight = 102,
      text = "Its heart beats at a rapid rate. It cannot stay still."
    }
  })

  -- #289 Slaking (NORMAL)
  mod.content.pokemon:register("SLAKING", {
    name = "Slaking",
    types = { "NORMAL" },
    baseStats = {
      hp = 150,
      attack = 160,
      defense = 100,
      speed = 100,
      special = 95, -- Unified Special
      spAtk = 95,
      spDef = 65
    },
    learnset = {
      { level = 1, move = "SCRATCH" },
      { level = 25, move = "SLASH" },
      { level = 35, move = "BODY_SLAM" },
      { level = 48, move = "HAMMER_ARM" },
      { level = 60, move = "GIGA_IMPACT" },
    },
    dex = 289,
    dexEntry = {
      kind = "LAZY",
      heightFt = 6,
      heightIn = 7,
      weight = 288,
      text = "The world's laziest Pokémon. It exerts tremendous power."
    }
  })

  -- #290 Nincada (BUG / GROUND)
  mod.content.pokemon:register("NINCADA", {
    name = "Nincada",
    types = { "BUG", "GROUND" },
    baseStats = {
      hp = 31,
      attack = 45,
      defense = 90,
      speed = 40,
      special = 30, -- Unified Special
      spAtk = 30,
      spDef = 30
    },
    evolutions = {
      { type = "LEVEL", level = 20, target = "NINJASK" },
    },
    learnset = {
      { level = 1, move = "SCRATCH" },
      { level = 1, move = "HARDEN" },
      { level = 14, move = "DIG" },
    },
    dex = 290,
    dexEntry = {
      kind = "TRAINEE",
      heightFt = 1,
      heightIn = 8,
      weight = 12,
      text = "It lives underground for years. It absorbs nutrients from roots."
    }
  })

  -- #291 Ninjask (BUG / FLYING)
  mod.content.pokemon:register("NINJASK", {
    name = "Ninjask",
    types = { "BUG", "FLYING" },
    baseStats = {
      hp = 61,
      attack = 90,
      defense = 45,
      speed = 160,
      special = 50, -- Unified Special
      spAtk = 50,
      spDef = 50
    },
    learnset = {
      { level = 1, move = "SCRATCH" },
      { level = 20, move = "SWORDS_DANCE" },
      { level = 30, move = "X_SCISSOR" },
      { level = 40, move = "U_TURN" },
    },
    dex = 291,
    dexEntry = {
      kind = "NINJA",
      heightFt = 2,
      heightIn = 7,
      weight = 26,
      text = "Because it moves so fast, it can seem invisible."
    }
  })

  -- #292 Shedinja (BUG / GHOST)
  mod.content.pokemon:register("SHEDINJA", {
    name = "Shedinja",
    types = { "BUG", "GHOST" },
    baseStats = {
      hp = 1,
      attack = 90,
      defense = 45,
      speed = 90,
      special = 30, -- Unified Special
      spAtk = 30,
      spDef = 30
    },
    learnset = {
      { level = 1, move = "SCRATCH" },
      { level = 20, move = "SHADOW_SNEAK" },
      { level = 30, move = "X_SCISSOR" },
      { level = 40, move = "PHANTOM_FORCE" },
    },
    dex = 292,
    dexEntry = {
      kind = "SHED",
      heightFt = 3,
      heightIn = 11,
      weight = 3,
      text = "A peculiar Pokémon that floats in air without moving its wings."
    }
  })

  -- #293 Whismur (NORMAL)
  mod.content.pokemon:register("WHISMUR", {
    name = "Whismur",
    types = { "NORMAL" },
    baseStats = {
      hp = 64,
      attack = 51,
      defense = 23,
      speed = 28,
      special = 51, -- Unified Special
      spAtk = 51,
      spDef = 23
    },
    evolutions = {
      { type = "LEVEL", level = 20, target = "LOUDRED" },
    },
    learnset = {
      { level = 1, move = "POUND" },
      { level = 11, move = "ECHOED_VOICE" },
      { level = 21, move = "HYPER_VOICE" },
    },
    dex = 293,
    dexEntry = {
      kind = "WHISPER",
      heightFt = 2,
      heightIn = 0,
      weight = 36,
      text = "Usually its voice is very quiet. If frightened, it cries loudly."
    }
  })

  -- #294 Loudred (NORMAL)
  mod.content.pokemon:register("LOUDRED", {
    name = "Loudred",
    types = { "NORMAL" },
    baseStats = {
      hp = 84,
      attack = 71,
      defense = 43,
      speed = 48,
      special = 71, -- Unified Special
      spAtk = 71,
      spDef = 43
    },
    evolutions = {
      { type = "LEVEL", level = 40, target = "EXPLOUD" },
    },
    learnset = {
      { level = 1, move = "POUND" },
      { level = 11, move = "ECHOED_VOICE" },
      { level = 21, move = "HYPER_VOICE" },
      { level = 29, move = "STOMP" },
    },
    dex = 294,
    dexEntry = {
      kind = "BIG VOICE",
      heightFt = 3,
      heightIn = 3,
      weight = 89,
      text = "It bellows continuously by inhaling air through its ears."
    }
  })

  -- #295 Exploud (NORMAL / SOUND)
  mod.content.pokemon:register("EXPLOUD", {
    name = "Exploud",
    types = { "NORMAL", "SOUND" },
    baseStats = {
      hp = 104,
      attack = 91,
      defense = 63,
      speed = 68,
      special = 91, -- Unified Special
      spAtk = 91,
      spDef = 73
    },
    learnset = {
      { level = 1, move = "POUND" },
      { level = 21, move = "HYPER_VOICE" },
      { level = 40, move = "BOOMBURST" },
      { level = 52, move = "FIRE_BLAST" },
      { level = 62, move = "FOCUS_BLAST" },
    },
    dex = 295,
    dexEntry = {
      kind = "LOUD NOISE",
      heightFt = 4,
      heightIn = 11,
      weight = 185,
      text = "It emits a variety of sounds from the tubes on its body."
    }
  })

  -- #296 Makuhita (FIGHTING)
  mod.content.pokemon:register("MAKUHITA", {
    name = "Makuhita",
    types = { "FIGHTING" },
    baseStats = {
      hp = 72,
      attack = 60,
      defense = 30,
      speed = 25,
      special = 20, -- Unified Special
      spAtk = 20,
      spDef = 30
    },
    evolutions = {
      { type = "LEVEL", level = 24, target = "HARIYAMA" },
    },
    learnset = {
      { level = 1, move = "TACKLE" },
      { level = 10, move = "ARM_THRUST" },
      { level = 19, move = "FORCE_PALM" },
    },
    dex = 296,
    dexEntry = {
      kind = "GUTS",
      heightFt = 3,
      heightIn = 3,
      weight = 190,
      text = "It toughens its body by slamming into big trees."
    }
  })

  -- #297 Hariyama (FIGHTING)
  mod.content.pokemon:register("HARIYAMA", {
    name = "Hariyama",
    types = { "FIGHTING" },
    baseStats = {
      hp = 144,
      attack = 120,
      defense = 60,
      speed = 50,
      special = 40, -- Unified Special
      spAtk = 40,
      spDef = 60
    },
    learnset = {
      { level = 1, move = "TACKLE" },
      { level = 10, move = "ARM_THRUST" },
      { level = 19, move = "FORCE_PALM" },
      { level = 36, move = "CLOSE_COMBAT" },
      { level = 48, move = "HEAVY_SLAM" },
    },
    dex = 297,
    dexEntry = {
      kind = "ARM THRUST",
      heightFt = 7,
      heightIn = 7,
      weight = 559,
      text = "It stomps the ground to build up power before punching."
    }
  })

  -- #298 Azurill (NORMAL / FAIRY)
  mod.content.pokemon:register("AZURILL", {
    name = "Azurill",
    types = { "NORMAL", "FAIRY" },
    baseStats = {
      hp = 50,
      attack = 20,
      defense = 40,
      speed = 20,
      special = 20, -- Unified Special
      spAtk = 20,
      spDef = 40
    },
    evolutions = {
      { type = "FRIENDSHIP", target = "MARILL" },
    },
    learnset = {
      { level = 1, move = "SPLASH" },
      { level = 1, move = "BUBBLE" },
      { level = 7, move = "CHARM" },
    },
    dex = 298,
    dexEntry = {
      kind = "POLKA DOT",
      heightFt = 0,
      heightIn = 8,
      weight = 4,
      text = "A child of Marill. It bounces on its rubbery tail."
    }
  })

  -- #299 Nosepass (ROCK / ELECTRIC)
  mod.content.pokemon:register("NOSEPASS", {
    name = "Nosepass",
    types = { "ROCK", "ELECTRIC" },
    baseStats = {
      hp = 30,
      attack = 45,
      defense = 135,
      speed = 30,
      special = 45, -- Unified Special
      spAtk = 45,
      spDef = 90
    },
    learnset = {
      { level = 1, move = "TACKLE" },
      { level = 1, move = "ROCK_THROW" },
      { level = 22, move = "DISCHARGE" },
      { level = 32, move = "POWER_GEM" },
      { level = 42, move = "STEALTH_ROCK" },
    },
    dex = 299,
    dexEntry = {
      kind = "COMPASS",
      heightFt = 3,
      heightIn = 3,
      weight = 214,
      text = "Its magnetic nose always points north."
    }
  })

  -- #300 Skitty (NORMAL)
  mod.content.pokemon:register("SKITTY", {
    name = "Skitty",
    types = { "NORMAL" },
    baseStats = {
      hp = 50,
      attack = 45,
      defense = 45,
      speed = 50,
      special = 35, -- Unified Special
      spAtk = 35,
      spDef = 35
    },
    evolutions = {
      { type = "ITEM", item = "MOON_STONE", target = "DELCATTY" },
    },
    learnset = {
      { level = 1, move = "TACKLE" },
      { level = 7, move = "SING" },
      { level = 15, move = "DISARMING_VOICE" },
    },
    dex = 300,
    dexEntry = {
      kind = "KITTEN",
      heightFt = 2,
      heightIn = 0,
      weight = 24,
      text = "It chases moving objects. It chases its own tail endlessly."
    }
  })

  -- #301 Delcatty (NORMAL / FAIRY)
  mod.content.pokemon:register("DELCATTY", {
    name = "Delcatty",
    types = { "NORMAL", "FAIRY" },
    baseStats = {
      hp = 70,
      attack = 65,
      defense = 65,
      speed = 90,
      special = 85, -- Unified Special
      spAtk = 85,
      spDef = 65
    },
    learnset = {
      { level = 1, move = "TACKLE" },
      { level = 15, move = "DISARMING_VOICE" },
      { level = 30, move = "MOONBLAST" },
      { level = 42, move = "HYPER_VOICE" },
      { level = 50, move = "WISH" },
    },
    dex = 301,
    dexEntry = {
      kind = "PRIM",
      heightFt = 3,
      heightIn = 7,
      weight = 72,
      text = "It prefers to live at its own relaxed pace."
    }
  })

  -- #302 Sableye (DARK / GHOST)
  mod.content.pokemon:register("SABLEYE", {
    name = "Sableye",
    types = { "DARK", "GHOST" },
    baseStats = {
      hp = 50,
      attack = 75,
      defense = 75,
      speed = 50,
      special = 65, -- Unified Special
      spAtk = 65,
      spDef = 65
    },
    learnset = {
      { level = 1, move = "SCRATCH" },
      { level = 11, move = "SHADOW_SNEAK" },
      { level = 22, move = "KNOCK_OFF" },
      { level = 33, move = "FOUL_PLAY" },
      { level = 44, move = "RECOVER" },
    },
    dex = 302,
    dexEntry = {
      kind = "DARKNESS",
      heightFt = 1,
      heightIn = 8,
      weight = 24,
      text = "It feeds on gems. Its eyes glow in the dark."
    }
  })

  -- #303 Mawile (STEEL / FAIRY)
  mod.content.pokemon:register("MAWILE", {
    name = "Mawile",
    types = { "STEEL", "FAIRY" },
    baseStats = {
      hp = 50,
      attack = 105,
      defense = 100,
      speed = 50,
      special = 55, -- Unified Special
      spAtk = 55,
      spDef = 75
    },
    learnset = {
      { level = 1, move = "BITE" },
      { level = 18, move = "IRON_HEAD" },
      { level = 28, move = "PLAY_ROUGH" },
      { level = 38, move = "SUCKER_PUNCH" },
      { level = 48, move = "SWORDS_DANCE" },
    },
    dex = 303,
    dexEntry = {
      kind = "DECEIVER",
      heightFt = 2,
      heightIn = 0,
      weight = 25,
      text = "Its steel jaws were forged from transformed steel horns."
    }
  })

  -- #304 Aron (STEEL / ROCK)
  mod.content.pokemon:register("ARON", {
    name = "Aron",
    types = { "STEEL", "ROCK" },
    baseStats = {
      hp = 50,
      attack = 70,
      defense = 100,
      speed = 30,
      special = 40, -- Unified Special
      spAtk = 40,
      spDef = 40
    },
    evolutions = {
      { type = "LEVEL", level = 32, target = "LAIRON" },
    },
    learnset = {
      { level = 1, move = "TACKLE" },
      { level = 1, move = "HARDEN" },
      { level = 11, move = "METAL_CLAW" },
      { level = 18, move = "HEADBUTT" },
    },
    dex = 304,
    dexEntry = {
      kind = "IRON ARMOR",
      heightFt = 1,
      heightIn = 4,
      weight = 132,
      text = "It eats iron ore to build its steel body."
    }
  })

  -- #305 Lairon (STEEL / ROCK)
  mod.content.pokemon:register("LAIRON", {
    name = "Lairon",
    types = { "STEEL", "ROCK" },
    baseStats = {
      hp = 60,
      attack = 90,
      defense = 140,
      speed = 40,
      special = 50, -- Unified Special
      spAtk = 50,
      spDef = 50
    },
    evolutions = {
      { type = "LEVEL", level = 42, target = "AGGRON" },
    },
    learnset = {
      { level = 1, move = "TACKLE" },
      { level = 11, move = "METAL_CLAW" },
      { level = 18, move = "HEADBUTT" },
      { level = 35, move = "IRON_HEAD" },
    },
    dex = 305,
    dexEntry = {
      kind = "IRON ARMOR",
      heightFt = 2,
      heightIn = 11,
      weight = 265,
      text = "It marks its territory by gouging trees with its horns."
    }
  })

  -- #306 Aggron (STEEL / ROCK)
  mod.content.pokemon:register("AGGRON", {
    name = "Aggron",
    types = { "STEEL", "ROCK" },
    baseStats = {
      hp = 70,
      attack = 110,
      defense = 180,
      speed = 50,
      special = 60, -- Unified Special
      spAtk = 60,
      spDef = 60
    },
    learnset = {
      { level = 1, move = "TACKLE" },
      { level = 35, move = "IRON_HEAD" },
      { level = 45, move = "STONE_EDGE" },
      { level = 55, move = "HEAVY_SLAM" },
      { level = 65, move = "HEAD_SMASH" },
    },
    dex = 306,
    dexEntry = {
      kind = "IRON ARMOR",
      heightFt = 6,
      heightIn = 11,
      weight = 794,
      text = "It claims a mountain as its domain. It fiercely attacks trespassers."
    }
  })

  -- #307 Meditite (FIGHTING / PSYCHIC)
  mod.content.pokemon:register("MEDITITE", {
    name = "Meditite",
    types = { "FIGHTING", "PSYCHIC" },
    baseStats = {
      hp = 30,
      attack = 40,
      defense = 55,
      speed = 60,
      special = 40, -- Unified Special
      spAtk = 40,
      spDef = 55
    },
    evolutions = {
      { type = "LEVEL", level = 37, target = "MEDICHAM" },
    },
    learnset = {
      { level = 1, move = "MEDITATE" },
      { level = 6, move = "CONFUSION" },
      { level = 18, move = "HIGH_JUMP_KICK" },
    },
    dex = 307,
    dexEntry = {
      kind = "MEDITATE",
      heightFt = 2,
      heightIn = 0,
      weight = 25,
      text = "It eats one berry a day as part of its meditation training."
    }
  })

  -- #308 Medicham (FIGHTING / PSYCHIC)
  mod.content.pokemon:register("MEDICHAM", {
    name = "Medicham",
    types = { "FIGHTING", "PSYCHIC" },
    baseStats = {
      hp = 60,
      attack = 100,
      defense = 75,
      speed = 80,
      special = 60, -- Unified Special
      spAtk = 60,
      spDef = 75
    },
    learnset = {
      { level = 1, move = "MEDITATE" },
      { level = 18, move = "HIGH_JUMP_KICK" },
      { level = 37, move = "ZEN_HEADBUTT" },
      { level = 45, move = "DRAIN_PUNCH" },
    },
    dex = 308,
    dexEntry = {
      kind = "MEDITATE",
      heightFt = 4,
      heightIn = 3,
      weight = 63,
      text = "Through yoga training, it can sense what its foe is thinking."
    }
  })

  -- #309 Electrike (ELECTRIC)
  mod.content.pokemon:register("ELECTRIKE", {
    name = "Electrike",
    types = { "ELECTRIC" },
    baseStats = {
      hp = 40,
      attack = 45,
      defense = 40,
      speed = 65,
      special = 65, -- Unified Special
      spAtk = 65,
      spDef = 40
    },
    evolutions = {
      { type = "LEVEL", level = 26, target = "MANECTRIC" },
    },
    learnset = {
      { level = 1, move = "TACKLE" },
      { level = 4, move = "THUNDERSHOCK" },
      { level = 15, move = "SPARK" },
    },
    dex = 309,
    dexEntry = {
      kind = "LIGHTNING",
      heightFt = 2,
      heightIn = 0,
      weight = 34,
      text = "It stores electricity in its fur. It runs to discharge sparks."
    }
  })

  -- #310 Manectric (ELECTRIC)
  mod.content.pokemon:register("MANECTRIC", {
    name = "Manectric",
    types = { "ELECTRIC" },
    baseStats = {
      hp = 70,
      attack = 75,
      defense = 60,
      speed = 105,
      special = 105, -- Unified Special
      spAtk = 105,
      spDef = 60
    },
    learnset = {
      { level = 1, move = "TACKLE" },
      { level = 15, move = "SPARK" },
      { level = 26, move = "VOLT_SWITCH" },
      { level = 38, move = "THUNDERBOLT" },
      { level = 50, move = "OVERHEAT" },
    },
    dex = 310,
    dexEntry = {
      kind = "DISCHARGE",
      heightFt = 4,
      heightIn = 11,
      weight = 88,
      text = "It rarely appears before humans. It nests where lightning strikes."
    }
  })

  -- #311 Plusle (ELECTRIC)
  mod.content.pokemon:register("PLUSLE", {
    name = "Plusle",
    types = { "ELECTRIC" },
    baseStats = {
      hp = 60,
      attack = 50,
      defense = 40,
      speed = 95,
      special = 85, -- Unified Special
      spAtk = 85,
      spDef = 75
    },
    learnset = {
      { level = 1, move = "THUNDERSHOCK" },
      { level = 1, move = "HELPING_HAND" },
      { level = 15, move = "SPARK" },
      { level = 30, move = "DISCHARGE" },
    },
    dex = 311,
    dexEntry = {
      kind = "CHEERING",
      heightFt = 1,
      heightIn = 4,
      weight = 9,
      text = "It cheers on its partners with pom-poms made of sparks."
    }
  })

  -- #312 Minun (ELECTRIC)
  mod.content.pokemon:register("MINUN", {
    name = "Minun",
    types = { "ELECTRIC" },
    baseStats = {
      hp = 60,
      attack = 40,
      defense = 50,
      speed = 95,
      special = 75, -- Unified Special
      spAtk = 75,
      spDef = 85
    },
    learnset = {
      { level = 1, move = "THUNDERSHOCK" },
      { level = 1, move = "HELPING_HAND" },
      { level = 15, move = "SPARK" },
      { level = 30, move = "DISCHARGE" },
    },
    dex = 312,
    dexEntry = {
      kind = "CHEERING",
      heightFt = 1,
      heightIn = 4,
      weight = 9,
      text = "It absorbs electricity from telephone poles to cheer partners."
    }
  })

  -- #313 Volbeat (BUG / ELECTRIC)
  mod.content.pokemon:register("VOLBEAT", {
    name = "Volbeat",
    types = { "BUG", "ELECTRIC" },
    baseStats = {
      hp = 65,
      attack = 73,
      defense = 75,
      speed = 85,
      special = 47, -- Unified Special
      spAtk = 47,
      spDef = 85
    },
    learnset = {
      { level = 1, move = "TACKLE" },
      { level = 10, move = "CONFUSE_RAY" },
      { level = 20, move = "SIGNAL_BEAM" },
      { level = 30, move = "TAIL_GLOW" },
      { level = 40, move = "DISCHARGE" },
    },
    dex = 313,
    dexEntry = {
      kind = "FIREFLY",
      heightFt = 2,
      heightIn = 4,
      weight = 40,
      text = "It lives near clean ponds. Its tail glows brightly."
    }
  })

  -- #314 Illumise (BUG / FAIRY)
  mod.content.pokemon:register("ILLUMISE", {
    name = "Illumise",
    types = { "BUG", "FAIRY" },
    baseStats = {
      hp = 65,
      attack = 47,
      defense = 75,
      speed = 85,
      special = 73, -- Unified Special
      spAtk = 73,
      spDef = 85
    },
    learnset = {
      { level = 1, move = "TACKLE" },
      { level = 10, move = "CHARM" },
      { level = 20, move = "SIGNAL_BEAM" },
      { level = 30, move = "DAZZLING_GLEAM" },
      { level = 40, move = "BUG_BUZZ" },
    },
    dex = 314,
    dexEntry = {
      kind = "FIREFLY",
      heightFt = 2,
      heightIn = 0,
      weight = 39,
      text = "It guides Volbeat to draw signs in the night sky."
    }
  })

  -- #315 Roselia (GRASS / POISON)
  mod.content.pokemon:register("ROSELIA", {
    name = "Roselia",
    types = { "GRASS", "POISON" },
    baseStats = {
      hp = 50,
      attack = 60,
      defense = 45,
      speed = 65,
      special = 100, -- Unified Special
      spAtk = 100,
      spDef = 80
    },
    learnset = {
      { level = 1, move = "ABSORB" },
      { level = 1, move = "POISON_STING" },
      { level = 20, move = "GIGA_DRAIN" },
      { level = 30, move = "SLUDGE_BOMB" },
      { level = 40, move = "SYNTHESIS" },
    },
    dex = 315,
    dexEntry = {
      kind = "THORN",
      heightFt = 1,
      heightIn = 0,
      weight = 4,
      text = "The thorns on its head contain a deadly poison."
    }
  })

  -- #316 Gulpin (POISON)
  mod.content.pokemon:register("GULPIN", {
    name = "Gulpin",
    types = { "POISON" },
    baseStats = {
      hp = 70,
      attack = 43,
      defense = 53,
      speed = 40,
      special = 43, -- Unified Special
      spAtk = 43,
      spDef = 53
    },
    evolutions = {
      { type = "LEVEL", level = 26, target = "SWALOT" },
    },
    learnset = {
      { level = 1, move = "POUND" },
      { level = 12, move = "SLUDGE" },
      { level = 22, move = "TOXIC" },
    },
    dex = 316,
    dexEntry = {
      kind = "STOMACH",
      heightFt = 1,
      heightIn = 4,
      weight = 23,
      text = "Most of its body is stomach. It can digest anything."
    }
  })

  -- #317 Swalot (POISON)
  mod.content.pokemon:register("SWALOT", {
    name = "Swalot",
    types = { "POISON" },
    baseStats = {
      hp = 100,
      attack = 73,
      defense = 83,
      speed = 55,
      special = 73, -- Unified Special
      spAtk = 73,
      spDef = 83
    },
    learnset = {
      { level = 1, move = "POUND" },
      { level = 12, move = "SLUDGE" },
      { level = 26, move = "SLUDGE_BOMB" },
      { level = 42, move = "GUNK_SHOT" },
    },
    dex = 317,
    dexEntry = {
      kind = "POISON BAG",
      heightFt = 5,
      heightIn = 7,
      weight = 176,
      text = "It swallows anything whole. Its stomach acid is potent."
    }
  })

  -- #318 Carvanha (WATER / DARK)
  mod.content.pokemon:register("CARVANHA", {
    name = "Carvanha",
    types = { "WATER", "DARK" },
    baseStats = {
      hp = 45,
      attack = 90,
      defense = 20,
      speed = 65,
      special = 65, -- Unified Special
      spAtk = 65,
      spDef = 20
    },
    evolutions = {
      { type = "LEVEL", level = 30, target = "SHARPEDO" },
    },
    learnset = {
      { level = 1, move = "BITE" },
      { level = 11, move = "AQUA_JET" },
      { level = 22, move = "CRUNCH" },
    },
    dex = 318,
    dexEntry = {
      kind = "SAVAGE",
      heightFt = 2,
      heightIn = 7,
      weight = 46,
      text = "It attacks in swarms. It can rip apart a ship's hull."
    }
  })

  -- #319 Sharpedo (WATER / DARK)
  mod.content.pokemon:register("SHARPEDO", {
    name = "Sharpedo",
    types = { "WATER", "DARK" },
    baseStats = {
      hp = 70,
      attack = 120,
      defense = 40,
      speed = 95,
      special = 95, -- Unified Special
      spAtk = 95,
      spDef = 40
    },
    learnset = {
      { level = 1, move = "BITE" },
      { level = 11, move = "AQUA_JET" },
      { level = 22, move = "CRUNCH" },
      { level = 36, move = "LIQUIDATION" },
      { level = 48, move = "POISON_JAB" },
    },
    dex = 319,
    dexEntry = {
      kind = "BRUTAL",
      heightFt = 5,
      heightIn = 11,
      weight = 196,
      text = "The brutal bully of the seas. Its skin is covered in denticles."
    }
  })

  -- #320 Wailmer (WATER)
  mod.content.pokemon:register("WAILMER", {
    name = "Wailmer",
    types = { "WATER" },
    baseStats = {
      hp = 130,
      attack = 70,
      defense = 35,
      speed = 60,
      special = 70, -- Unified Special
      spAtk = 70,
      spDef = 35
    },
    evolutions = {
      { type = "LEVEL", level = 40, target = "WAILORD" },
    },
    learnset = {
      { level = 1, move = "SPLASH" },
      { level = 1, move = "WATER_GUN" },
      { level = 18, move = "WATER_PULSE" },
      { level = 32, move = "BODY_SLAM" },
    },
    dex = 320,
    dexEntry = {
      kind = "BALL WHALE",
      heightFt = 6,
      heightIn = 7,
      weight = 287,
      text = "It bounces like a ball when filled with seawater."
    }
  })

  -- #321 Wailord (WATER)
  mod.content.pokemon:register("WAILORD", {
    name = "Wailord",
    types = { "WATER" },
    baseStats = {
      hp = 170,
      attack = 90,
      defense = 45,
      speed = 60,
      special = 90, -- Unified Special
      spAtk = 90,
      spDef = 45
    },
    learnset = {
      { level = 1, move = "SPLASH" },
      { level = 18, move = "WATER_PULSE" },
      { level = 32, move = "BODY_SLAM" },
      { level = 48, move = "HYDRO_PUMP" },
      { level = 60, move = "WATER_SPOUT" },
    },
    dex = 321,
    dexEntry = {
      kind = "FLOAT WHALE",
      heightFt = 47,
      heightIn = 7,
      weight = 877,
      text = "The largest Pokémon ever discovered. It herds prey."
    }
  })

  -- #322 Numel (FIRE / GROUND)
  mod.content.pokemon:register("NUMEL", {
    name = "Numel",
    types = { "FIRE", "GROUND" },
    baseStats = {
      hp = 60,
      attack = 60,
      defense = 40,
      speed = 35,
      special = 65, -- Unified Special
      spAtk = 65,
      spDef = 45
    },
    evolutions = {
      { type = "LEVEL", level = 33, target = "CAMERUPT" },
    },
    learnset = {
      { level = 1, move = "TACKLE" },
      { level = 1, move = "EMBER" },
      { level = 15, move = "BULLDOZE" },
      { level = 26, move = "LAVA_PLUME" },
    },
    dex = 322,
    dexEntry = {
      kind = "NUMB",
      heightFt = 2,
      heightIn = 4,
      weight = 53,
      text = "Magma burns inside its body. It carries heavy loads."
    }
  })

  -- #323 Camerupt (FIRE / GROUND)
  mod.content.pokemon:register("CAMERUPT", {
    name = "Camerupt",
    types = { "FIRE", "GROUND" },
    baseStats = {
      hp = 70,
      attack = 100,
      defense = 70,
      speed = 40,
      special = 105, -- Unified Special
      spAtk = 105,
      spDef = 75
    },
    learnset = {
      { level = 1, move = "TACKLE" },
      { level = 15, move = "BULLDOZE" },
      { level = 33, move = "EARTHQUAKE" },
      { level = 48, move = "ERUPTION" },
      { level = 58, move = "FIRE_BLAST" },
    },
    dex = 323,
    dexEntry = {
      kind = "ERUPTION",
      heightFt = 6,
      heightIn = 3,
      weight = 485,
      text = "If angered, the humps on its back erupt into flames."
    }
  })

  -- #324 Torkoal (FIRE / ROCK)
  mod.content.pokemon:register("TORKOAL", {
    name = "Torkoal",
    types = { "FIRE", "ROCK" },
    baseStats = {
      hp = 70,
      attack = 85,
      defense = 140,
      speed = 20,
      special = 85, -- Unified Special
      spAtk = 85,
      spDef = 70
    },
    learnset = {
      { level = 1, move = "EMBER" },
      { level = 1, move = "SMOG" },
      { level = 15, move = "RAPID_SPIN" },
      { level = 27, move = "LAVA_PLUME" },
      { level = 38, move = "STEALTH_ROCK" },
      { level = 50, move = "OVERHEAT" },
    },
    dex = 324,
    dexEntry = {
      kind = "COAL",
      heightFt = 1,
      heightIn = 8,
      weight = 177,
      text = "It burns coal inside its shell for energy."
    }
  })

  -- #325 Spoink (PSYCHIC)
  mod.content.pokemon:register("SPOINK", {
    name = "Spoink",
    types = { "PSYCHIC" },
    baseStats = {
      hp = 60,
      attack = 25,
      defense = 35,
      speed = 60,
      special = 70, -- Unified Special
      spAtk = 70,
      spDef = 80
    },
    evolutions = {
      { type = "LEVEL", level = 32, target = "GRUMPIG" },
    },
    learnset = {
      { level = 1, move = "SPLASH" },
      { level = 14, move = "PSYBEAM" },
      { level = 22, move = "CONFUSE_RAY" },
    },
    dex = 325,
    dexEntry = {
      kind = "BOUNCING",
      heightFt = 2,
      heightIn = 4,
      weight = 68,
      text = "It bounces on its tail to keep its heart pumping."
    }
  })

  -- #326 Grumpig (PSYCHIC)
  mod.content.pokemon:register("GRUMPIG", {
    name = "Grumpig",
    types = { "PSYCHIC" },
    baseStats = {
      hp = 80,
      attack = 45,
      defense = 65,
      speed = 80,
      special = 90, -- Unified Special
      spAtk = 90,
      spDef = 110
    },
    learnset = {
      { level = 14, move = "PSYBEAM" },
      { level = 22, move = "CONFUSE_RAY" },
      { level = 32, move = "PSYCHIC" },
      { level = 44, move = "CALM_MIND" },
    },
    dex = 326,
    dexEntry = {
      kind = "MANIPULATE",
      heightFt = 2,
      heightIn = 11,
      weight = 157,
      text = "It performs odd dances to control foes with psychic power."
    }
  })

  -- #327 Spinda (NORMAL)
  mod.content.pokemon:register("SPINDA", {
    name = "Spinda",
    types = { "NORMAL" },
    baseStats = {
      hp = 60,
      attack = 60,
      defense = 60,
      speed = 60,
      special = 60, -- Unified Special
      spAtk = 60,
      spDef = 60
    },
    learnset = {
      { level = 1, move = "TACKLE" },
      { level = 10, move = "TEETER_DANCE" },
      { level = 25, move = "HYPER_VOICE" },
      { level = 35, move = "SUCKER_PUNCH" },
    },
    dex = 327,
    dexEntry = {
      kind = "SPOT PANDA",
      heightFt = 3,
      heightIn = 7,
      weight = 11,
      text = "No two Spinda have the same spot patterns."
    }
  })

  -- #328 Trapinch (GROUND)
  mod.content.pokemon:register("TRAPINCH", {
    name = "Trapinch",
    types = { "GROUND" },
    baseStats = {
      hp = 45,
      attack = 100,
      defense = 45,
      speed = 10,
      special = 45, -- Unified Special
      spAtk = 45,
      spDef = 45
    },
    evolutions = {
      { type = "LEVEL", level = 35, target = "VIBRAVA" },
    },
    learnset = {
      { level = 1, move = "BITE" },
      { level = 12, move = "DIG" },
      { level = 28, move = "EARTHQUAKE" },
    },
    dex = 328,
    dexEntry = {
      kind = "ANT PIT",
      heightFt = 2,
      heightIn = 4,
      weight = 31,
      text = "It builds a bowl-shaped pit in sand and waits for prey."
    }
  })

  -- #329 Vibrava (GROUND / DRAGON)
  mod.content.pokemon:register("VIBRAVA", {
    name = "Vibrava",
    types = { "GROUND", "DRAGON" },
    baseStats = {
      hp = 50,
      attack = 70,
      defense = 50,
      speed = 70,
      special = 50, -- Unified Special
      spAtk = 50,
      spDef = 50
    },
    evolutions = {
      { type = "LEVEL", level = 45, target = "FLYGON" },
    },
    learnset = {
      { level = 1, move = "BITE" },
      { level = 12, move = "DRAGON_BREATH" },
      { level = 35, move = "EARTHQUAKE" },
      { level = 40, move = "U_TURN" },
    },
    dex = 329,
    dexEntry = {
      kind = "VIBRATION",
      heightFt = 3,
      heightIn = 7,
      weight = 34,
      text = "It vibrates its wings to generate ultrasonic waves."
    }
  })

  -- #330 Flygon (GROUND / DRAGON)
  mod.content.pokemon:register("FLYGON", {
    name = "Flygon",
    types = { "GROUND", "DRAGON" },
    baseStats = {
      hp = 80,
      attack = 100,
      defense = 80,
      speed = 100,
      special = 80, -- Unified Special
      spAtk = 80,
      spDef = 80
    },
    learnset = {
      { level = 1, move = "BITE" },
      { level = 35, move = "DRAGON_CLAW" },
      { level = 45, move = "EARTHQUAKE" },
      { level = 52, move = "U_TURN" },
      { level = 60, move = "DRAGON_DANCE" },
    },
    dex = 330,
    dexEntry = {
      kind = "MYSTIC",
      heightFt = 6,
      heightIn = 7,
      weight = 181,
      text = "It whips up a sandstorm with its wings to hide."
    }
  })

  -- #331 Cacnea (GRASS)
  mod.content.pokemon:register("CACNEA", {
    name = "Cacnea",
    types = { "GRASS" },
    baseStats = {
      hp = 50,
      attack = 85,
      defense = 40,
      speed = 35,
      special = 85, -- Unified Special
      spAtk = 85,
      spDef = 40
    },
    evolutions = {
      { type = "LEVEL", level = 32, target = "CACTURNE" },
    },
    learnset = {
      { level = 1, move = "POISON_STING" },
      { level = 13, move = "NEEDLE_ARM" },
      { level = 22, move = "SUCKER_PUNCH" },
    },
    dex = 331,
    dexEntry = {
      kind = "CACTUS",
      heightFt = 1,
      heightIn = 4,
      weight = 113,
      text = "It prefers dry deserts. Its flower releases a strong scent."
    }
  })

  -- #332 Cacturne (GRASS / DARK)
  mod.content.pokemon:register("CACTURNE", {
    name = "Cacturne",
    types = { "GRASS", "DARK" },
    baseStats = {
      hp = 70,
      attack = 115,
      defense = 60,
      speed = 55,
      special = 115, -- Unified Special
      spAtk = 115,
      spDef = 60
    },
    learnset = {
      { level = 13, move = "NEEDLE_ARM" },
      { level = 22, move = "SUCKER_PUNCH" },
      { level = 32, move = "SEED_BOMB" },
      { level = 44, move = "DARK_PULSE" },
    },
    dex = 332,
    dexEntry = {
      kind = "CACTUS",
      heightFt = 4,
      heightIn = 3,
      weight = 173,
      text = "It becomes active at night to hunt desert travelers."
    }
  })

  -- #333 Swablu (NORMAL / FLYING)
  mod.content.pokemon:register("SWABLU", {
    name = "Swablu",
    types = { "NORMAL", "FLYING" },
    baseStats = {
      hp = 45,
      attack = 40,
      defense = 60,
      speed = 50,
      special = 40, -- Unified Special
      spAtk = 40,
      spDef = 75
    },
    evolutions = {
      { type = "LEVEL", level = 35, target = "ALTARIA" },
    },
    learnset = {
      { level = 1, move = "PECK" },
      { level = 11, move = "SING" },
      { level = 20, move = "DISARMING_VOICE" },
    },
    dex = 333,
    dexEntry = {
      kind = "COTTON BIRD",
      heightFt = 1,
      heightIn = 4,
      weight = 3,
      text = "It constantly grooms its cottony wings."
    }
  })

  -- #334 Altaria (DRAGON / FAIRY)
  mod.content.pokemon:register("ALTARIA", {
    name = "Altaria",
    types = { "DRAGON", "FAIRY" },
    baseStats = {
      hp = 75,
      attack = 70,
      defense = 90,
      speed = 80,
      special = 70, -- Unified Special
      spAtk = 70,
      spDef = 105
    },
    learnset = {
      { level = 1, move = "PECK" },
      { level = 35, move = "DRAGON_PULSE" },
      { level = 45, move = "MOONBLAST" },
      { level = 52, move = "ROOST" },
      { level = 60, move = "DRAGON_DANCE" },
    },
    dex = 334,
    dexEntry = {
      kind = "HUMMING",
      heightFt = 3,
      heightIn = 7,
      weight = 45,
      text = "It hums in a beautiful soprano voice when flying."
    }
  })

  -- #335 Zangoose (NORMAL / FIGHTING)
  mod.content.pokemon:register("ZANGOOSE", {
    name = "Zangoose",
    types = { "NORMAL", "FIGHTING" },
    baseStats = {
      hp = 73,
      attack = 115,
      defense = 60,
      speed = 90,
      special = 60, -- Unified Special
      spAtk = 60,
      spDef = 60
    },
    learnset = {
      { level = 1, move = "SCRATCH" },
      { level = 8, move = "QUICK_ATTACK" },
      { level = 32, move = "CLOSE_COMBAT" },
      { level = 42, move = "KNOCK_OFF" },
    },
    dex = 335,
    dexEntry = {
      kind = "CAT FERRET",
      heightFt = 4,
      heightIn = 3,
      weight = 89,
      text = "Its rival is Seviper. Memories of battles are etched into its fur."
    }
  })

  -- #336 Seviper (POISON / DARK)
  mod.content.pokemon:register("SEVIPER", {
    name = "Seviper",
    types = { "POISON", "DARK" },
    baseStats = {
      hp = 73,
      attack = 100,
      defense = 60,
      speed = 65,
      special = 100, -- Unified Special
      spAtk = 100,
      spDef = 60
    },
    learnset = {
      { level = 1, move = "WRAP" },
      { level = 10, move = "POISON_TAIL" },
      { level = 28, move = "POISON_JAB" },
      { level = 38, move = "CRUNCH" },
    },
    dex = 336,
    dexEntry = {
      kind = "FANG SNAKE",
      heightFt = 8,
      heightIn = 10,
      weight = 116,
      text = "It sharpens its swordlike tail on rocks when hunting."
    }
  })

  -- #337 Lunatone (ROCK / PSYCHIC)
  mod.content.pokemon:register("LUNATONE", {
    name = "Lunatone",
    types = { "ROCK", "PSYCHIC" },
    baseStats = {
      hp = 90,
      attack = 55,
      defense = 65,
      speed = 70,
      special = 95, -- Unified Special
      spAtk = 95,
      spDef = 85
    },
    learnset = {
      { level = 1, move = "TACKLE" },
      { level = 1, move = "CONFUSION" },
      { level = 13, move = "ROCK_THROW" },
      { level = 35, move = "PSYCHIC" },
      { level = 45, move = "MOONBLAST" },
    },
    dex = 337,
    dexEntry = {
      kind = "METEOR",
      heightFt = 3,
      heightIn = 3,
      weight = 370,
      text = "It becomes active during the full moon."
    }
  })

  -- #338 Solrock (ROCK / PSYCHIC)
  mod.content.pokemon:register("SOLROCK", {
    name = "Solrock",
    types = { "ROCK", "PSYCHIC" },
    baseStats = {
      hp = 90,
      attack = 95,
      defense = 85,
      speed = 70,
      special = 55, -- Unified Special
      spAtk = 55,
      spDef = 65
    },
    learnset = {
      { level = 1, move = "TACKLE" },
      { level = 1, move = "CONFUSION" },
      { level = 13, move = "ROCK_THROW" },
      { level = 35, move = "PSYCHIC" },
      { level = 45, move = "MORNING_SUN" },
    },
    dex = 338,
    dexEntry = {
      kind = "METEOR",
      heightFt = 3,
      heightIn = 11,
      weight = 339,
      text = "Solar energy is the source of its power."
    }
  })

  -- #339 Barboach (WATER / GROUND)
  mod.content.pokemon:register("BARBOACH", {
    name = "Barboach",
    types = { "WATER", "GROUND" },
    baseStats = {
      hp = 50,
      attack = 48,
      defense = 43,
      speed = 60,
      special = 46, -- Unified Special
      spAtk = 46,
      spDef = 41
    },
    evolutions = {
      { type = "LEVEL", level = 30, target = "WHISCASH" },
    },
    learnset = {
      { level = 1, move = "MUD_SLAP" },
      { level = 6, move = "WATER_GUN" },
      { level = 20, move = "AQUA_TAIL" },
    },
    dex = 339,
    dexEntry = {
      kind = "WHISKER",
      heightFt = 1,
      heightIn = 4,
      weight = 62,
      text = "Its whiskers act as sensitive radar."
    }
  })

  -- #340 Whiscash (WATER / GROUND)
  mod.content.pokemon:register("WHISCASH", {
    name = "Whiscash",
    types = { "WATER", "GROUND" },
    baseStats = {
      hp = 110,
      attack = 78,
      defense = 73,
      speed = 60,
      special = 76, -- Unified Special
      spAtk = 76,
      spDef = 71
    },
    learnset = {
      { level = 1, move = "MUD_SLAP" },
      { level = 20, move = "AQUA_TAIL" },
      { level = 30, move = "EARTHQUAKE" },
      { level = 45, move = "DRAGON_DANCE" },
    },
    dex = 340,
    dexEntry = {
      kind = "WHISKER",
      heightFt = 2,
      heightIn = 11,
      weight = 520,
      text = "It makes its nest at the bottom of swamps."
    }
  })

  -- #341 Corphish (WATER)
  mod.content.pokemon:register("CORPHISH", {
    name = "Corphish",
    types = { "WATER" },
    baseStats = {
      hp = 43,
      attack = 80,
      defense = 65,
      speed = 35,
      special = 50, -- Unified Special
      spAtk = 50,
      spDef = 35
    },
    evolutions = {
      { type = "LEVEL", level = 30, target = "CRAWDAUNT" },
    },
    learnset = {
      { level = 1, move = "BUBBLE" },
      { level = 7, move = "VICEGRIP" },
      { level = 20, move = "NIGHT_SLASH" },
    },
    dex = 341,
    dexEntry = {
      kind = "RUFFIAN",
      heightFt = 2,
      heightIn = 0,
      weight = 25,
      text = "It was brought from abroad as a pet."
    }
  })

  -- #342 Crawdaunt (WATER / DARK)
  mod.content.pokemon:register("CRAWDAUNT", {
    name = "Crawdaunt",
    types = { "WATER", "DARK" },
    baseStats = {
      hp = 63,
      attack = 120,
      defense = 85,
      speed = 55,
      special = 90, -- Unified Special
      spAtk = 90,
      spDef = 55
    },
    learnset = {
      { level = 1, move = "BUBBLE" },
      { level = 20, move = "NIGHT_SLASH" },
      { level = 30, move = "CRUNCH" },
      { level = 45, move = "DRAGON_DANCE" },
      { level = 55, move = "LIQUIDATION" },
    },
    dex = 342,
    dexEntry = {
      kind = "ROGUE",
      heightFt = 3,
      heightIn = 7,
      weight = 72,
      text = "A ruffian that uses its pincers to toss foes out of its pond."
    }
  })

  -- #343 Baltoy (GROUND / PSYCHIC)
  mod.content.pokemon:register("BALTOY", {
    name = "Baltoy",
    types = { "GROUND", "PSYCHIC" },
    baseStats = {
      hp = 40,
      attack = 40,
      defense = 55,
      speed = 55,
      special = 40, -- Unified Special
      spAtk = 40,
      spDef = 70
    },
    evolutions = {
      { type = "LEVEL", level = 36, target = "CLAYDOL" },
    },
    learnset = {
      { level = 1, move = "RAPID_SPIN" },
      { level = 7, move = "MUD_SLAP" },
      { level = 18, move = "PSYBEAM" },
    },
    dex = 343,
    dexEntry = {
      kind = "CLAY DOLL",
      heightFt = 1,
      heightIn = 8,
      weight = 47,
      text = "It moves by spinning on its single foot."
    }
  })

  -- #344 Claydol (GROUND / PSYCHIC)
  mod.content.pokemon:register("CLAYDOL", {
    name = "Claydol",
    types = { "GROUND", "PSYCHIC" },
    baseStats = {
      hp = 60,
      attack = 70,
      defense = 105,
      speed = 75,
      special = 70, -- Unified Special
      spAtk = 70,
      spDef = 120
    },
    learnset = {
      { level = 1, move = "RAPID_SPIN" },
      { level = 7, move = "MUD_SLAP" },
      { level = 36, move = "EARTH_POWER" },
      { level = 48, move = "PSYCHIC" },
    },
    dex = 344,
    dexEntry = {
      kind = "CLAY DOLL",
      heightFt = 4,
      heightIn = 11,
      weight = 238,
      text = "An ancient clay figurine that came to life."
    }
  })

  -- #345 Lileep (ROCK / GRASS)
  mod.content.pokemon:register("LILEEP", {
    name = "Lileep",
    types = { "ROCK", "GRASS" },
    baseStats = {
      hp = 66,
      attack = 41,
      defense = 77,
      speed = 23,
      special = 61, -- Unified Special
      spAtk = 61,
      spDef = 87
    },
    evolutions = {
      { type = "LEVEL", level = 40, target = "CRADILY" },
    },
    learnset = {
      { level = 1, move = "ASTONISH" },
      { level = 8, move = "ACID" },
      { level = 24, move = "GIGA_DRAIN" },
    },
    dex = 345,
    dexEntry = {
      kind = "SEA LILY",
      heightFt = 3,
      heightIn = 3,
      weight = 52,
      text = "It became extinct 100 million years ago."
    }
  })

  -- #346 Cradily (ROCK / GRASS)
  mod.content.pokemon:register("CRADILY", {
    name = "Cradily",
    types = { "ROCK", "GRASS" },
    baseStats = {
      hp = 86,
      attack = 81,
      defense = 97,
      speed = 43,
      special = 81, -- Unified Special
      spAtk = 81,
      spDef = 107
    },
    learnset = {
      { level = 1, move = "ASTONISH" },
      { level = 24, move = "GIGA_DRAIN" },
      { level = 40, move = "ROCK_SLIDE" },
      { level = 52, move = "RECOVER" },
    },
    dex = 346,
    dexEntry = {
      kind = "BARNACLE",
      heightFt = 4,
      heightIn = 11,
      weight = 133,
      text = "It drags its heavy body along the seafloor."
    }
  })

  -- #347 Anorith (ROCK / BUG)
  mod.content.pokemon:register("ANORITH", {
    name = "Anorith",
    types = { "ROCK", "BUG" },
    baseStats = {
      hp = 45,
      attack = 95,
      defense = 50,
      speed = 75,
      special = 40, -- Unified Special
      spAtk = 40,
      spDef = 50
    },
    evolutions = {
      { type = "LEVEL", level = 40, target = "ARMALDO" },
    },
    learnset = {
      { level = 1, move = "SCRATCH" },
      { level = 10, move = "BUG_BITE" },
      { level = 22, move = "ROCK_TOMB" },
    },
    dex = 347,
    dexEntry = {
      kind = "OLD SHRIMP",
      heightFt = 2,
      heightIn = 4,
      weight = 28,
      text = "It is a ancestor of bug Pokémon."
    }
  })

  -- #348 Armaldo (ROCK / BUG)
  mod.content.pokemon:register("ARMALDO", {
    name = "Armaldo",
    types = { "ROCK", "BUG" },
    baseStats = {
      hp = 75,
      attack = 125,
      defense = 100,
      speed = 45,
      special = 70, -- Unified Special
      spAtk = 70,
      spDef = 80
    },
    learnset = {
      { level = 1, move = "SCRATCH" },
      { level = 22, move = "ROCK_TOMB" },
      { level = 40, move = "X_SCISSOR" },
      { level = 52, move = "AQUA_TAIL" },
    },
    dex = 348,
    dexEntry = {
      kind = "PLATE",
      heightFt = 4,
      heightIn = 11,
      weight = 150,
      text = "Its tough armor protects it from any attack."
    }
  })

  -- #349 Feebas (WATER)
  mod.content.pokemon:register("FEEBAS", {
    name = "Feebas",
    types = { "WATER" },
    baseStats = {
      hp = 20,
      attack = 15,
      defense = 20,
      speed = 80,
      special = 10, -- Unified Special
      spAtk = 10,
      spDef = 55
    },
    evolutions = {
      { type = "BEAUTY", target = "MILOTIC" },
    },
    learnset = {
      { level = 1, move = "SPLASH" },
      { level = 15, move = "TACKLE" },
    },
    dex = 349,
    dexEntry = {
      kind = "FISH",
      heightFt = 2,
      heightIn = 0,
      weight = 16,
      text = "It is famous for being the shabbiest Pokémon."
    }
  })

  -- #350 Milotic (WATER / FAIRY)
  mod.content.pokemon:register("MILOTIC", {
    name = "Milotic",
    types = { "WATER", "FAIRY" },
    baseStats = {
      hp = 95,
      attack = 60,
      defense = 79,
      speed = 81,
      special = 100, -- Unified Special
      spAtk = 100,
      spDef = 125
    },
    learnset = {
      { level = 1, move = "WATER_GUN" },
      { level = 15, move = "DISARMING_VOICE" },
      { level = 30, move = "RECOVER" },
      { level = 42, move = "SCALD" },
      { level = 54, move = "MOONBLAST" },
    },
    dex = 350,
    dexEntry = {
      kind = "TENDER",
      heightFt = 20,
      heightIn = 4,
      weight = 357,
      text = "Said to be the most beautiful of all Pokémon."
    }
  })

  -- #351 Castform (NORMAL)
  mod.content.pokemon:register("CASTFORM", {
    name = "Castform",
    types = { "NORMAL" },
    baseStats = {
      hp = 70,
      attack = 70,
      defense = 70,
      speed = 70,
      special = 70, -- Unified Special
      spAtk = 70,
      spDef = 70
    },
    learnset = {
      { level = 1, move = "TACKLE" },
      { level = 10, move = "WEATHER_BALL" },
      { level = 20, move = "SUNNY_DAY" },
      { level = 20, move = "RAIN_DANCE" },
    },
    dex = 351,
    dexEntry = {
      kind = "WEATHER",
      heightFt = 1,
      heightIn = 0,
      weight = 2,
      text = "Its appearance changes with the weather."
    }
  })

  -- #352 Kecleon (NORMAL)
  mod.content.pokemon:register("KECLEON", {
    name = "Kecleon",
    types = { "NORMAL" },
    baseStats = {
      hp = 60,
      attack = 90,
      defense = 70,
      speed = 40,
      special = 60, -- Unified Special
      spAtk = 60,
      spDef = 120
    },
    learnset = {
      { level = 1, move = "SCRATCH" },
      { level = 14, move = "FEINT_ATTACK" },
      { level = 24, move = "SHADOW_SNEAK" },
      { level = 36, move = "SUCKER_PUNCH" },
    },
    dex = 352,
    dexEntry = {
      kind = "COLOR SWAP",
      heightFt = 3,
      heightIn = 3,
      weight = 48,
      text = "It changes body color to blend into its surroundings."
    }
  })

  -- #353 Shuppet (GHOST)
  mod.content.pokemon:register("SHUPPET", {
    name = "Shuppet",
    types = { "GHOST" },
    baseStats = {
      hp = 44,
      attack = 75,
      defense = 35,
      speed = 45,
      special = 63, -- Unified Special
      spAtk = 63,
      spDef = 33
    },
    evolutions = {
      { type = "LEVEL", level = 37, target = "BANETTE" },
    },
    learnset = {
      { level = 1, move = "KNOCK_OFF" },
      { level = 13, move = "NIGHT_SHADE" },
      { level = 28, move = "SHADOW_BALL" },
    },
    dex = 353,
    dexEntry = {
      kind = "PUPPET",
      heightFt = 2,
      heightIn = 0,
      weight = 5,
      text = "It feeds on feelings of hatred and envy."
    }
  })

  -- #354 Banette (GHOST / DARK)
  mod.content.pokemon:register("BANETTE", {
    name = "Banette",
    types = { "GHOST", "DARK" },
    baseStats = {
      hp = 64,
      attack = 115,
      defense = 65,
      speed = 65,
      special = 83, -- Unified Special
      spAtk = 83,
      spDef = 63
    },
    learnset = {
      { level = 1, move = "KNOCK_OFF" },
      { level = 28, move = "SHADOW_BALL" },
      { level = 37, move = "WILL_O_WISP" },
      { level = 48, move = "SUCKER_PUNCH" },
    },
    dex = 354,
    dexEntry = {
      kind = "MARIONETTE",
      heightFt = 3,
      heightIn = 7,
      weight = 28,
      text = "A plush doll that was thrown away and became a Pokémon."
    }
  })

  -- #355 Duskull (GHOST)
  mod.content.pokemon:register("DUSKULL", {
    name = "Duskull",
    types = { "GHOST" },
    baseStats = {
      hp = 20,
      attack = 40,
      defense = 90,
      speed = 25,
      special = 30, -- Unified Special
      spAtk = 30,
      spDef = 90
    },
    evolutions = {
      { type = "LEVEL", level = 37, target = "DUSCLOPS" },
    },
    learnset = {
      { level = 1, move = "NIGHT_SHADE" },
      { level = 12, move = "WILL_O_WISP" },
      { level = 26, move = "SHADOW_BALL" },
    },
    dex = 355,
    dexEntry = {
      kind = "REQUIEM",
      heightFt = 2,
      heightIn = 7,
      weight = 33,
      text = "It loves the crying of children."
    }
  })

  -- #356 Dusclops (GHOST / FIGHTING)
  mod.content.pokemon:register("DUSCLOPS", {
    name = "Dusclops",
    types = { "GHOST", "FIGHTING" },
    baseStats = {
      hp = 40,
      attack = 70,
      defense = 130,
      speed = 25,
      special = 60, -- Unified Special
      spAtk = 60,
      spDef = 130
    },
    learnset = {
      { level = 1, move = "NIGHT_SHADE" },
      { level = 12, move = "WILL_O_WISP" },
      { level = 37, move = "SHADOW_PUNCH" },
      { level = 48, move = "PAIN_SPLIT" },
    },
    dex = 356,
    dexEntry = {
      kind = "BECKON",
      heightFt = 5,
      heightIn = 3,
      weight = 67,
      text = "Its body is completely hollow inside."
    }
  })

  -- #357 Tropius (GRASS / FLYING)
  mod.content.pokemon:register("TROPIUS", {
    name = "Tropius",
    types = { "GRASS", "FLYING" },
    baseStats = {
      hp = 99,
      attack = 68,
      defense = 83,
      speed = 51,
      special = 72, -- Unified Special
      spAtk = 72,
      spDef = 87
    },
    learnset = {
      { level = 1, move = "GUST" },
      { level = 10, move = "RAZOR_LEAF" },
      { level = 30, move = "AIR_SLASH" },
      { level = 42, move = "ROOST" },
      { level = 54, move = "SOLAR_BEAM" },
    },
    dex = 357,
    dexEntry = {
      kind = "FRUIT",
      heightFt = 6,
      heightIn = 7,
      weight = 221,
      text = "Delicious fruit grows around its neck."
    }
  })

  -- #358 Chimecho (PSYCHIC)
  mod.content.pokemon:register("CHIMECHO", {
    name = "Chimecho",
    types = { "PSYCHIC" },
    baseStats = {
      hp = 75,
      attack = 50,
      defense = 70,
      speed = 65,
      special = 95, -- Unified Special
      spAtk = 95,
      spDef = 90
    },
    learnset = {
      { level = 1, move = "WRAP" },
      { level = 15, move = "HEAL_BELL" },
      { level = 32, move = "PSYCHIC" },
      { level = 42, move = "RECOVER" },
    },
    dex = 358,
    dexEntry = {
      kind = "WIND CHIME",
      heightFt = 2,
      heightIn = 0,
      weight = 2,
      text = "Its high-pitched cries echo inside its hollow body."
    }
  })

  -- #359 Absol (DARK)
  mod.content.pokemon:register("ABSOL", {
    name = "Absol",
    types = { "DARK" },
    baseStats = {
      hp = 65,
      attack = 130,
      defense = 60,
      speed = 75,
      special = 75, -- Unified Special
      spAtk = 75,
      spDef = 60
    },
    learnset = {
      { level = 1, move = "SCRATCH" },
      { level = 12, move = "FEINT_ATTACK" },
      { level = 25, move = "SWORDS_DANCE" },
      { level = 38, move = "SUCKER_PUNCH" },
      { level = 48, move = "NIGHT_SLASH" },
    },
    dex = 359,
    dexEntry = {
      kind = "DISASTER",
      heightFt = 3,
      heightIn = 11,
      weight = 104,
      text = "It appears before humans only to warn of natural disasters."
    }
  })

  -- #360 Wynaut (PSYCHIC)
  mod.content.pokemon:register("WYNAUT", {
    name = "Wynaut",
    types = { "PSYCHIC" },
    baseStats = {
      hp = 95,
      attack = 23,
      defense = 48,
      speed = 23,
      special = 23, -- Unified Special
      spAtk = 23,
      spDef = 48
    },
    evolutions = {
      { type = "LEVEL", level = 15, target = "WOBBUFFET" },
    },
    learnset = {
      { level = 1, move = "COUNTER" },
      { level = 1, move = "MIRROR_COAT" },
      { level = 1, move = "ENCORE" },
    },
    dex = 360,
    dexEntry = {
      kind = "BRIGHT",
      heightFt = 2,
      heightIn = 0,
      weight = 31,
      text = "It loves sweet fruit. It gathers in groups in caves."
    }
  })

  -- #361 Snorunt (ICE)
  mod.content.pokemon:register("SNORUNT", {
    name = "Snorunt",
    types = { "ICE" },
    baseStats = {
      hp = 50,
      attack = 50,
      defense = 50,
      speed = 50,
      special = 50, -- Unified Special
      spAtk = 50,
      spDef = 50
    },
    evolutions = {
      { type = "LEVEL", level = 42, target = "GLALIE" },
    },
    learnset = {
      { level = 1, move = "POWDER_SNOW" },
      { level = 10, move = "ICE_SHARD" },
      { level = 22, move = "ICICLE_SPEAR" },
    },
    dex = 361,
    dexEntry = {
      kind = "SNOW HAT",
      heightFt = 2,
      heightIn = 4,
      weight = 37,
      text = "It is said that several Snorunt bring prosperity to a house."
    }
  })

  -- #362 Glalie (ICE / DARK)
  mod.content.pokemon:register("GLALIE", {
    name = "Glalie",
    types = { "ICE", "DARK" },
    baseStats = {
      hp = 80,
      attack = 80,
      defense = 80,
      speed = 80,
      special = 80, -- Unified Special
      spAtk = 80,
      spDef = 80
    },
    learnset = {
      { level = 1, move = "POWDER_SNOW" },
      { level = 10, move = "ICE_SHARD" },
      { level = 42, move = "CRUNCH" },
      { level = 52, move = "FREEZE_DRY" },
    },
    dex = 362,
    dexEntry = {
      kind = "FACE",
      heightFt = 4,
      heightIn = 11,
      weight = 565,
      text = "It freezes moisture in the air to make an armor of ice."
    }
  })

  -- #363 Spheal (ICE / WATER)
  mod.content.pokemon:register("SPHEAL", {
    name = "Spheal",
    types = { "ICE", "WATER" },
    baseStats = {
      hp = 70,
      attack = 40,
      defense = 50,
      speed = 55,
      special = 55, -- Unified Special
      spAtk = 55,
      spDef = 50
    },
    evolutions = {
      { type = "LEVEL", level = 32, target = "SEALEO" },
    },
    learnset = {
      { level = 1, move = "WATER_GUN" },
      { level = 10, move = "ICE_BALL" },
      { level = 20, move = "AURORA_BEAM" },
    },
    dex = 363,
    dexEntry = {
      kind = "CLAP",
      heightFt = 2,
      heightIn = 7,
      weight = 87,
      text = "It rolls across ice floes because its body is so round."
    }
  })

  -- #364 Sealeo (ICE / WATER)
  mod.content.pokemon:register("SEALEO", {
    name = "Sealeo",
    types = { "ICE", "WATER" },
    baseStats = {
      hp = 90,
      attack = 60,
      defense = 70,
      speed = 75,
      special = 75, -- Unified Special
      spAtk = 75,
      spDef = 70
    },
    evolutions = {
      { type = "LEVEL", level = 44, target = "WALREIN" },
    },
    learnset = {
      { level = 1, move = "WATER_GUN" },
      { level = 10, move = "ICE_BALL" },
      { level = 20, move = "AURORA_BEAM" },
      { level = 32, move = "BODY_SLAM" },
    },
    dex = 364,
    dexEntry = {
      kind = "BALL ROLL",
      heightFt = 3,
      heightIn = 7,
      weight = 193,
      text = "It touches new objects with its nose to test them."
    }
  })

  -- #365 Walrein (ICE / WATER)
  mod.content.pokemon:register("WALREIN", {
    name = "Walrein",
    types = { "ICE", "WATER" },
    baseStats = {
      hp = 110,
      attack = 80,
      defense = 90,
      speed = 65,
      special = 95, -- Unified Special
      spAtk = 95,
      spDef = 90
    },
    learnset = {
      { level = 1, move = "WATER_GUN" },
      { level = 32, move = "BODY_SLAM" },
      { level = 44, move = "ICE_BEAM" },
      { level = 56, move = "SURF" },
    },
    dex = 365,
    dexEntry = {
      kind = "ICE TUSK",
      heightFt = 4,
      heightIn = 7,
      weight = 332,
      text = "Its huge tusks can shatter 10-ton icebergs."
    }
  })

  -- #366 Clamperl (WATER)
  mod.content.pokemon:register("CLAMPERL", {
    name = "Clamperl",
    types = { "WATER" },
    baseStats = {
      hp = 35,
      attack = 64,
      defense = 85,
      speed = 32,
      special = 74, -- Unified Special
      spAtk = 74,
      spDef = 55
    },
    evolutions = {
      { type = "ITEM", item = "WATER_STONE", target = "HUNTAIL" },
    },
    learnset = {
      { level = 1, move = "WATER_GUN" },
      { level = 10, move = "IRON_DEFENSE" },
      { level = 30, move = "SHELL_SMASH" },
    },
    dex = 366,
    dexEntry = {
      kind = "BIVALVE",
      heightFt = 2,
      heightIn = 4,
      weight = 116,
      text = "It makes a single pearl in its life."
    }
  })

  -- #367 Huntail (WATER / DARK)
  mod.content.pokemon:register("HUNTAIL", {
    name = "Huntail",
    types = { "WATER", "DARK" },
    baseStats = {
      hp = 55,
      attack = 104,
      defense = 105,
      speed = 52,
      special = 94, -- Unified Special
      spAtk = 94,
      spDef = 75
    },
    learnset = {
      { level = 1, move = "WATER_GUN" },
      { level = 30, move = "CRUNCH" },
      { level = 42, move = "AQUA_TAIL" },
      { level = 54, move = "SHELL_SMASH" },
    },
    dex = 367,
    dexEntry = {
      kind = "DEEP SEA",
      heightFt = 5,
      heightIn = 7,
      weight = 59,
      text = "It lights up its fish-shaped tail to attract prey."
    }
  })

  -- #368 Gorebyss (WATER / FAIRY)
  mod.content.pokemon:register("GOREBYSS", {
    name = "Gorebyss",
    types = { "WATER", "FAIRY" },
    baseStats = {
      hp = 55,
      attack = 84,
      defense = 105,
      speed = 52,
      special = 114, -- Unified Special
      spAtk = 114,
      spDef = 75
    },
    learnset = {
      { level = 1, move = "WATER_GUN" },
      { level = 30, move = "DISARMING_VOICE" },
      { level = 42, move = "SCALD" },
      { level = 54, move = "SHELL_SMASH" },
    },
    dex = 368,
    dexEntry = {
      kind = "SOUTH SEA",
      heightFt = 5,
      heightIn = 11,
      weight = 49,
      text = "Its body is pink and sleek. It siphons fluid from prey."
    }
  })

  -- #369 Relicanth (WATER / ROCK)
  mod.content.pokemon:register("RELICANTH", {
    name = "Relicanth",
    types = { "WATER", "ROCK" },
    baseStats = {
      hp = 100,
      attack = 90,
      defense = 130,
      speed = 55,
      special = 45, -- Unified Special
      spAtk = 45,
      spDef = 65
    },
    learnset = {
      { level = 1, move = "TACKLE" },
      { level = 1, move = "WATER_GUN" },
      { level = 25, move = "ROCK_SLIDE" },
      { level = 45, move = "HEAD_SMASH" },
    },
    dex = 369,
    dexEntry = {
      kind = "LONGEVITY",
      heightFt = 3,
      heightIn = 3,
      weight = 52,
      text = "A rare species that has not changed for 100 million years."
    }
  })

  -- #370 Luvdisc (WATER / FAIRY)
  mod.content.pokemon:register("LUVDISC", {
    name = "Luvdisc",
    types = { "WATER", "FAIRY" },
    baseStats = {
      hp = 43,
      attack = 30,
      defense = 55,
      speed = 97,
      special = 40, -- Unified Special
      spAtk = 40,
      spDef = 65
    },
    learnset = {
      { level = 1, move = "TACKLE" },
      { level = 1, move = "WATER_GUN" },
      { level = 15, move = "CHARM" },
      { level = 30, move = "DAZZLING_GLEAM" },
    },
    dex = 370,
    dexEntry = {
      kind = "RENDEZVOUS",
      heightFt = 2,
      heightIn = 0,
      weight = 19,
      text = "Couples that find this Pokémon are blessed with everlasting love."
    }
  })

  -- #371 Bagon (DRAGON)
  mod.content.pokemon:register("BAGON", {
    name = "Bagon",
    types = { "DRAGON" },
    baseStats = {
      hp = 45,
      attack = 75,
      defense = 60,
      speed = 50,
      special = 40, -- Unified Special
      spAtk = 40,
      spDef = 30
    },
    evolutions = {
      { type = "LEVEL", level = 30, target = "SHELGON" },
    },
    learnset = {
      { level = 1, move = "BITE" },
      { level = 15, move = "DRAGON_BREATH" },
      { level = 28, move = "DRAGON_CLAW" },
    },
    dex = 371,
    dexEntry = {
      kind = "ROCK HEAD",
      heightFt = 2,
      heightIn = 0,
      weight = 93,
      text = "It dreams of flying. It smashes its head against rocks."
    }
  })

  -- #372 Shelgon (DRAGON)
  mod.content.pokemon:register("SHELGON", {
    name = "Shelgon",
    types = { "DRAGON" },
    baseStats = {
      hp = 65,
      attack = 95,
      defense = 100,
      speed = 50,
      special = 60, -- Unified Special
      spAtk = 60,
      spDef = 50
    },
    evolutions = {
      { type = "LEVEL", level = 50, target = "SALAMENCE" },
    },
    learnset = {
      { level = 1, move = "BITE" },
      { level = 15, move = "DRAGON_BREATH" },
      { level = 28, move = "DRAGON_CLAW" },
      { level = 30, move = "PROTECT" },
    },
    dex = 372,
    dexEntry = {
      kind = "ENDURANCE",
      heightFt = 3,
      heightIn = 7,
      weight = 243,
      text = "Inside its hard shell, its cells are transforming."
    }
  })

  -- #373 Salamence (DRAGON / FLYING)
  mod.content.pokemon:register("SALAMENCE", {
    name = "Salamence",
    types = { "DRAGON", "FLYING" },
    baseStats = {
      hp = 95,
      attack = 135,
      defense = 80,
      speed = 100,
      special = 110, -- Unified Special
      spAtk = 110,
      spDef = 80
    },
    learnset = {
      { level = 1, move = "BITE" },
      { level = 28, move = "DRAGON_CLAW" },
      { level = 50, move = "FLY" },
      { level = 60, move = "DRAGON_DANCE" },
    },
    dex = 373,
    dexEntry = {
      kind = "DRAGON",
      heightFt = 4,
      heightIn = 11,
      weight = 226,
      text = "Overjoyed at finally growing wings, it flies around soaring."
    }
  })

  -- #374 Beldum (STEEL / PSYCHIC)
  mod.content.pokemon:register("BELDUM", {
    name = "Beldum",
    types = { "STEEL", "PSYCHIC" },
    baseStats = {
      hp = 40,
      attack = 55,
      defense = 80,
      speed = 30,
      special = 35, -- Unified Special
      spAtk = 35,
      spDef = 60
    },
    evolutions = {
      { type = "LEVEL", level = 20, target = "METANG" },
    },
    learnset = {
      { level = 1, move = "TAKE_DOWN" },
    },
    dex = 374,
    dexEntry = {
      kind = "IRON",
      heightFt = 2,
      heightIn = 0,
      weight = 209,
      text = "It uses magnetic waves to talk with its peers."
    }
  })

  -- #375 Metang (STEEL / PSYCHIC)
  mod.content.pokemon:register("METANG", {
    name = "Metang",
    types = { "STEEL", "PSYCHIC" },
    baseStats = {
      hp = 60,
      attack = 75,
      defense = 100,
      speed = 50,
      special = 55, -- Unified Special
      spAtk = 55,
      spDef = 80
    },
    evolutions = {
      { type = "LEVEL", level = 45, target = "METAGROSS" },
    },
    learnset = {
      { level = 1, move = "TAKE_DOWN" },
      { level = 20, move = "BULLET_PUNCH" },
      { level = 30, move = "ZEN_HEADBUTT" },
    },
    dex = 375,
    dexEntry = {
      kind = "IRON CLAW",
      heightFt = 3,
      heightIn = 11,
      weight = 446,
      text = "It is formed by two Beldum fusing together."
    }
  })

  -- #376 Metagross (STEEL / PSYCHIC)
  mod.content.pokemon:register("METAGROSS", {
    name = "Metagross",
    types = { "STEEL", "PSYCHIC" },
    baseStats = {
      hp = 80,
      attack = 135,
      defense = 130,
      speed = 70,
      special = 95, -- Unified Special
      spAtk = 95,
      spDef = 90
    },
    learnset = {
      { level = 1, move = "BULLET_PUNCH" },
      { level = 30, move = "ZEN_HEADBUTT" },
      { level = 45, move = "METEOR_MASH" },
      { level = 58, move = "AGILITY" },
    },
    dex = 376,
    dexEntry = {
      kind = "IRON LEG",
      heightFt = 5,
      heightIn = 3,
      weight = 1212,
      text = "It has four brains that form a massive neural network."
    }
  })

  -- #377 Regirock (ROCK)
  mod.content.pokemon:register("REGIROCK", {
    name = "Regirock",
    types = { "ROCK" },
    baseStats = {
      hp = 80,
      attack = 100,
      defense = 200,
      speed = 50,
      special = 50, -- Unified Special
      spAtk = 50,
      spDef = 100
    },
    learnset = {
      { level = 1, move = "ROCK_THROW" },
      { level = 15, move = "CURSE" },
      { level = 45, move = "STONE_EDGE" },
      { level = 60, move = "SUPERPOWER" },
    },
    dex = 377,
    dexEntry = {
      kind = "ROCK PEAK",
      heightFt = 5,
      heightIn = 7,
      weight = 507,
      text = "Entirely made of rocks. If injured, it attaches rocks to repair."
    }
  })

  -- #378 Regice (ICE)
  mod.content.pokemon:register("REGICE", {
    name = "Regice",
    types = { "ICE" },
    baseStats = {
      hp = 80,
      attack = 50,
      defense = 100,
      speed = 50,
      special = 100, -- Unified Special
      spAtk = 100,
      spDef = 200
    },
    learnset = {
      { level = 1, move = "ICY_WIND" },
      { level = 15, move = "AMNESIA" },
      { level = 45, move = "ICE_BEAM" },
      { level = 60, move = "ZAP_CANNON" },
    },
    dex = 378,
    dexEntry = {
      kind = "ICEBERG",
      heightFt = 5,
      heightIn = 11,
      weight = 385,
      text = "Its body is made of Antarctic ice. It cannot melt even in magma."
    }
  })

  -- #379 Registeel (STEEL)
  mod.content.pokemon:register("REGISTEEL", {
    name = "Registeel",
    types = { "STEEL" },
    baseStats = {
      hp = 80,
      attack = 75,
      defense = 150,
      speed = 50,
      special = 75, -- Unified Special
      spAtk = 75,
      spDef = 150
    },
    learnset = {
      { level = 1, move = "METAL_CLAW" },
      { level = 15, move = "IRON_DEFENSE" },
      { level = 45, move = "FLASH_CANNON" },
      { level = 60, move = "SUPERPOWER" },
    },
    dex = 379,
    dexEntry = {
      kind = "IRON",
      heightFt = 6,
      heightIn = 3,
      weight = 450,
      text = "Its body is made of a mysterious metal that is harder than steel."
    }
  })

  -- #380 Latias (DRAGON / PSYCHIC)
  mod.content.pokemon:register("LATIAS", {
    name = "Latias",
    types = { "DRAGON", "PSYCHIC" },
    baseStats = {
      hp = 80,
      attack = 80,
      defense = 90,
      speed = 110,
      special = 110, -- Unified Special
      spAtk = 110,
      spDef = 130
    },
    learnset = {
      { level = 1, move = "DRAGON_BREATH" },
      { level = 30, move = "PSYCHIC" },
      { level = 45, move = "MIST_BALL" },
      { level = 60, move = "RECOVER" },
    },
    dex = 380,
    dexEntry = {
      kind = "EON",
      heightFt = 4,
      heightIn = 7,
      weight = 88,
      text = "It communicates with humans using telepathy."
    }
  })

  -- #381 Latios (DRAGON / PSYCHIC)
  mod.content.pokemon:register("LATIOS", {
    name = "Latios",
    types = { "DRAGON", "PSYCHIC" },
    baseStats = {
      hp = 80,
      attack = 90,
      defense = 80,
      speed = 110,
      special = 130, -- Unified Special
      spAtk = 130,
      spDef = 110
    },
    learnset = {
      { level = 1, move = "DRAGON_BREATH" },
      { level = 30, move = "PSYCHIC" },
      { level = 45, move = "LUSTER_PURGE" },
      { level = 60, move = "RECOVER" },
    },
    dex = 381,
    dexEntry = {
      kind = "EON",
      heightFt = 6,
      heightIn = 7,
      weight = 132,
      text = "A highly intelligent Pokémon. It can outfly jet planes."
    }
  })

  -- #382 Kyogre (WATER)
  mod.content.pokemon:register("KYOGRE", {
    name = "Kyogre",
    types = { "WATER" },
    baseStats = {
      hp = 100,
      attack = 100,
      defense = 90,
      speed = 90,
      special = 150, -- Unified Special
      spAtk = 150,
      spDef = 140
    },
    learnset = {
      { level = 1, move = "WATER_PULSE" },
      { level = 30, move = "CALM_MIND" },
      { level = 50, move = "HYDRO_PUMP" },
      { level = 70, move = "WATER_SPOUT" },
    },
    dex = 382,
    dexEntry = {
      kind = "SEA BASIN",
      heightFt = 14,
      heightIn = 9,
      weight = 776,
      text = "Said to have expanded the seas by bringing heavy rains."
    }
  })

  -- #383 Groudon (GROUND)
  mod.content.pokemon:register("GROUDON", {
    name = "Groudon",
    types = { "GROUND" },
    baseStats = {
      hp = 100,
      attack = 150,
      defense = 140,
      speed = 90,
      special = 100, -- Unified Special
      spAtk = 100,
      spDef = 90
    },
    learnset = {
      { level = 1, move = "MUD_SHOT" },
      { level = 30, move = "BULK_UP" },
      { level = 50, move = "EARTHQUAKE" },
      { level = 70, move = "SOLAR_BEAM" },
    },
    dex = 383,
    dexEntry = {
      kind = "CONTINENT",
      heightFt = 11,
      heightIn = 6,
      weight = 2094,
      text = "Said to have expanded continents by evaporating water with heat."
    }
  })

  -- #384 Rayquaza (DRAGON / FLYING)
  mod.content.pokemon:register("RAYQUAZA", {
    name = "Rayquaza",
    types = { "DRAGON", "FLYING" },
    baseStats = {
      hp = 105,
      attack = 150,
      defense = 90,
      speed = 95,
      special = 150, -- Unified Special
      spAtk = 150,
      spDef = 90
    },
    learnset = {
      { level = 1, move = "DRAGON_CLAW" },
      { level = 30, move = "DRAGON_DANCE" },
      { level = 50, move = "EXTREME_SPEED" },
      { level = 70, move = "DRAGON_ASCENT" },
    },
    dex = 384,
    dexEntry = {
      kind = "SKY HIGH",
      heightFt = 23,
      heightIn = 0,
      weight = 454,
      text = "It lives in the ozone layer. It descends to earth rarely."
    }
  })

  -- #385 Jirachi (STEEL / PSYCHIC)
  mod.content.pokemon:register("JIRACHI", {
    name = "Jirachi",
    types = { "STEEL", "PSYCHIC" },
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
      { level = 15, move = "WISH" },
      { level = 45, move = "DOOM_DESIRE" },
      { level = 60, move = "PSYCHIC" },
    },
    dex = 385,
    dexEntry = {
      kind = "WISH",
      heightFt = 1,
      heightIn = 0,
      weight = 2,
      text = "It wakes up every 1,000 years to grant wishes."
    }
  })

  -- #386 Deoxys (PSYCHIC)
  mod.content.pokemon:register("DEOXYS", {
    name = "Deoxys",
    types = { "PSYCHIC" },
    baseStats = {
      hp = 50,
      attack = 150,
      defense = 50,
      speed = 150,
      special = 150, -- Unified Special
      spAtk = 150,
      spDef = 50
    },
    learnset = {
      { level = 1, move = "TELEPORT" },
      { level = 30, move = "PSYCHO_BOOST" },
      { level = 50, move = "EXTREME_SPEED" },
      { level = 70, move = "RECOVER" },
    },
    dex = 386,
    dexEntry = {
      kind = "DNA",
      heightFt = 5,
      heightIn = 7,
      weight = 134,
      text = "An alien virus that mutated when exposed to a laser beam."
    }
  })

end
