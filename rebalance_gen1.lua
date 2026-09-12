-- ============================================================================
-- Gen1Recomp Pokémon Rebalance Module (v4 Roster Overhaul)
-- Generated from gen1_pokemon_rebalance_v4 Specification
-- Features: 151 Unique Typings, Smogon Archetypes, Rebalanced Stats & Learnsets
-- ============================================================================

return function(mod)
  -- Enable safety checks for mod loading
  if not mod or not mod.content or not mod.content.pokemon then
    error('gen1recomp modding API not initialized!')
  end

  -- #001 Bulbasaur (Grass / Poison) | BST: 318
  -- Ability: Overgrow, Chlorophyll
  mod.content.pokemon:patch("BULBASAUR", {
    abilities = { "OVERGROW", "CHLOROPHYLL" },
    types = { "GRASS", "POISON" },
    baseStats = {
      hp = 45,
      attack = 49,
      defense = 49,
      speed = 45,
      special = 65, -- Gen 1 unified Special representation
      spAtk = 65,
      spDef = 65
    },
    learnset = {
      { level = 1, move = "TACKLE" }, -- Tackle
      { level = 1, move = "GROWL" }, -- Growl
      { level = 3, move = "VINE_WHIP" }, -- Vine Whip
      { level = 7, move = "GROWTH" }, -- Growth
      { level = 10, move = "LEECH_SEED" }, -- Leech Seed
      { level = 15, move = "POISON_POWDER" }, -- Poison Powder
      { level = 20, move = "SEED_BOMB" }, -- Seed Bomb
      { level = 28, move = "SLUDGE_BOMB" }, -- Sludge Bomb
      { level = 36, move = "SYNTHESIS" }, -- Synthesis
    }
  })

  -- #002 Ivysaur (Grass / Poison) | BST: 405
  -- Ability: Overgrow, Chlorophyll
  mod.content.pokemon:patch("IVYSAUR", {
    abilities = { "OVERGROW", "CHLOROPHYLL" },
    types = { "GRASS", "POISON" },
    baseStats = {
      hp = 60,
      attack = 62,
      defense = 63,
      speed = 60,
      special = 80, -- Gen 1 unified Special representation
      spAtk = 80,
      spDef = 80
    },
    learnset = {
      { level = 1, move = "TACKLE" }, -- Tackle
      { level = 1, move = "GROWL" }, -- Growl
      { level = 1, move = "VINE_WHIP" }, -- Vine Whip
      { level = 9, move = "GROWTH" }, -- Growth
      { level = 12, move = "LEECH_SEED" }, -- Leech Seed
      { level = 18, move = "POISON_POWDER" }, -- Poison Powder
      { level = 24, move = "SEED_BOMB" }, -- Seed Bomb
      { level = 32, move = "SLUDGE_BOMB" }, -- Sludge Bomb
      { level = 40, move = "SYNTHESIS" }, -- Synthesis
    }
  })

  -- #003 Venusaur (Grass / Poison) | BST: 535
  -- Ability: Overgrow, Chlorophyll
  mod.content.pokemon:patch("VENUSAUR", {
    abilities = { "OVERGROW", "CHLOROPHYLL" },
    types = { "GRASS", "POISON" },
    baseStats = {
      hp = 80,
      attack = 82,
      defense = 83,
      speed = 80,
      special = 110, -- Gen 1 unified Special representation
      spAtk = 110,
      spDef = 100
    },
    learnset = {
      { level = 1, move = "TACKLE" }, -- Tackle
      { level = 1, move = "GROWTH" }, -- Growth
      { level = 1, move = "LEECH_SEED" }, -- Leech Seed
      { level = 15, move = "POISON_POWDER" }, -- Poison Powder
      { level = 22, move = "GIGA_DRAIN" }, -- Giga Drain
      { level = 32, move = "SLUDGE_BOMB" }, -- Sludge Bomb
      { level = 40, move = "PETAL_DANCE" }, -- Petal Dance
      { level = 50, move = "SYNTHESIS" }, -- Synthesis
      { level = 60, move = "SOLAR_BEAM" }, -- Solar Beam
    }
  })

  -- #004 Charmander (Fire / Dragon) | BST: 309
  -- Ability: Blaze, Solar Power
  mod.content.pokemon:patch("CHARMANDER", {
    abilities = { "BLAZE", "SOLAR_POWER" },
    types = { "FIRE", "DRAGON" },
    baseStats = {
      hp = 39,
      attack = 52,
      defense = 43,
      speed = 65,
      special = 60, -- Gen 1 unified Special representation
      spAtk = 60,
      spDef = 50
    },
    learnset = {
      { level = 1, move = "SCRATCH" }, -- Scratch
      { level = 1, move = "GROWL" }, -- Growl
      { level = 4, move = "EMBER" }, -- Ember
      { level = 8, move = "SMOKESCREEN" }, -- Smokescreen
      { level = 12, move = "DRAGON_BREATH" }, -- Dragon Breath
      { level = 17, move = "FIRE_FANG" }, -- Fire Fang
      { level = 24, move = "FLAME_BURST" }, -- Flame Burst
      { level = 30, move = "DRAGON_RAGE" }, -- Dragon Rage
      { level = 38, move = "FLAMETHROWER" }, -- Flamethrower
    }
  })

  -- #005 Charmeleon (Fire / Dragon) | BST: 405
  -- Ability: Blaze, Solar Power
  mod.content.pokemon:patch("CHARMELEON", {
    abilities = { "BLAZE", "SOLAR_POWER" },
    types = { "FIRE", "DRAGON" },
    baseStats = {
      hp = 58,
      attack = 64,
      defense = 58,
      speed = 80,
      special = 80, -- Gen 1 unified Special representation
      spAtk = 80,
      spDef = 65
    },
    learnset = {
      { level = 1, move = "SCRATCH" }, -- Scratch
      { level = 1, move = "EMBER" }, -- Ember
      { level = 1, move = "DRAGON_BREATH" }, -- Dragon Breath
      { level = 10, move = "SMOKESCREEN" }, -- Smokescreen
      { level = 19, move = "FIRE_FANG" }, -- Fire Fang
      { level = 27, move = "FLAME_BURST" }, -- Flame Burst
      { level = 35, move = "DRAGON_CLAW" }, -- Dragon Claw
      { level = 43, move = "FLAMETHROWER" }, -- Flamethrower
      { level = 50, move = "DRAGON_PULSE" }, -- Dragon Pulse
    }
  })

  -- #006 Charizard (Fire / Dragon) | BST: 554
  -- Ability: Blaze, Solar Power
  mod.content.pokemon:patch("CHARIZARD", {
    abilities = { "BLAZE", "SOLAR_POWER" },
    types = { "FIRE", "DRAGON" },
    baseStats = {
      hp = 78,
      attack = 104,
      defense = 78,
      speed = 100,
      special = 109, -- Gen 1 unified Special representation
      spAtk = 109,
      spDef = 85
    },
    learnset = {
      { level = 1, move = "SCRATCH" }, -- Scratch
      { level = 1, move = "EMBER" }, -- Ember
      { level = 1, move = "DRAGON_CLAW" }, -- Dragon Claw
      { level = 19, move = "FIRE_FANG" }, -- Fire Fang
      { level = 26, move = "DRAGON_PULSE" }, -- Dragon Pulse
      { level = 36, move = "AIR_SLASH" }, -- Air Slash
      { level = 44, move = "FLAMETHROWER" }, -- Flamethrower
      { level = 52, move = "DRAGON_DANCE" }, -- Dragon Dance
      { level = 60, move = "FLARE_BLITZ" }, -- Flare Blitz
      { level = 68, move = "OUTRAGE" }, -- Outrage
    }
  })

  -- #007 Squirtle (Water / Steel) | BST: 314
  -- Ability: Torrent, Rain Dish
  mod.content.pokemon:patch("SQUIRTLE", {
    abilities = { "TORRENT", "RAIN_DISH" },
    types = { "WATER", "STEEL" },
    baseStats = {
      hp = 44,
      attack = 48,
      defense = 65,
      speed = 43,
      special = 50, -- Gen 1 unified Special representation
      spAtk = 50,
      spDef = 64
    },
    learnset = {
      { level = 1, move = "TACKLE" }, -- Tackle
      { level = 1, move = "TAIL_WHIP" }, -- Tail Whip
      { level = 4, move = "WATER_GUN" }, -- Water Gun
      { level = 8, move = "WITHDRAW" }, -- Withdraw
      { level = 12, move = "RAPID_SPIN" }, -- Rapid Spin
      { level = 18, move = "BITE" }, -- Bite
      { level = 24, move = "WATER_PULSE" }, -- Water Pulse
      { level = 30, move = "IRON_DEFENSE" }, -- Iron Defense
      { level = 38, move = "HYDRO_PUMP" }, -- Hydro Pump
    }
  })

  -- #008 Wartortle (Water / Steel) | BST: 405
  -- Ability: Torrent, Rain Dish
  mod.content.pokemon:patch("WARTORTLE", {
    abilities = { "TORRENT", "RAIN_DISH" },
    types = { "WATER", "STEEL" },
    baseStats = {
      hp = 59,
      attack = 63,
      defense = 80,
      speed = 58,
      special = 65, -- Gen 1 unified Special representation
      spAtk = 65,
      spDef = 80
    },
    learnset = {
      { level = 1, move = "TACKLE" }, -- Tackle
      { level = 1, move = "WATER_GUN" }, -- Water Gun
      { level = 1, move = "RAPID_SPIN" }, -- Rapid Spin
      { level = 10, move = "WITHDRAW" }, -- Withdraw
      { level = 20, move = "BITE" }, -- Bite
      { level = 28, move = "WATER_PULSE" }, -- Water Pulse
      { level = 36, move = "IRON_HEAD" }, -- Iron Head
      { level = 44, move = "FLASH_CANNON" }, -- Flash Cannon
      { level = 52, move = "HYDRO_PUMP" }, -- Hydro Pump
    }
  })

  -- #009 Blastoise (Water / Steel) | BST: 545
  -- Ability: Torrent, Rain Dish
  mod.content.pokemon:patch("BLASTOISE", {
    abilities = { "TORRENT", "RAIN_DISH" },
    types = { "WATER", "STEEL" },
    baseStats = {
      hp = 79,
      attack = 83,
      defense = 100,
      speed = 78,
      special = 100, -- Gen 1 unified Special representation
      spAtk = 100,
      spDef = 105
    },
    learnset = {
      { level = 1, move = "RAPID_SPIN" }, -- Rapid Spin
      { level = 1, move = "WATER_GUN" }, -- Water Gun
      { level = 1, move = "FLASH_CANNON" }, -- Flash Cannon
      { level = 19, move = "BITE" }, -- Bite
      { level = 28, move = "SCALD" }, -- Scald
      { level = 36, move = "FLASH_CANNON" }, -- Flash Cannon
      { level = 44, move = "IRON_HEAD" }, -- Iron Head
      { level = 52, move = "HYDRO_PUMP" }, -- Hydro Pump
      { level = 60, move = "SHELL_SMASH" }, -- Shell Smash
    }
  })

  -- #010 Caterpie (Bug / Fairy) | BST: 195
  -- Ability: Shield Dust, Run Away
  mod.content.pokemon:patch("CATERPIE", {
    abilities = { "SHIELD_DUST", "RUN_AWAY" },
    types = { "BUG", "FAIRY" },
    baseStats = {
      hp = 45,
      attack = 30,
      defense = 35,
      speed = 45,
      special = 20, -- Gen 1 unified Special representation
      spAtk = 20,
      spDef = 20
    },
    learnset = {
      { level = 1, move = "STRING_SHOT" }, -- String Shot
      { level = 1, move = "TACKLE" }, -- Tackle
      { level = 9, move = "BUG_BITE" }, -- Bug Bite
      { level = 15, move = "FAIRY_WIND" }, -- Fairy Wind
    }
  })

  -- #011 Metapod (Bug / Fairy) | BST: 205
  -- Ability: Shed Skin
  mod.content.pokemon:patch("METAPOD", {
    abilities = { "SHED_SKIN" },
    types = { "BUG", "FAIRY" },
    baseStats = {
      hp = 50,
      attack = 20,
      defense = 55,
      speed = 30,
      special = 25, -- Gen 1 unified Special representation
      spAtk = 25,
      spDef = 25
    },
    learnset = {
      { level = 1, move = "HARDEN" }, -- Harden
      { level = 7, move = "IRON_DEFENSE" }, -- Iron Defense
    }
  })

  -- #012 Butterfree (Bug / Fairy) | BST: 445
  -- Ability: Compound Eyes, Tinted Lens
  mod.content.pokemon:patch("BUTTERFREE", {
    abilities = { "COMPOUND_EYES", "TINTED_LENS" },
    types = { "BUG", "FAIRY" },
    baseStats = {
      hp = 60,
      attack = 45,
      defense = 50,
      speed = 100,
      special = 110, -- Gen 1 unified Special representation
      spAtk = 110,
      spDef = 80
    },
    learnset = {
      { level = 1, move = "GUST" }, -- Gust
      { level = 1, move = "CONFUSION" }, -- Confusion
      { level = 11, move = "SLEEP_POWDER" }, -- Sleep Powder
      { level = 17, move = "DAZZLING_GLEAM" }, -- Dazzling Gleam
      { level = 23, move = "AIR_SLASH" }, -- Air Slash
      { level = 29, move = "BUG_BUZZ" }, -- Bug Buzz
      { level = 35, move = "QUIVER_DANCE" }, -- Quiver Dance
      { level = 41, move = "MOONBLAST" }, -- Moonblast
      { level = 47, move = "HURRICANE" }, -- Hurricane
    }
  })

  -- #013 Weedle (Bug / Poison) | BST: 195
  -- Ability: Shield Dust, Run Away
  mod.content.pokemon:patch("WEEDLE", {
    abilities = { "SHIELD_DUST", "RUN_AWAY" },
    types = { "BUG", "POISON" },
    baseStats = {
      hp = 40,
      attack = 35,
      defense = 30,
      speed = 50,
      special = 20, -- Gen 1 unified Special representation
      spAtk = 20,
      spDef = 20
    },
    learnset = {
      { level = 1, move = "POISON_STING" }, -- Poison Sting
      { level = 1, move = "STRING_SHOT" }, -- String Shot
      { level = 9, move = "BUG_BITE" }, -- Bug Bite
    }
  })

  -- #014 Kakuna (Bug / Poison) | BST: 205
  -- Ability: Shed Skin
  mod.content.pokemon:patch("KAKUNA", {
    abilities = { "SHED_SKIN" },
    types = { "BUG", "POISON" },
    baseStats = {
      hp = 45,
      attack = 25,
      defense = 50,
      speed = 35,
      special = 25, -- Gen 1 unified Special representation
      spAtk = 25,
      spDef = 25
    },
    learnset = {
      { level = 1, move = "HARDEN" }, -- Harden
      { level = 7, move = "IRON_DEFENSE" }, -- Iron Defense
    }
  })

  -- #015 Beedrill (Bug / Poison) | BST: 455
  -- Ability: Swarm, Sniper
  mod.content.pokemon:patch("BEEDRILL", {
    abilities = { "SWARM", "SNIPER" },
    types = { "BUG", "POISON" },
    baseStats = {
      hp = 65,
      attack = 120,
      defense = 40,
      speed = 105,
      special = 45, -- Gen 1 unified Special representation
      spAtk = 45,
      spDef = 80
    },
    learnset = {
      { level = 1, move = "FURY_ATTACK" }, -- Fury Attack
      { level = 1, move = "POISON_STING" }, -- Poison Sting
      { level = 15, move = "TWINEEDLE" }, -- Twineedle
      { level = 22, move = "TOXIC_SPIKES" }, -- Toxic Spikes
      { level = 29, move = "U_TURN" }, -- U-turn
      { level = 36, move = "POISON_JAB" }, -- Poison Jab
      { level = 43, move = "FELL_STINGER" }, -- Fell Stinger
      { level = 50, move = "DRILL_RUN" }, -- Drill Run
      { level = 58, move = "X_SCISSOR" }, -- X-Scissor
    }
  })

  -- #016 Pidgey (Normal / Flying) | BST: 251
  -- Ability: Keen Eye, Big Pecks, Tangled Feet
  mod.content.pokemon:patch("PIDGEY", {
    abilities = { "KEEN_EYE", "BIG_PECKS", "TANGLED_FEET" },
    types = { "NORMAL", "FLYING" },
    baseStats = {
      hp = 40,
      attack = 45,
      defense = 40,
      speed = 56,
      special = 35, -- Gen 1 unified Special representation
      spAtk = 35,
      spDef = 35
    },
    learnset = {
      { level = 1, move = "TACKLE" }, -- Tackle
      { level = 5, move = "SAND_ATTACK" }, -- Sand Attack
      { level = 9, move = "GUST" }, -- Gust
      { level = 13, move = "QUICK_ATTACK" }, -- Quick Attack
      { level = 17, move = "WHIRLWIND" }, -- Whirlwind
      { level = 21, move = "TWISTER" }, -- Twister
      { level = 25, move = "FEATHER_DANCE" }, -- Feather Dance
      { level = 29, move = "ROOST" }, -- Roost
    }
  })

  -- #017 Pidgeotto (Normal / Flying) | BST: 349
  -- Ability: Keen Eye, Big Pecks, Tangled Feet
  mod.content.pokemon:patch("PIDGEOTTO", {
    abilities = { "KEEN_EYE", "BIG_PECKS", "TANGLED_FEET" },
    types = { "NORMAL", "FLYING" },
    baseStats = {
      hp = 63,
      attack = 60,
      defense = 55,
      speed = 71,
      special = 50, -- Gen 1 unified Special representation
      spAtk = 50,
      spDef = 50
    },
    learnset = {
      { level = 1, move = "GUST" }, -- Gust
      { level = 1, move = "QUICK_ATTACK" }, -- Quick Attack
      { level = 12, move = "WHIRLWIND" }, -- Whirlwind
      { level = 19, move = "TWISTER" }, -- Twister
      { level = 26, move = "FEATHER_DANCE" }, -- Feather Dance
      { level = 33, move = "ROOST" }, -- Roost
      { level = 40, move = "AIR_SLASH" }, -- Air Slash
      { level = 47, move = "TAIL_WIND" }, -- Tail Wind
    }
  })

  -- #018 Pidgeot (Normal / Flying) | BST: 519
  -- Ability: Keen Eye, Big Pecks, Tangled Feet
  mod.content.pokemon:patch("PIDGEOT", {
    abilities = { "KEEN_EYE", "BIG_PECKS", "TANGLED_FEET" },
    types = { "NORMAL", "FLYING" },
    baseStats = {
      hp = 83,
      attack = 80,
      defense = 75,
      speed = 121,
      special = 90, -- Gen 1 unified Special representation
      spAtk = 90,
      spDef = 70
    },
    learnset = {
      { level = 1, move = "GUST" }, -- Gust
      { level = 1, move = "QUICK_ATTACK" }, -- Quick Attack
      { level = 1, move = "ROOST" }, -- Roost
      { level = 20, move = "WHIRLWIND" }, -- Whirlwind
      { level = 30, move = "AIR_SLASH" }, -- Air Slash
      { level = 38, move = "U_TURN" }, -- U-turn
      { level = 46, move = "DEFOG" }, -- Defog
      { level = 54, move = "HURRICANE" }, -- Hurricane
      { level = 62, move = "HYPER_VOICE" }, -- Hyper Voice
    }
  })

  -- #019 Rattata (Normal / Dark) | BST: 253
  -- Ability: Run Away, Hustle, Guts
  mod.content.pokemon:patch("RATTATA", {
    abilities = { "RUN_AWAY", "HUSTLE", "GUTS" },
    types = { "NORMAL", "DARK" },
    baseStats = {
      hp = 30,
      attack = 56,
      defense = 35,
      speed = 72,
      special = 25, -- Gen 1 unified Special representation
      spAtk = 25,
      spDef = 35
    },
    learnset = {
      { level = 1, move = "TACKLE" }, -- Tackle
      { level = 1, move = "TAIL_WHIP" }, -- Tail Whip
      { level = 4, move = "QUICK_ATTACK" }, -- Quick Attack
      { level = 7, move = "BITE" }, -- Bite
      { level = 10, move = "PURSUIT" }, -- Pursuit
      { level = 14, move = "HYPER_FANG" }, -- Hyper Fang
      { level = 18, move = "CRUNCH" }, -- Crunch
      { level = 22, move = "SUCKER_PUNCH" }, -- Sucker Punch
    }
  })

  -- #020 Raticate (Normal / Dark) | BST: 433
  -- Ability: Run Away, Hustle, Guts
  mod.content.pokemon:patch("RATICATE", {
    abilities = { "RUN_AWAY", "HUSTLE", "GUTS" },
    types = { "NORMAL", "DARK" },
    baseStats = {
      hp = 55,
      attack = 101,
      defense = 60,
      speed = 97,
      special = 50, -- Gen 1 unified Special representation
      spAtk = 50,
      spDef = 70
    },
    learnset = {
      { level = 1, move = "QUICK_ATTACK" }, -- Quick Attack
      { level = 1, move = "BITE" }, -- Bite
      { level = 1, move = "SUCKER_PUNCH" }, -- Sucker Punch
      { level = 20, move = "HYPER_FANG" }, -- Hyper Fang
      { level = 28, move = "CRUNCH" }, -- Crunch
      { level = 36, move = "SWORDS_DANCE" }, -- Swords Dance
      { level = 44, move = "DOUBLE_EDGE" }, -- Double-Edge
      { level = 52, move = "SUCKER_PUNCH" }, -- Sucker Punch
    }
  })

  -- #021 Spearow (Ground / Flying) | BST: 262
  -- Ability: Keen Eye, Sniper
  mod.content.pokemon:patch("SPEAROW", {
    abilities = { "KEEN_EYE", "SNIPER" },
    types = { "GROUND", "FLYING" },
    baseStats = {
      hp = 40,
      attack = 60,
      defense = 30,
      speed = 70,
      special = 31, -- Gen 1 unified Special representation
      spAtk = 31,
      spDef = 31
    },
    learnset = {
      { level = 1, move = "PECK" }, -- Peck
      { level = 1, move = "GROWL" }, -- Growl
      { level = 4, move = "LEER" }, -- Leer
      { level = 8, move = "MUD_SLAP" }, -- Mud-Slap
      { level = 12, move = "FURY_ATTACK" }, -- Fury Attack
      { level = 16, move = "AERIAL_ACE" }, -- Aerial Ace
      { level = 20, move = "MUD_SLAP" }, -- Mud-Slap
      { level = 24, move = "DRILL_RUN" }, -- Drill Run
    }
  })

  -- #022 Fearow (Ground / Flying) | BST: 462
  -- Ability: Keen Eye, Sniper
  mod.content.pokemon:patch("FEAROW", {
    abilities = { "KEEN_EYE", "SNIPER" },
    types = { "GROUND", "FLYING" },
    baseStats = {
      hp = 65,
      attack = 110,
      defense = 65,
      speed = 100,
      special = 61, -- Gen 1 unified Special representation
      spAtk = 61,
      spDef = 61
    },
    learnset = {
      { level = 1, move = "PECK" }, -- Peck
      { level = 1, move = "MUD_SLAP" }, -- Mud-Slap
      { level = 1, move = "DRILL_RUN" }, -- Drill Run
      { level = 20, move = "AERIAL_ACE" }, -- Aerial Ace
      { level = 28, move = "ROOST" }, -- Roost
      { level = 36, move = "DRILL_RUN" }, -- Drill Run
      { level = 44, move = "BRAVE_BIRD" }, -- Brave Bird
      { level = 52, move = "EARTHQUAKE" }, -- Earthquake
      { level = 60, move = "U_TURN" }, -- U-turn
    }
  })

  -- #023 Ekans (Poison / Dragon) | BST: 288
  -- Ability: Intimidate, Unnerve, Shed Skin
  mod.content.pokemon:patch("EKANS", {
    abilities = { "INTIMIDATE", "UNNERVE", "SHED_SKIN" },
    types = { "POISON", "DRAGON" },
    baseStats = {
      hp = 35,
      attack = 60,
      defense = 44,
      speed = 55,
      special = 40, -- Gen 1 unified Special representation
      spAtk = 40,
      spDef = 54
    },
    learnset = {
      { level = 1, move = "WRAP" }, -- Wrap
      { level = 1, move = "LEER" }, -- Leer
      { level = 4, move = "POISON_STING" }, -- Poison Sting
      { level = 9, move = "BITE" }, -- Bite
      { level = 12, move = "DRAGON_RAGE" }, -- Dragon Rage
      { level = 17, move = "GLARE" }, -- Glare
      { level = 22, move = "ACID_SPRAY" }, -- Acid Spray
      { level = 28, move = "POISON_TAIL" }, -- Poison Tail
    }
  })

  -- #024 Arbok (Poison / Dragon) | BST: 488
  -- Ability: Intimidate, Unnerve, Shed Skin
  mod.content.pokemon:patch("ARBOK", {
    abilities = { "INTIMIDATE", "UNNERVE", "SHED_SKIN" },
    types = { "POISON", "DRAGON" },
    baseStats = {
      hp = 60,
      attack = 115,
      defense = 69,
      speed = 100,
      special = 65, -- Gen 1 unified Special representation
      spAtk = 65,
      spDef = 79
    },
    learnset = {
      { level = 1, move = "POISON_STING" }, -- Poison Sting
      { level = 1, move = "GLARE" }, -- Glare
      { level = 1, move = "DRAGON_TAIL" }, -- Dragon Tail
      { level = 20, move = "BITE" }, -- Bite
      { level = 28, move = "POISON_JAB" }, -- Poison Jab
      { level = 34, move = "DRAGON_HAMMER" }, -- Dragon Hammer
      { level = 40, move = "COIL" }, -- Coil
      { level = 46, move = "SUCKER_PUNCH" }, -- Sucker Punch
      { level = 52, move = "DRAGON_RUSH" }, -- Dragon Rush
      { level = 58, move = "EARTHQUAKE" }, -- Earthquake
    }
  })

  -- #025 Pikachu (Electric / Fighting) | BST: 320
  -- Ability: Static, Lightning Rod
  mod.content.pokemon:patch("PIKACHU", {
    abilities = { "STATIC", "LIGHTNING_ROD" },
    types = { "ELECTRIC", "FIGHTING" },
    baseStats = {
      hp = 35,
      attack = 55,
      defense = 40,
      speed = 90,
      special = 50, -- Gen 1 unified Special representation
      spAtk = 50,
      spDef = 50
    },
    learnset = {
      { level = 1, move = "THUNDERSHOCK" }, -- Thundershock
      { level = 1, move = "TAIL_WHIP" }, -- Tail Whip
      { level = 4, move = "QUICK_ATTACK" }, -- Quick Attack
      { level = 8, move = "DOUBLE_KICK" }, -- Double Kick
      { level = 12, move = "THUNDER_WAVE" }, -- Thunder Wave
      { level = 16, move = "SPARK" }, -- Spark
      { level = 20, move = "BRICK_BREAK" }, -- Brick Break
      { level = 24, move = "THUNDERBOLT" }, -- Thunderbolt
    }
  })

  -- #026 Raichu (Electric / Fighting) | BST: 505
  -- Ability: Static, Lightning Rod
  mod.content.pokemon:patch("RAICHU", {
    abilities = { "STATIC", "LIGHTNING_ROD" },
    types = { "ELECTRIC", "FIGHTING" },
    baseStats = {
      hp = 60,
      attack = 110,
      defense = 55,
      speed = 110,
      special = 90, -- Gen 1 unified Special representation
      spAtk = 90,
      spDef = 80
    },
    learnset = {
      { level = 1, move = "THUNDERSHOCK" }, -- Thundershock
      { level = 1, move = "DOUBLE_KICK" }, -- Double Kick
      { level = 1, move = "BRICK_BREAK" }, -- Brick Break
      { level = 20, move = "THUNDER_WAVE" }, -- Thunder Wave
      { level = 28, move = "BRICK_BREAK" }, -- Brick Break
      { level = 36, move = "DISCHARGE" }, -- Discharge
      { level = 40, move = "FORCE_PALM" }, -- Force Palm
      { level = 46, move = "NASTY_PLOT" }, -- Nasty Plot
      { level = 54, move = "VOLT_TACKLE" }, -- Volt Tackle
      { level = 62, move = "CLOSE_COMBAT" }, -- Close Combat
    }
  })

  -- #027 Sandshrew (Ground / Steel) | BST: 300
  -- Ability: Sand Veil, Sand Rush
  mod.content.pokemon:patch("SANDSHREW", {
    abilities = { "SAND_VEIL", "SAND_RUSH" },
    types = { "GROUND", "STEEL" },
    baseStats = {
      hp = 50,
      attack = 75,
      defense = 85,
      speed = 40,
      special = 20, -- Gen 1 unified Special representation
      spAtk = 20,
      spDef = 30
    },
    learnset = {
      { level = 1, move = "SCRATCH" }, -- Scratch
      { level = 1, move = "DEFENSE_CURL" }, -- Defense Curl
      { level = 3, move = "POISON_STING" }, -- Poison Sting
      { level = 7, move = "ROLLOUT" }, -- Rollout
      { level = 11, move = "METAL_CLAW" }, -- Metal Claw
      { level = 15, move = "MUD_SLAP" }, -- Mud-Slap
      { level = 21, move = "FURY_SWIPES" }, -- Fury Swipes
      { level = 27, move = "IRON_DEFENSE" }, -- Iron Defense
    }
  })

  -- #028 Sandslash (Ground / Steel) | BST: 470
  -- Ability: Sand Veil, Sand Rush
  mod.content.pokemon:patch("SANDSLASH", {
    abilities = { "SAND_VEIL", "SAND_RUSH" },
    types = { "GROUND", "STEEL" },
    baseStats = {
      hp = 75,
      attack = 100,
      defense = 110,
      speed = 65,
      special = 45, -- Gen 1 unified Special representation
      spAtk = 45,
      spDef = 75
    },
    learnset = {
      { level = 1, move = "SCRATCH" }, -- Scratch
      { level = 1, move = "METAL_CLAW" }, -- Metal Claw
      { level = 1, move = "RAPID_SPIN" }, -- Rapid Spin
      { level = 20, move = "MUD_SLAP" }, -- Mud-Slap
      { level = 28, move = "IRON_HEAD" }, -- Iron Head
      { level = 36, move = "EARTHQUAKE" }, -- Earthquake
      { level = 44, move = "STEALTH_ROCK" }, -- Stealth Rock
      { level = 52, move = "SWORDS_DANCE" }, -- Swords Dance
      { level = 60, move = "IRON_TAIL" }, -- Iron Tail
    }
  })

  -- #029 Nidoran♀ (Poison / Ground) | BST: 275
  -- Ability: Poison Point, Hustle, Rivalry
  mod.content.pokemon:patch("NIDORAN_F", {
    abilities = { "POISON_POINT", "HUSTLE", "RIVALRY" },
    types = { "POISON", "GROUND" },
    baseStats = {
      hp = 55,
      attack = 47,
      defense = 52,
      speed = 41,
      special = 40, -- Gen 1 unified Special representation
      spAtk = 40,
      spDef = 40
    },
    learnset = {
      { level = 1, move = "GROWL" }, -- Growl
      { level = 1, move = "SCRATCH" }, -- Scratch
      { level = 7, move = "TAIL_WHIP" }, -- Tail Whip
      { level = 9, move = "POISON_STING" }, -- Poison Sting
      { level = 13, move = "MUD_SLAP" }, -- Mud-Slap
      { level = 19, move = "BITE" }, -- Bite
      { level = 25, move = "HELPING_HAND" }, -- Helping Hand
      { level = 31, move = "TOXIC_SPIKES" }, -- Toxic Spikes
    }
  })

  -- #030 Nidorina (Poison / Ground) | BST: 365
  -- Ability: Poison Point, Hustle, Rivalry
  mod.content.pokemon:patch("NIDORINA", {
    abilities = { "POISON_POINT", "HUSTLE", "RIVALRY" },
    types = { "POISON", "GROUND" },
    baseStats = {
      hp = 70,
      attack = 62,
      defense = 67,
      speed = 56,
      special = 55, -- Gen 1 unified Special representation
      spAtk = 55,
      spDef = 55
    },
    learnset = {
      { level = 1, move = "SCRATCH" }, -- Scratch
      { level = 1, move = "POISON_STING" }, -- Poison Sting
      { level = 1, move = "MUD_SLAP" }, -- Mud-Slap
      { level = 15, move = "BITE" }, -- Bite
      { level = 22, move = "POISON_FANG" }, -- Poison Fang
      { level = 29, move = "MUD_BOMB" }, -- Mud Bomb
      { level = 36, move = "TOXIC_SPIKES" }, -- Toxic Spikes
      { level = 43, move = "EARTH_POWER" }, -- Earth Power
    }
  })

  -- #031 Nidoqueen (Poison / Ground) | BST: 525
  -- Ability: Poison Point, Sheer Force, Rivalry
  mod.content.pokemon:patch("NIDOQUEEN", {
    abilities = { "POISON_POINT", "SHEER_FORCE", "RIVALRY" },
    types = { "POISON", "GROUND" },
    baseStats = {
      hp = 100,
      attack = 92,
      defense = 97,
      speed = 76,
      special = 75, -- Gen 1 unified Special representation
      spAtk = 75,
      spDef = 85
    },
    learnset = {
      { level = 1, move = "POISON_STING" }, -- Poison Sting
      { level = 1, move = "BODY_SLAM" }, -- Body Slam
      { level = 1, move = "EARTH_POWER" }, -- Earth Power
      { level = 23, move = "POISON_FANG" }, -- Poison Fang
      { level = 32, move = "STEALTH_ROCK" }, -- Stealth Rock
      { level = 40, move = "EARTH_POWER" }, -- Earth Power
      { level = 48, move = "SLUDGE_WAVE" }, -- Sludge Wave
      { level = 56, move = "SUPERPOWER" }, -- Superpower
    }
  })

  -- #032 Nidoran♂ (Poison / Fighting) | BST: 273
  -- Ability: Poison Point, Hustle, Rivalry
  mod.content.pokemon:patch("NIDORAN_M", {
    abilities = { "POISON_POINT", "HUSTLE", "RIVALRY" },
    types = { "POISON", "FIGHTING" },
    baseStats = {
      hp = 46,
      attack = 57,
      defense = 40,
      speed = 50,
      special = 40, -- Gen 1 unified Special representation
      spAtk = 40,
      spDef = 40
    },
    learnset = {
      { level = 1, move = "LEER" }, -- Leer
      { level = 1, move = "PECK" }, -- Peck
      { level = 7, move = "FOCUS_ENERGY" }, -- Focus Energy
      { level = 9, move = "POISON_STING" }, -- Poison Sting
      { level = 13, move = "DOUBLE_KICK" }, -- Double Kick
      { level = 19, move = "FURY_ATTACK" }, -- Fury Attack
      { level = 25, move = "HORN_ATTACK" }, -- Horn Attack
      { level = 31, move = "HELPING_HAND" }, -- Helping Hand
    }
  })

  -- #033 Nidorino (Poison / Fighting) | BST: 365
  -- Ability: Poison Point, Hustle, Rivalry
  mod.content.pokemon:patch("NIDORINO", {
    abilities = { "POISON_POINT", "HUSTLE", "RIVALRY" },
    types = { "POISON", "FIGHTING" },
    baseStats = {
      hp = 61,
      attack = 72,
      defense = 57,
      speed = 65,
      special = 55, -- Gen 1 unified Special representation
      spAtk = 55,
      spDef = 55
    },
    learnset = {
      { level = 1, move = "PECK" }, -- Peck
      { level = 1, move = "POISON_STING" }, -- Poison Sting
      { level = 1, move = "DOUBLE_KICK" }, -- Double Kick
      { level = 15, move = "FOCUS_ENERGY" }, -- Focus Energy
      { level = 22, move = "POISON_JAB" }, -- Poison Jab
      { level = 29, move = "BRICK_BREAK" }, -- Brick Break
      { level = 36, move = "HORN_DRILL" }, -- Horn Drill
      { level = 43, move = "POISON_TAIL" }, -- Poison Tail
    }
  })

  -- #034 Nidoking (Poison / Fighting) | BST: 525
  -- Ability: Poison Point, Sheer Force, Rivalry
  mod.content.pokemon:patch("NIDOKING", {
    abilities = { "POISON_POINT", "SHEER_FORCE", "RIVALRY" },
    types = { "POISON", "FIGHTING" },
    baseStats = {
      hp = 81,
      attack = 112,
      defense = 77,
      speed = 95,
      special = 85, -- Gen 1 unified Special representation
      spAtk = 85,
      spDef = 75
    },
    learnset = {
      { level = 1, move = "POISON_STING" }, -- Poison Sting
      { level = 1, move = "DOUBLE_KICK" }, -- Double Kick
      { level = 1, move = "POISON_JAB" }, -- Poison Jab
      { level = 23, move = "BRICK_BREAK" }, -- Brick Break
      { level = 32, move = "MEGAHORN" }, -- Megahorn
      { level = 40, move = "POISON_JAB" }, -- Poison Jab
      { level = 48, move = "CLOSE_COMBAT" }, -- Close Combat
      { level = 56, move = "HEAD_SMASH" }, -- Head Smash
    }
  })

  -- #035 Clefairy (Pure Fairy) | BST: 323
  -- Ability: Cute Charm, Friend Guard, Magic Guard
  mod.content.pokemon:patch("CLEFAIRY", {
    abilities = { "CUTE_CHARM", "FRIEND_GUARD", "MAGIC_GUARD" },
    types = { "FAIRY" },
    baseStats = {
      hp = 70,
      attack = 45,
      defense = 48,
      speed = 35,
      special = 60, -- Gen 1 unified Special representation
      spAtk = 60,
      spDef = 65
    },
    learnset = {
      { level = 1, move = "POUND" }, -- Pound
      { level = 1, move = "GROWL" }, -- Growl
      { level = 4, move = "DISARMING_VOICE" }, -- Disarming Voice
      { level = 8, move = "ENCORE" }, -- Encore
      { level = 12, move = "MOONLIGHT" }, -- Moonlight
      { level = 16, move = "FOLLOW_ME" }, -- Follow Me
      { level = 20, move = "STARLIGHT" }, -- Starlight
      { level = 24, move = "METRONOME" }, -- Metronome
      { level = 28, move = "COSMIC_POWER" }, -- Cosmic Power
    }
  })

  -- #036 Clefable (Pure Fairy) | BST: 493
  -- Ability: Cute Charm, Unaware, Magic Guard
  mod.content.pokemon:patch("CLEFABLE", {
    abilities = { "CUTE_CHARM", "UNAWARE", "MAGIC_GUARD" },
    types = { "FAIRY" },
    baseStats = {
      hp = 95,
      attack = 70,
      defense = 83,
      speed = 60,
      special = 95, -- Gen 1 unified Special representation
      spAtk = 95,
      spDef = 90
    },
    learnset = {
      { level = 1, move = "DISARMING_VOICE" }, -- Disarming Voice
      { level = 1, move = "MOONLIGHT" }, -- Moonlight
      { level = 1, move = "METRONOME" }, -- Metronome
      { level = 20, move = "STARLIGHT" }, -- Starlight
      { level = 28, move = "DAZZLING_GLEAM" }, -- Dazzling Gleam
      { level = 36, move = "SOFT_BOILED" }, -- Soft-Boiled
      { level = 44, move = "MOONBLAST" }, -- Moonblast
      { level = 52, move = "CALM_MIND" }, -- Calm Mind
      { level = 60, move = "WISH" }, -- Wish
    }
  })

  -- #037 Vulpix (Fire / Ghost) | BST: 299
  -- Ability: Flash Fire, Drought
  mod.content.pokemon:patch("VULPIX", {
    abilities = { "FLASH_FIRE", "DROUGHT" },
    types = { "FIRE", "GHOST" },
    baseStats = {
      hp = 38,
      attack = 41,
      defense = 40,
      speed = 65,
      special = 50, -- Gen 1 unified Special representation
      spAtk = 50,
      spDef = 65
    },
    learnset = {
      { level = 1, move = "EMBER" }, -- Ember
      { level = 1, move = "TAIL_WHIP" }, -- Tail Whip
      { level = 4, move = "ROAR" }, -- Roar
      { level = 8, move = "WILL_O_WISP" }, -- Will-O-Wisp
      { level = 12, move = "SPITE" }, -- Spite
      { level = 16, move = "HEX" }, -- Hex
      { level = 20, move = "FLAME_BURST" }, -- Flame Burst
      { level = 24, move = "CONFUSE_RAY" }, -- Confuse Ray
      { level = 28, move = "EXTRASENSORY" }, -- Extrasensory
    }
  })

  -- #038 Ninetales (Fire / Ghost) | BST: 529
  -- Ability: Flash Fire, Drought
  mod.content.pokemon:patch("NINETALES", {
    abilities = { "FLASH_FIRE", "DROUGHT" },
    types = { "FIRE", "GHOST" },
    baseStats = {
      hp = 73,
      attack = 76,
      defense = 75,
      speed = 100,
      special = 105, -- Gen 1 unified Special representation
      spAtk = 105,
      spDef = 100
    },
    learnset = {
      { level = 1, move = "EMBER" }, -- Ember
      { level = 1, move = "WILL_O_WISP" }, -- Will-O-Wisp
      { level = 1, move = "HEX" }, -- Hex
      { level = 20, move = "SHADOW_BALL" }, -- Shadow Ball
      { level = 28, move = "FLAMETHROWER" }, -- Flamethrower
      { level = 36, move = "HEX" }, -- Hex
      { level = 44, move = "FIRE_BLAST" }, -- Fire Blast
      { level = 52, move = "NASTY_PLOT" }, -- Nasty Plot
      { level = 60, move = "ENERGY_BALL" }, -- Energy Ball
    }
  })

  -- #039 Jigglypuff (Normal / Fairy) | BST: 270
  -- Ability: Cute Charm, Friend Guard, Competitive
  mod.content.pokemon:patch("JIGGLYPUFF", {
    abilities = { "CUTE_CHARM", "FRIEND_GUARD", "COMPETITIVE" },
    types = { "NORMAL", "FAIRY" },
    baseStats = {
      hp = 115,
      attack = 45,
      defense = 20,
      speed = 20,
      special = 45, -- Gen 1 unified Special representation
      spAtk = 45,
      spDef = 25
    },
    learnset = {
      { level = 1, move = "SING" }, -- Sing
      { level = 1, move = "DEFENSE_CURL" }, -- Defense Curl
      { level = 4, move = "POUND" }, -- Pound
      { level = 8, move = "PLAY_NICE" }, -- Play Nice
      { level = 12, move = "DISARMING_VOICE" }, -- Disarming Voice
      { level = 16, move = "WISH" }, -- Wish
      { level = 20, move = "REST" }, -- Rest
      { level = 24, move = "BODY_SLAM" }, -- Body Slam
      { level = 28, move = "MIMIC" }, -- Mimic
    }
  })

  -- #040 Wigglytuff (Normal / Fairy) | BST: 495
  -- Ability: Cute Charm, Frisk, Competitive
  mod.content.pokemon:patch("WIGGLYTUFF", {
    abilities = { "CUTE_CHARM", "FRISK", "COMPETITIVE" },
    types = { "NORMAL", "FAIRY" },
    baseStats = {
      hp = 140,
      attack = 70,
      defense = 75,
      speed = 45,
      special = 85, -- Gen 1 unified Special representation
      spAtk = 85,
      spDef = 80
    },
    learnset = {
      { level = 1, move = "SING" }, -- Sing
      { level = 1, move = "DISARMING_VOICE" }, -- Disarming Voice
      { level = 1, move = "WISH" }, -- Wish
      { level = 20, move = "HYPER_VOICE" }, -- Hyper Voice
      { level = 28, move = "DAZZLING_GLEAM" }, -- Dazzling Gleam
      { level = 36, move = "WISH" }, -- Wish
      { level = 44, move = "REFLECT" }, -- Reflect
      { level = 52, move = "LIGHT_SCREEN" }, -- Light Screen
      { level = 60, move = "HEAL_BELL" }, -- Heal Bell
    }
  })

  -- #041 Zubat (Poison / Flying) | BST: 245
  -- Ability: Inner Focus, Infiltrator
  mod.content.pokemon:patch("ZUBAT", {
    abilities = { "INNER_FOCUS", "INFILTRATOR" },
    types = { "POISON", "FLYING" },
    baseStats = {
      hp = 40,
      attack = 45,
      defense = 35,
      speed = 55,
      special = 30, -- Gen 1 unified Special representation
      spAtk = 30,
      spDef = 40
    },
    learnset = {
      { level = 1, move = "ABSORB" }, -- Absorb
      { level = 1, move = "SUPERSONIC" }, -- Supersonic
      { level = 5, move = "ASTONISH" }, -- Astonish
      { level = 9, move = "BITE" }, -- Bite
      { level = 13, move = "WING_ATTACK" }, -- Wing Attack
      { level = 17, move = "CONFUSE_RAY" }, -- Confuse Ray
      { level = 21, move = "SWIFT" }, -- Swift
      { level = 25, move = "POISON_FANG" }, -- Poison Fang
    }
  })

  -- #042 Golbat (Poison / Flying) | BST: 465
  -- Ability: Inner Focus, Infiltrator
  mod.content.pokemon:patch("GOLBAT", {
    abilities = { "INNER_FOCUS", "INFILTRATOR" },
    types = { "POISON", "FLYING" },
    baseStats = {
      hp = 75,
      attack = 90,
      defense = 70,
      speed = 90,
      special = 65, -- Gen 1 unified Special representation
      spAtk = 65,
      spDef = 75
    },
    learnset = {
      { level = 1, move = "ABSORB" }, -- Absorb
      { level = 1, move = "BITE" }, -- Bite
      { level = 1, move = "WING_ATTACK" }, -- Wing Attack
      { level = 17, move = "CONFUSE_RAY" }, -- Confuse Ray
      { level = 23, move = "POISON_FANG" }, -- Poison Fang
      { level = 29, move = "ACROBATICS" }, -- Acrobatics
      { level = 35, move = "POISON_JAB" }, -- Poison Jab
      { level = 41, move = "HAZE" }, -- Haze
      { level = 47, move = "BRAVE_BIRD" }, -- Brave Bird
    }
  })

  -- #043 Oddish (Grass / Fairy) | BST: 320
  -- Ability: Chlorophyll, Run Away
  mod.content.pokemon:patch("ODDISH", {
    abilities = { "CHLOROPHYLL", "RUN_AWAY" },
    types = { "GRASS", "FAIRY" },
    baseStats = {
      hp = 45,
      attack = 50,
      defense = 55,
      speed = 30,
      special = 75, -- Gen 1 unified Special representation
      spAtk = 75,
      spDef = 65
    },
    learnset = {
      { level = 1, move = "ABSORB" }, -- Absorb
      { level = 1, move = "GROWTH" }, -- Growth
      { level = 4, move = "ACID" }, -- Acid
      { level = 8, move = "SWEET_SCENT" }, -- Sweet Scent
      { level = 12, move = "MEGA_DRAIN" }, -- Mega Drain
      { level = 14, move = "POISON_POWDER" }, -- Poison Powder
      { level = 16, move = "STUN_SPORE" }, -- Stun Spore
      { level = 18, move = "SLEEP_POWDER" }, -- Sleep Powder
      { level = 20, move = "DISARMING_VOICE" }, -- Disarming Voice
    }
  })

  -- #044 Gloom (Grass / Fairy) | BST: 395
  -- Ability: Chlorophyll, Stench
  mod.content.pokemon:patch("GLOOM", {
    abilities = { "CHLOROPHYLL", "STENCH" },
    types = { "GRASS", "FAIRY" },
    baseStats = {
      hp = 60,
      attack = 65,
      defense = 70,
      speed = 40,
      special = 85, -- Gen 1 unified Special representation
      spAtk = 85,
      spDef = 75
    },
    learnset = {
      { level = 1, move = "ABSORB" }, -- Absorb
      { level = 1, move = "MEGA_DRAIN" }, -- Mega Drain
      { level = 1, move = "DISARMING_VOICE" }, -- Disarming Voice
      { level = 15, move = "SLEEP_POWDER" }, -- Sleep Powder
      { level = 22, move = "GIGA_DRAIN" }, -- Giga Drain
      { level = 29, move = "DAZZLING_GLEAM" }, -- Dazzling Gleam
      { level = 36, move = "TOXIC" }, -- Toxic
      { level = 43, move = "PETAL_DANCE" }, -- Petal Dance
    }
  })

  -- #045 Vileplume (Grass / Fairy) | BST: 510
  -- Ability: Chlorophyll, Effect Spore
  mod.content.pokemon:patch("VILEPLUME", {
    abilities = { "CHLOROPHYLL", "EFFECT_SPORE" },
    types = { "GRASS", "FAIRY" },
    baseStats = {
      hp = 75,
      attack = 80,
      defense = 105,
      speed = 50,
      special = 110, -- Gen 1 unified Special representation
      spAtk = 110,
      spDef = 90
    },
    learnset = {
      { level = 1, move = "GIGA_DRAIN" }, -- Giga Drain
      { level = 1, move = "DAZZLING_GLEAM" }, -- Dazzling Gleam
      { level = 1, move = "SLEEP_POWDER" }, -- Sleep Powder
      { level = 20, move = "MOONBLAST" }, -- Moonblast
      { level = 28, move = "SLUDGE_BOMB" }, -- Sludge Bomb
      { level = 36, move = "AROMATHERAPY" }, -- Aromatherapy
      { level = 44, move = "ENERGY_BALL" }, -- Energy Ball
      { level = 52, move = "STRENGTH_SAP" }, -- Strength Sap
      { level = 60, move = "PETAL_DANCE" }, -- Petal Dance
    }
  })

  -- #046 Paras (Bug / Ghost) | BST: 285
  -- Ability: Effect Spore, Damp, Dry Skin
  mod.content.pokemon:patch("PARAS", {
    abilities = { "EFFECT_SPORE", "DAMP", "DRY_SKIN" },
    types = { "BUG", "GHOST" },
    baseStats = {
      hp = 35,
      attack = 70,
      defense = 55,
      speed = 25,
      special = 45, -- Gen 1 unified Special representation
      spAtk = 45,
      spDef = 55
    },
    learnset = {
      { level = 1, move = "SCRATCH" }, -- Scratch
      { level = 1, move = "STUN_SPORE" }, -- Stun Spore
      { level = 6, move = "POISON_POWDER" }, -- Poison Powder
      { level = 11, move = "ABSORB" }, -- Absorb
      { level = 17, move = "LEECH_LIFE" }, -- Leech Life
      { level = 22, move = "SPORE" }, -- Spore
      { level = 27, move = "SLASH" }, -- Slash
      { level = 33, move = "GROWTH" }, -- Growth
    }
  })

  -- #047 Parasect (Bug / Ghost) | BST: 450
  -- Ability: Effect Spore, Damp, Dry Skin
  mod.content.pokemon:patch("PARASECT", {
    abilities = { "EFFECT_SPORE", "DAMP", "DRY_SKIN" },
    types = { "BUG", "GHOST" },
    baseStats = {
      hp = 85,
      attack = 115,
      defense = 80,
      speed = 30,
      special = 60, -- Gen 1 unified Special representation
      spAtk = 60,
      spDef = 80
    },
    learnset = {
      { level = 1, move = "SCRATCH" }, -- Scratch
      { level = 1, move = "STUN_SPORE" }, -- Stun Spore
      { level = 1, move = "LEECH_LIFE" }, -- Leech Life
      { level = 20, move = "SPORE" }, -- Spore
      { level = 26, move = "SHADOW_SNEAK" }, -- Shadow Sneak
      { level = 32, move = "X_SCISSOR" }, -- X-Scissor
      { level = 38, move = "SHADOW_CLAW" }, -- Shadow Claw
      { level = 44, move = "SEED_BOMB" }, -- Seed Bomb
      { level = 50, move = "SWORDS_DANCE" }, -- Swords Dance
      { level = 56, move = "SYNTHESIS" }, -- Synthesis
    }
  })

  -- #048 Venonat (Bug / Psychic) | BST: 305
  -- Ability: Compound Eyes, Run Away, Tinted Lens
  mod.content.pokemon:patch("VENONAT", {
    abilities = { "COMPOUND_EYES", "RUN_AWAY", "TINTED_LENS" },
    types = { "BUG", "PSYCHIC" },
    baseStats = {
      hp = 60,
      attack = 55,
      defense = 50,
      speed = 45,
      special = 40, -- Gen 1 unified Special representation
      spAtk = 40,
      spDef = 55
    },
    learnset = {
      { level = 1, move = "TACKLE" }, -- Tackle
      { level = 1, move = "DISABLE" }, -- Disable
      { level = 5, move = "FORESIGHT" }, -- Foresight
      { level = 11, move = "SUPERSONIC" }, -- Supersonic
      { level = 13, move = "CONFUSION" }, -- Confusion
      { level = 17, move = "POISON_POWDER" }, -- Poison Powder
      { level = 23, move = "PSYBEAM" }, -- Psybeam
      { level = 29, move = "STUN_SPORE" }, -- Stun Spore
      { level = 35, move = "SIGNAL_BEAM" }, -- Signal Beam
    }
  })

  -- #049 Venomoth (Bug / Psychic) | BST: 470
  -- Ability: Shield Dust, Wonder Skin, Tinted Lens
  mod.content.pokemon:patch("VENOMOTH", {
    abilities = { "SHIELD_DUST", "WONDER_SKIN", "TINTED_LENS" },
    types = { "BUG", "PSYCHIC" },
    baseStats = {
      hp = 70,
      attack = 65,
      defense = 60,
      speed = 90,
      special = 110, -- Gen 1 unified Special representation
      spAtk = 110,
      spDef = 75
    },
    learnset = {
      { level = 1, move = "TACKLE" }, -- Tackle
      { level = 1, move = "CONFUSION" }, -- Confusion
      { level = 1, move = "DISABLE" }, -- Disable
      { level = 20, move = "PSYBEAM" }, -- Psybeam
      { level = 28, move = "SIGNAL_BEAM" }, -- Signal Beam
      { level = 36, move = "QUIVER_DANCE" }, -- Quiver Dance
      { level = 44, move = "PSYCHIC" }, -- Psychic
      { level = 52, move = "BUG_BUZZ" }, -- Bug Buzz
      { level = 60, move = "SLEEP_POWDER" }, -- Sleep Powder
    }
  })

  -- #050 Diglett (Pure Ground) | BST: 265
  -- Ability: Sand Veil, Sand Force, Arena Trap
  mod.content.pokemon:patch("DIGLETT", {
    abilities = { "SAND_VEIL", "SAND_FORCE", "ARENA_TRAP" },
    types = { "GROUND" },
    baseStats = {
      hp = 10,
      attack = 55,
      defense = 25,
      speed = 95,
      special = 35, -- Gen 1 unified Special representation
      spAtk = 35,
      spDef = 45
    },
    learnset = {
      { level = 1, move = "SCRATCH" }, -- Scratch
      { level = 1, move = "SAND_ATTACK" }, -- Sand Attack
      { level = 4, move = "GROWL" }, -- Growl
      { level = 7, move = "ASTONISH" }, -- Astonish
      { level = 10, move = "MUD_SLAP" }, -- Mud-Slap
      { level = 14, move = "MAGNITUDE" }, -- Magnitude
      { level = 18, move = "BULLDOZE" }, -- Bulldoze
      { level = 22, move = "SUCKER_PUNCH" }, -- Sucker Punch
    }
  })

  -- #051 Dugtrio (Pure Ground) | BST: 435
  -- Ability: Sand Veil, Sand Force, Arena Trap
  mod.content.pokemon:patch("DUGTRIO", {
    abilities = { "SAND_VEIL", "SAND_FORCE", "ARENA_TRAP" },
    types = { "GROUND" },
    baseStats = {
      hp = 35,
      attack = 110,
      defense = 50,
      speed = 120,
      special = 50, -- Gen 1 unified Special representation
      spAtk = 50,
      spDef = 70
    },
    learnset = {
      { level = 1, move = "SCRATCH" }, -- Scratch
      { level = 1, move = "SAND_ATTACK" }, -- Sand Attack
      { level = 1, move = "MUD_SLAP" }, -- Mud-Slap
      { level = 20, move = "SUCKER_PUNCH" }, -- Sucker Punch
      { level = 28, move = "EARTHQUAKE" }, -- Earthquake
      { level = 36, move = "REVERSAL" }, -- Reversal
      { level = 44, move = "STONE_EDGE" }, -- Stone Edge
      { level = 52, move = "STEALTH_ROCK" }, -- Stealth Rock
    }
  })

  -- #052 Meowth (Dark / Normal) | BST: 335
  -- Ability: Pickup, Unnerve, Technician
  mod.content.pokemon:patch("MEOWTH", {
    abilities = { "PICKUP", "UNNERVE", "TECHNICIAN" },
    types = { "DARK", "NORMAL" },
    baseStats = {
      hp = 40,
      attack = 90,
      defense = 35,
      speed = 90,
      special = 40, -- Gen 1 unified Special representation
      spAtk = 40,
      spDef = 40
    },
    learnset = {
      { level = 1, move = "FAKE_OUT" }, -- Fake Out
      { level = 1, move = "GROWL" }, -- Growl
      { level = 6, move = "BITE" }, -- Bite
      { level = 9, move = "PAY_DAY" }, -- Pay Day
      { level = 14, move = "FEINT_ATTACK" }, -- Feint Attack
      { level = 17, move = "TAUNT" }, -- Taunt
      { level = 22, move = "FURY_SWIPES" }, -- Fury Swipes
      { level = 25, move = "SCREECH" }, -- Screech
    }
  })

  -- #053 Persian (Dark / Normal) | BST: 460
  -- Ability: Limber, Unnerve, Technician
  mod.content.pokemon:patch("PERSIAN", {
    abilities = { "LIMBER", "UNNERVE", "TECHNICIAN" },
    types = { "DARK", "NORMAL" },
    baseStats = {
      hp = 65,
      attack = 90,
      defense = 60,
      speed = 115,
      special = 65, -- Gen 1 unified Special representation
      spAtk = 65,
      spDef = 65
    },
    learnset = {
      { level = 1, move = "FAKE_OUT" }, -- Fake Out
      { level = 1, move = "BITE" }, -- Bite
      { level = 1, move = "TAUNT" }, -- Taunt
      { level = 20, move = "FEINT_ATTACK" }, -- Feint Attack
      { level = 28, move = "SLASH" }, -- Slash
      { level = 36, move = "NIGHT_SLASH" }, -- Night Slash
      { level = 44, move = "PLAY_ROUGH" }, -- Play Rough
      { level = 52, move = "POWER_GEM" }, -- Power Gem
      { level = 60, move = "PARTING_SHOT" }, -- Parting Shot
    }
  })

  -- #054 Psyduck (Water / Psychic) | BST: 320
  -- Ability: Damp, Swift Swim, Cloud Nine
  mod.content.pokemon:patch("PSYDUCK", {
    abilities = { "DAMP", "SWIFT_SWIM", "CLOUD_NINE" },
    types = { "WATER", "PSYCHIC" },
    baseStats = {
      hp = 50,
      attack = 52,
      defense = 48,
      speed = 55,
      special = 65, -- Gen 1 unified Special representation
      spAtk = 65,
      spDef = 50
    },
    learnset = {
      { level = 1, move = "WATER_GUN" }, -- Water Gun
      { level = 1, move = "SCRATCH" }, -- Scratch
      { level = 4, move = "TAIL_WHIP" }, -- Tail Whip
      { level = 7, move = "CONFUSION" }, -- Confusion
      { level = 10, move = "WATER_PULSE" }, -- Water Pulse
      { level = 13, move = "DISABLE" }, -- Disable
      { level = 16, move = "ZEN_HEADBUTT" }, -- Zen Headbutt
      { level = 19, move = "SCREECH" }, -- Screech
    }
  })

  -- #055 Golduck (Water / Psychic) | BST: 540
  -- Ability: Damp, Swift Swim, Cloud Nine
  mod.content.pokemon:patch("GOLDUCK", {
    abilities = { "DAMP", "SWIFT_SWIM", "CLOUD_NINE" },
    types = { "WATER", "PSYCHIC" },
    baseStats = {
      hp = 80,
      attack = 82,
      defense = 78,
      speed = 105,
      special = 115, -- Gen 1 unified Special representation
      spAtk = 115,
      spDef = 80
    },
    learnset = {
      { level = 1, move = "WATER_GUN" }, -- Water Gun
      { level = 1, move = "CONFUSION" }, -- Confusion
      { level = 1, move = "DISABLE" }, -- Disable
      { level = 20, move = "WATER_PULSE" }, -- Water Pulse
      { level = 28, move = "ZEN_HEADBUTT" }, -- Zen Headbutt
      { level = 36, move = "SCALD" }, -- Scald
      { level = 44, move = "PSYCHIC" }, -- Psychic
      { level = 52, move = "CALM_MIND" }, -- Calm Mind
      { level = 60, move = "HYDRO_PUMP" }, -- Hydro Pump
    }
  })

  -- #056 Mankey (Pure Fighting) | BST: 305
  -- Ability: Vital Spirit, Defiant, Anger Point
  mod.content.pokemon:patch("MANKEY", {
    abilities = { "VITAL_SPIRIT", "DEFIANT", "ANGER_POINT" },
    types = { "FIGHTING" },
    baseStats = {
      hp = 40,
      attack = 80,
      defense = 35,
      speed = 70,
      special = 35, -- Gen 1 unified Special representation
      spAtk = 35,
      spDef = 45
    },
    learnset = {
      { level = 1, move = "COVET" }, -- Covet
      { level = 1, move = "SCRATCH" }, -- Scratch
      { level = 1, move = "LOW_KICK" }, -- Low Kick
      { level = 1, move = "LEER" }, -- Leer
      { level = 8, move = "FOCUS_ENERGY" }, -- Focus Energy
      { level = 12, move = "KARATE_CHOP" }, -- Karate Chop
      { level = 15, move = "FURY_SWIPES" }, -- Fury Swipes
      { level = 19, move = "LOW_SWEEP" }, -- Low Sweep
    }
  })

  -- #057 Primeape (Pure Fighting) | BST: 490
  -- Ability: Vital Spirit, Defiant, Anger Point
  mod.content.pokemon:patch("PRIMEAPE", {
    abilities = { "VITAL_SPIRIT", "DEFIANT", "ANGER_POINT" },
    types = { "FIGHTING" },
    baseStats = {
      hp = 65,
      attack = 125,
      defense = 60,
      speed = 110,
      special = 60, -- Gen 1 unified Special representation
      spAtk = 60,
      spDef = 70
    },
    learnset = {
      { level = 1, move = "SCRATCH" }, -- Scratch
      { level = 1, move = "LOW_KICK" }, -- Low Kick
      { level = 1, move = "KARATE_CHOP" }, -- Karate Chop
      { level = 20, move = "LOW_SWEEP" }, -- Low Sweep
      { level = 28, move = "CROSS_CHOP" }, -- Cross Chop
      { level = 36, move = "RAGE_FIST" }, -- Rage Fist
      { level = 44, move = "CLOSE_COMBAT" }, -- Close Combat
      { level = 52, move = "OUTRAGE" }, -- Outrage
      { level = 60, move = "U_TURN" }, -- U-turn
    }
  })

  -- #058 Growlithe (Fire / Normal) | BST: 350
  -- Ability: Intimidate, Justified, Flash Fire
  mod.content.pokemon:patch("GROWLITHE", {
    abilities = { "INTIMIDATE", "JUSTIFIED", "FLASH_FIRE" },
    types = { "FIRE", "NORMAL" },
    baseStats = {
      hp = 55,
      attack = 70,
      defense = 45,
      speed = 60,
      special = 70, -- Gen 1 unified Special representation
      spAtk = 70,
      spDef = 50
    },
    learnset = {
      { level = 1, move = "BITE" }, -- Bite
      { level = 1, move = "ROAR" }, -- Roar
      { level = 4, move = "EMBER" }, -- Ember
      { level = 8, move = "LEER" }, -- Leer
      { level = 12, move = "ODOR_SLEUTH" }, -- Odor Sleuth
      { level = 17, move = "HELPING_HAND" }, -- Helping Hand
      { level = 21, move = "FLAME_WHEEL" }, -- Flame Wheel
      { level = 26, move = "REVERSAL" }, -- Reversal
    }
  })

  -- #059 Arcanine (Fire / Normal) | BST: 555
  -- Ability: Intimidate, Justified, Flash Fire
  mod.content.pokemon:patch("ARCANINE", {
    abilities = { "INTIMIDATE", "JUSTIFIED", "FLASH_FIRE" },
    types = { "FIRE", "NORMAL" },
    baseStats = {
      hp = 90,
      attack = 110,
      defense = 80,
      speed = 95,
      special = 100, -- Gen 1 unified Special representation
      spAtk = 100,
      spDef = 80
    },
    learnset = {
      { level = 1, move = "BITE" }, -- Bite
      { level = 1, move = "EMBER" }, -- Ember
      { level = 1, move = "EXTREME_SPEED" }, -- Extreme Speed
      { level = 20, move = "FLAME_WHEEL" }, -- Flame Wheel
      { level = 28, move = "EXTREME_SPEED" }, -- Extreme Speed
      { level = 36, move = "CRUNCH" }, -- Crunch
      { level = 44, move = "FLARE_BLITZ" }, -- Flare Blitz
      { level = 52, move = "WILD_CHARGE" }, -- Wild Charge
      { level = 60, move = "CLOSE_COMBAT" }, -- Close Combat
    }
  })

  -- #060 Poliwag (Water / Fighting) | BST: 315
  -- Ability: Water Absorb, Swift Swim, Damp
  mod.content.pokemon:patch("POLIWAG", {
    abilities = { "WATER_ABSORB", "SWIFT_SWIM", "DAMP" },
    types = { "WATER", "FIGHTING" },
    baseStats = {
      hp = 40,
      attack = 65,
      defense = 40,
      speed = 90,
      special = 40, -- Gen 1 unified Special representation
      spAtk = 40,
      spDef = 40
    },
    learnset = {
      { level = 1, move = "WATER_GUN" }, -- Water Gun
      { level = 1, move = "HYPNOSIS" }, -- Hypnosis
      { level = 6, move = "POUND" }, -- Pound
      { level = 12, move = "MUD_SHOT" }, -- Mud Shot
      { level = 18, move = "BUBBLEBEAM" }, -- Bubblebeam
      { level = 24, move = "RAIN_DANCE" }, -- Rain Dance
      { level = 30, move = "BODY_SLAM" }, -- Body Slam
    }
  })

  -- #061 Poliwhirl (Water / Fighting) | BST: 400
  -- Ability: Water Absorb, Swift Swim, Damp
  mod.content.pokemon:patch("POLIWHIRL", {
    abilities = { "WATER_ABSORB", "SWIFT_SWIM", "DAMP" },
    types = { "WATER", "FIGHTING" },
    baseStats = {
      hp = 65,
      attack = 80,
      defense = 65,
      speed = 90,
      special = 50, -- Gen 1 unified Special representation
      spAtk = 50,
      spDef = 50
    },
    learnset = {
      { level = 1, move = "WATER_GUN" }, -- Water Gun
      { level = 1, move = "HYPNOSIS" }, -- Hypnosis
      { level = 1, move = "MUD_SHOT" }, -- Mud Shot
      { level = 18, move = "BUBBLEBEAM" }, -- Bubblebeam
      { level = 24, move = "LOW_KICK" }, -- Low Kick
      { level = 32, move = "BODY_SLAM" }, -- Body Slam
      { level = 40, move = "SCALD" }, -- Scald
      { level = 48, move = "CIRCLE_THROW" }, -- Circle Throw
    }
  })

  -- #062 Poliwrath (Water / Fighting) | BST: 530
  -- Ability: Water Absorb, Swift Swim, Damp
  mod.content.pokemon:patch("POLIWRATH", {
    abilities = { "WATER_ABSORB", "SWIFT_SWIM", "DAMP" },
    types = { "WATER", "FIGHTING" },
    baseStats = {
      hp = 90,
      attack = 115,
      defense = 95,
      speed = 70,
      special = 70, -- Gen 1 unified Special representation
      spAtk = 70,
      spDef = 90
    },
    learnset = {
      { level = 1, move = "HYPNOSIS" }, -- Hypnosis
      { level = 1, move = "SCALD" }, -- Scald
      { level = 1, move = "CIRCLE_THROW" }, -- Circle Throw
      { level = 20, move = "LOW_KICK" }, -- Low Kick
      { level = 28, move = "WATERFALL" }, -- Waterfall
      { level = 36, move = "BRICK_BREAK" }, -- Brick Break
      { level = 44, move = "CLOSE_COMBAT" }, -- Close Combat
      { level = 52, move = "SUPERPOWER" }, -- Superpower
      { level = 60, move = "BELLY_DRUM" }, -- Belly Drum
    }
  })

  -- #063 Abra (Pure Psychic) | BST: 310
  -- Ability: Synchronize, Magic Guard, Inner Focus
  mod.content.pokemon:patch("ABRA", {
    abilities = { "SYNCHRONIZE", "MAGIC_GUARD", "INNER_FOCUS" },
    types = { "PSYCHIC" },
    baseStats = {
      hp = 25,
      attack = 20,
      defense = 15,
      speed = 90,
      special = 105, -- Gen 1 unified Special representation
      spAtk = 105,
      spDef = 55
    },
    learnset = {
      { level = 1, move = "TELEPORT" }, -- Teleport
    }
  })

  -- #064 Kadabra (Pure Psychic) | BST: 400
  -- Ability: Synchronize, Magic Guard, Inner Focus
  mod.content.pokemon:patch("KADABRA", {
    abilities = { "SYNCHRONIZE", "MAGIC_GUARD", "INNER_FOCUS" },
    types = { "PSYCHIC" },
    baseStats = {
      hp = 40,
      attack = 35,
      defense = 30,
      speed = 105,
      special = 120, -- Gen 1 unified Special representation
      spAtk = 120,
      spDef = 70
    },
    learnset = {
      { level = 1, move = "TELEPORT" }, -- Teleport
      { level = 1, move = "CONFUSION" }, -- Confusion
      { level = 1, move = "KINESIS" }, -- Kinesis
      { level = 16, move = "CONFUSION" }, -- Confusion
      { level = 22, move = "PSYBEAM" }, -- Psybeam
      { level = 28, move = "PSYCHO_CUT" }, -- Psycho Cut
      { level = 34, move = "RECOVER" }, -- Recover
      { level = 40, move = "PSYCHIC" }, -- Psychic
    }
  })

  -- #065 Alakazam (Pure Psychic) | BST: 500
  -- Ability: Synchronize, Magic Guard, Inner Focus
  mod.content.pokemon:patch("ALAKAZAM", {
    abilities = { "SYNCHRONIZE", "MAGIC_GUARD", "INNER_FOCUS" },
    types = { "PSYCHIC" },
    baseStats = {
      hp = 55,
      attack = 50,
      defense = 45,
      speed = 120,
      special = 135, -- Gen 1 unified Special representation
      spAtk = 135,
      spDef = 95
    },
    learnset = {
      { level = 1, move = "TELEPORT" }, -- Teleport
      { level = 1, move = "CONFUSION" }, -- Confusion
      { level = 1, move = "RECOVER" }, -- Recover
      { level = 16, move = "PSYBEAM" }, -- Psybeam
      { level = 28, move = "PSYCHIC" }, -- Psychic
      { level = 36, move = "SHADOW_BALL" }, -- Shadow Ball
      { level = 44, move = "FOCUS_BLAST" }, -- Focus Blast
      { level = 52, move = "CALM_MIND" }, -- Calm Mind
      { level = 60, move = "DAZZLING_GLEAM" }, -- Dazzling Gleam
    }
  })

  -- #066 Machop (Fighting / Rock) | BST: 305
  -- Ability: Guts, Steadfast, No Guard
  mod.content.pokemon:patch("MACHOP", {
    abilities = { "GUTS", "STEADFAST", "NO_GUARD" },
    types = { "FIGHTING", "ROCK" },
    baseStats = {
      hp = 70,
      attack = 80,
      defense = 50,
      speed = 35,
      special = 35, -- Gen 1 unified Special representation
      spAtk = 35,
      spDef = 35
    },
    learnset = {
      { level = 1, move = "LOW_KICK" }, -- Low Kick
      { level = 1, move = "LEER" }, -- Leer
      { level = 3, move = "FOCUS_ENERGY" }, -- Focus Energy
      { level = 7, move = "KARATE_CHOP" }, -- Karate Chop
      { level = 11, move = "ROCK_THROW" }, -- Rock Throw
      { level = 15, move = "REVENGE" }, -- Revenge
      { level = 19, move = "VITAL_THROW" }, -- Vital Throw
      { level = 23, move = "KNOCK_OFF" }, -- Knock Off
    }
  })

  -- #067 Machoke (Fighting / Rock) | BST: 405
  -- Ability: Guts, Steadfast, No Guard
  mod.content.pokemon:patch("MACHOKE", {
    abilities = { "GUTS", "STEADFAST", "NO_GUARD" },
    types = { "FIGHTING", "ROCK" },
    baseStats = {
      hp = 80,
      attack = 100,
      defense = 70,
      speed = 45,
      special = 50, -- Gen 1 unified Special representation
      spAtk = 50,
      spDef = 60
    },
    learnset = {
      { level = 1, move = "LOW_KICK" }, -- Low Kick
      { level = 1, move = "ROCK_THROW" }, -- Rock Throw
      { level = 1, move = "KARATE_CHOP" }, -- Karate Chop
      { level = 15, move = "REVENGE" }, -- Revenge
      { level = 22, move = "ROCK_SLIDE" }, -- Rock Slide
      { level = 29, move = "CROSS_CHOP" }, -- Cross Chop
      { level = 36, move = "STRENGTH" }, -- Strength
      { level = 43, move = "SUBMISSION" }, -- Submission
    }
  })

  -- #068 Machamp (Fighting / Rock) | BST: 535
  -- Ability: Guts, Steadfast, No Guard
  mod.content.pokemon:patch("MACHAMP", {
    abilities = { "GUTS", "STEADFAST", "NO_GUARD" },
    types = { "FIGHTING", "ROCK" },
    baseStats = {
      hp = 105,
      attack = 130,
      defense = 80,
      speed = 55,
      special = 65, -- Gen 1 unified Special representation
      spAtk = 65,
      spDef = 100
    },
    learnset = {
      { level = 1, move = "LOW_KICK" }, -- Low Kick
      { level = 1, move = "ROCK_SLIDE" }, -- Rock Slide
      { level = 1, move = "DYNAMIC_PUNCH" }, -- Dynamic Punch
      { level = 20, move = "REVENGE" }, -- Revenge
      { level = 28, move = "CROSS_CHOP" }, -- Cross Chop
      { level = 36, move = "STONE_EDGE" }, -- Stone Edge
      { level = 44, move = "DYNAMIC_PUNCH" }, -- Dynamic Punch
      { level = 52, move = "KNOCK_OFF" }, -- Knock Off
      { level = 60, move = "HEAVY_SLAM" }, -- Heavy Slam
    }
  })

  -- #069 Bellsprout (Grass / Dark) | BST: 300
  -- Ability: Chlorophyll, Gluttony
  mod.content.pokemon:patch("BELLSPROUT", {
    abilities = { "CHLOROPHYLL", "GLUTTONY" },
    types = { "GRASS", "DARK" },
    baseStats = {
      hp = 50,
      attack = 75,
      defense = 35,
      speed = 40,
      special = 70, -- Gen 1 unified Special representation
      spAtk = 70,
      spDef = 30
    },
    learnset = {
      { level = 1, move = "VINE_WHIP" }, -- Vine Whip
      { level = 1, move = "GROWTH" }, -- Growth
      { level = 7, move = "WRAP" }, -- Wrap
      { level = 11, move = "POISON_POWDER" }, -- Poison Powder
      { level = 13, move = "SLEEP_POWDER" }, -- Sleep Powder
      { level = 15, move = "ACID" }, -- Acid
      { level = 17, move = "KNOCK_OFF" }, -- Knock Off
      { level = 21, move = "MEGA_DRAIN" }, -- Mega Drain
    }
  })

  -- #070 Weepinbell (Grass / Dark) | BST: 390
  -- Ability: Chlorophyll, Gluttony
  mod.content.pokemon:patch("WEEPINBELL", {
    abilities = { "CHLOROPHYLL", "GLUTTONY" },
    types = { "GRASS", "DARK" },
    baseStats = {
      hp = 65,
      attack = 90,
      defense = 50,
      speed = 55,
      special = 85, -- Gen 1 unified Special representation
      spAtk = 85,
      spDef = 45
    },
    learnset = {
      { level = 1, move = "VINE_WHIP" }, -- Vine Whip
      { level = 1, move = "KNOCK_OFF" }, -- Knock Off
      { level = 1, move = "ACID" }, -- Acid
      { level = 15, move = "SLEEP_POWDER" }, -- Sleep Powder
      { level = 22, move = "MEGA_DRAIN" }, -- Mega Drain
      { level = 29, move = "SUCKER_PUNCH" }, -- Sucker Punch
      { level = 36, move = "SLAM" }, -- Slam
      { level = 43, move = "GASTRO_ACID" }, -- Gastro Acid
    }
  })

  -- #071 Victreebel (Grass / Dark) | BST: 510
  -- Ability: Chlorophyll, Gluttony
  mod.content.pokemon:patch("VICTREEBEL", {
    abilities = { "CHLOROPHYLL", "GLUTTONY" },
    types = { "GRASS", "DARK" },
    baseStats = {
      hp = 80,
      attack = 105,
      defense = 65,
      speed = 90,
      special = 100, -- Gen 1 unified Special representation
      spAtk = 100,
      spDef = 70
    },
    learnset = {
      { level = 1, move = "VINE_WHIP" }, -- Vine Whip
      { level = 1, move = "KNOCK_OFF" }, -- Knock Off
      { level = 1, move = "LEAF_BLADE" }, -- Leaf Blade
      { level = 20, move = "SUCKER_PUNCH" }, -- Sucker Punch
      { level = 28, move = "POWER_WHIP" }, -- Power Whip
      { level = 36, move = "SLUDGE_BOMB" }, -- Sludge Bomb
      { level = 44, move = "SOLAR_BEAM" }, -- Solar Beam
      { level = 52, move = "STRENGTH_SAP" }, -- Strength Sap
      { level = 60, move = "SWORDS_DANCE" }, -- Swords Dance
    }
  })

  -- #072 Tentacool (Water / Poison) | BST: 335
  -- Ability: Clear Body, Rain Dish, Liquid Ooze
  mod.content.pokemon:patch("TENTACOOL", {
    abilities = { "CLEAR_BODY", "RAIN_DISH", "LIQUID_OOZE" },
    types = { "WATER", "POISON" },
    baseStats = {
      hp = 40,
      attack = 40,
      defense = 35,
      speed = 70,
      special = 50, -- Gen 1 unified Special representation
      spAtk = 50,
      spDef = 100
    },
    learnset = {
      { level = 1, move = "POISON_STING" }, -- Poison Sting
      { level = 1, move = "WATER_GUN" }, -- Water Gun
      { level = 4, move = "ACID" }, -- Acid
      { level = 8, move = "SUPERSONIC" }, -- Supersonic
      { level = 12, move = "WRAP" }, -- Wrap
      { level = 16, move = "WATER_PULSE" }, -- Water Pulse
      { level = 20, move = "TOXIC_SPIKES" }, -- Toxic Spikes
      { level = 24, move = "BUBBLEBEAM" }, -- Bubblebeam
    }
  })

  -- #073 Tentacruel (Water / Poison) | BST: 535
  -- Ability: Clear Body, Rain Dish, Liquid Ooze
  mod.content.pokemon:patch("TENTACRUEL", {
    abilities = { "CLEAR_BODY", "RAIN_DISH", "LIQUID_OOZE" },
    types = { "WATER", "POISON" },
    baseStats = {
      hp = 80,
      attack = 70,
      defense = 65,
      speed = 100,
      special = 100, -- Gen 1 unified Special representation
      spAtk = 100,
      spDef = 120
    },
    learnset = {
      { level = 1, move = "WATER_GUN" }, -- Water Gun
      { level = 1, move = "ACID" }, -- Acid
      { level = 1, move = "TOXIC_SPIKES" }, -- Toxic Spikes
      { level = 20, move = "RAPID_SPIN" }, -- Rapid Spin
      { level = 28, move = "SCALD" }, -- Scald
      { level = 36, move = "SLUDGE_WAVE" }, -- Sludge Wave
      { level = 44, move = "TOXIC_SPIKES" }, -- Toxic Spikes
      { level = 52, move = "KNOCK_OFF" }, -- Knock Off
      { level = 60, move = "HYDRO_PUMP" }, -- Hydro Pump
    }
  })

  -- #074 Geodude (Rock / Ground) | BST: 300
  -- Ability: Rock Head, Sand Veil, Sturdy
  mod.content.pokemon:patch("GEODUDE", {
    abilities = { "ROCK_HEAD", "SAND_VEIL", "STURDY" },
    types = { "ROCK", "GROUND" },
    baseStats = {
      hp = 40,
      attack = 80,
      defense = 100,
      speed = 20,
      special = 30, -- Gen 1 unified Special representation
      spAtk = 30,
      spDef = 30
    },
    learnset = {
      { level = 1, move = "TACKLE" }, -- Tackle
      { level = 1, move = "DEFENSE_CURL" }, -- Defense Curl
      { level = 4, move = "MUD_SLAP" }, -- Mud-Slap
      { level = 8, move = "ROCK_POLISH" }, -- Rock Polish
      { level = 12, move = "ROLLOUT" }, -- Rollout
      { level = 16, move = "MAGNITUDE" }, -- Magnitude
      { level = 20, move = "ROCK_THROW" }, -- Rock Throw
      { level = 24, move = "SMACK_DOWN" }, -- Smack Down
    }
  })

  -- #075 Graveler (Rock / Ground) | BST: 390
  -- Ability: Rock Head, Sand Veil, Sturdy
  mod.content.pokemon:patch("GRAVELER", {
    abilities = { "ROCK_HEAD", "SAND_VEIL", "STURDY" },
    types = { "ROCK", "GROUND" },
    baseStats = {
      hp = 55,
      attack = 95,
      defense = 115,
      speed = 35,
      special = 45, -- Gen 1 unified Special representation
      spAtk = 45,
      spDef = 45
    },
    learnset = {
      { level = 1, move = "TACKLE" }, -- Tackle
      { level = 1, move = "ROCK_THROW" }, -- Rock Throw
      { level = 1, move = "MUD_SLAP" }, -- Mud-Slap
      { level = 16, move = "ROCK_POLISH" }, -- Rock Polish
      { level = 22, move = "ROLLOUT" }, -- Rollout
      { level = 29, move = "BULLDOZE" }, -- Bulldoze
      { level = 36, move = "ROCK_SLIDE" }, -- Rock Slide
      { level = 43, move = "EARTHQUAKE" }, -- Earthquake
    }
  })

  -- #076 Golem (Rock / Ground) | BST: 515
  -- Ability: Rock Head, Sand Veil, Sturdy
  mod.content.pokemon:patch("GOLEM", {
    abilities = { "ROCK_HEAD", "SAND_VEIL", "STURDY" },
    types = { "ROCK", "GROUND" },
    baseStats = {
      hp = 80,
      attack = 120,
      defense = 130,
      speed = 45,
      special = 55, -- Gen 1 unified Special representation
      spAtk = 55,
      spDef = 85
    },
    learnset = {
      { level = 1, move = "ROCK_THROW" }, -- Rock Throw
      { level = 1, move = "EARTHQUAKE" }, -- Earthquake
      { level = 1, move = "STEALTH_ROCK" }, -- Stealth Rock
      { level = 20, move = "ROCK_POLISH" }, -- Rock Polish
      { level = 28, move = "ROCK_SLIDE" }, -- Rock Slide
      { level = 36, move = "EARTHQUAKE" }, -- Earthquake
      { level = 44, move = "DOUBLE_EDGE" }, -- Double-Edge
      { level = 52, move = "EXPLOSION" }, -- Explosion
      { level = 60, move = "STONE_EDGE" }, -- Stone Edge
    }
  })

  -- #077 Ponyta (Fire / Fairy) | BST: 410
  -- Ability: Run Away, Flame Body, Flash Fire
  mod.content.pokemon:patch("PONYTA", {
    abilities = { "RUN_AWAY", "FLAME_BODY", "FLASH_FIRE" },
    types = { "FIRE", "FAIRY" },
    baseStats = {
      hp = 50,
      attack = 85,
      defense = 55,
      speed = 90,
      special = 65, -- Gen 1 unified Special representation
      spAtk = 65,
      spDef = 65
    },
    learnset = {
      { level = 1, move = "TACKLE" }, -- Tackle
      { level = 1, move = "GROWL" }, -- Growl
      { level = 4, move = "TAIL_WHIP" }, -- Tail Whip
      { level = 9, move = "EMBER" }, -- Ember
      { level = 13, move = "DISARMING_VOICE" }, -- Disarming Voice
      { level = 17, move = "FLAME_WHEEL" }, -- Flame Wheel
      { level = 21, move = "STOMP" }, -- Stomp
      { level = 25, move = "AGILITY" }, -- Agility
    }
  })

  -- #078 Rapidash (Fire / Fairy) | BST: 520
  -- Ability: Run Away, Flame Body, Flash Fire
  mod.content.pokemon:patch("RAPIDASH", {
    abilities = { "RUN_AWAY", "FLAME_BODY", "FLASH_FIRE" },
    types = { "FIRE", "FAIRY" },
    baseStats = {
      hp = 65,
      attack = 120,
      defense = 70,
      speed = 105,
      special = 80, -- Gen 1 unified Special representation
      spAtk = 80,
      spDef = 80
    },
    learnset = {
      { level = 1, move = "EMBER" }, -- Ember
      { level = 1, move = "DISARMING_VOICE" }, -- Disarming Voice
      { level = 1, move = "PLAY_ROUGH" }, -- Play Rough
      { level = 20, move = "FLAME_WHEEL" }, -- Flame Wheel
      { level = 28, move = "PLAY_ROUGH" }, -- Play Rough
      { level = 36, move = "HIGH_HORSEPOWER" }, -- High Horsepower
      { level = 44, move = "FLARE_BLITZ" }, -- Flare Blitz
      { level = 52, move = "SWORDS_DANCE" }, -- Swords Dance
      { level = 60, move = "MORNING_SUN" }, -- Morning Sun
    }
  })

  -- #079 Slowpoke (Water / Ground) | BST: 315
  -- Ability: Oblivious, Regenerator, Own Tempo
  mod.content.pokemon:patch("SLOWPOKE", {
    abilities = { "OBLIVIOUS", "REGENERATOR", "OWN_TEMPO" },
    types = { "WATER", "GROUND" },
    baseStats = {
      hp = 90,
      attack = 65,
      defense = 65,
      speed = 15,
      special = 40, -- Gen 1 unified Special representation
      spAtk = 40,
      spDef = 40
    },
    learnset = {
      { level = 1, move = "TACKLE" }, -- Tackle
      { level = 1, move = "CURSE" }, -- Curse
      { level = 3, move = "WATER_GUN" }, -- Water Gun
      { level = 6, move = "YAWN" }, -- Yawn
      { level = 9, move = "MUD_SLAP" }, -- Mud-Slap
      { level = 12, move = "DISABLE" }, -- Disable
      { level = 15, move = "WATER_PULSE" }, -- Water Pulse
      { level = 18, move = "HEADBUTT" }, -- Headbutt
    }
  })

  -- #080 Slowbro (Water / Ground) | BST: 490
  -- Ability: Oblivious, Regenerator, Own Tempo
  mod.content.pokemon:patch("SLOWBRO", {
    abilities = { "OBLIVIOUS", "REGENERATOR", "OWN_TEMPO" },
    types = { "WATER", "GROUND" },
    baseStats = {
      hp = 95,
      attack = 75,
      defense = 110,
      speed = 30,
      special = 100, -- Gen 1 unified Special representation
      spAtk = 100,
      spDef = 80
    },
    learnset = {
      { level = 1, move = "WATER_GUN" }, -- Water Gun
      { level = 1, move = "MUD_SLAP" }, -- Mud-Slap
      { level = 1, move = "SLACK_OFF" }, -- Slack Off
      { level = 20, move = "SCALD" }, -- Scald
      { level = 28, move = "EARTH_POWER" }, -- Earth Power
      { level = 36, move = "SLACK_OFF" }, -- Slack Off
      { level = 44, move = "AMNESIA" }, -- Amnesia
      { level = 52, move = "CALM_MIND" }, -- Calm Mind
      { level = 60, move = "HYDRO_PUMP" }, -- Hydro Pump
    }
  })

  -- #081 Magnemite (Electric / Steel) | BST: 325
  -- Ability: Magnet Pull, Analytic, Sturdy
  mod.content.pokemon:patch("MAGNEMITE", {
    abilities = { "MAGNET_PULL", "ANALYTIC", "STURDY" },
    types = { "ELECTRIC", "STEEL" },
    baseStats = {
      hp = 25,
      attack = 35,
      defense = 70,
      speed = 45,
      special = 95, -- Gen 1 unified Special representation
      spAtk = 95,
      spDef = 55
    },
    learnset = {
      { level = 1, move = "TACKLE" }, -- Tackle
      { level = 1, move = "SUPERSONIC" }, -- Supersonic
      { level = 4, move = "THUNDERSHOCK" }, -- Thundershock
      { level = 8, move = "SONICBOOM" }, -- Sonicboom
      { level = 12, move = "THUNDER_WAVE" }, -- Thunder Wave
      { level = 16, move = "MAGNET_BOMB" }, -- Magnet Bomb
      { level = 20, move = "SPARK" }, -- Spark
      { level = 24, move = "MIRROR_SHOT" }, -- Mirror Shot
    }
  })

  -- #082 Magneton (Electric / Steel) | BST: 475
  -- Ability: Magnet Pull, Analytic, Sturdy
  mod.content.pokemon:patch("MAGNETON", {
    abilities = { "MAGNET_PULL", "ANALYTIC", "STURDY" },
    types = { "ELECTRIC", "STEEL" },
    baseStats = {
      hp = 50,
      attack = 60,
      defense = 95,
      speed = 80,
      special = 120, -- Gen 1 unified Special representation
      spAtk = 120,
      spDef = 70
    },
    learnset = {
      { level = 1, move = "THUNDERSHOCK" }, -- Thundershock
      { level = 1, move = "MAGNET_BOMB" }, -- Magnet Bomb
      { level = 1, move = "VOLT_SWITCH" }, -- Volt Switch
      { level = 20, move = "THUNDER_WAVE" }, -- Thunder Wave
      { level = 28, move = "FLASH_CANNON" }, -- Flash Cannon
      { level = 36, move = "DISCHARGE" }, -- Discharge
      { level = 44, move = "THUNDERBOLT" }, -- Thunderbolt
      { level = 52, move = "MAGNET_RISE" }, -- Magnet Rise
      { level = 60, move = "ZAP_CANNON" }, -- Zap Cannon
    }
  })

  -- #083 Farfetch'd (Fighting / Flying) | BST: 447
  -- Ability: Keen Eye, Defiant, Inner Focus
  mod.content.pokemon:patch("FARFETCHD", {
    abilities = { "KEEN_EYE", "DEFIANT", "INNER_FOCUS" },
    types = { "FIGHTING", "FLYING" },
    baseStats = {
      hp = 52,
      attack = 115,
      defense = 55,
      speed = 105,
      special = 58, -- Gen 1 unified Special representation
      spAtk = 58,
      spDef = 62
    },
    learnset = {
      { level = 1, move = "PECK" }, -- Peck
      { level = 1, move = "LEER" }, -- Leer
      { level = 1, move = "BRICK_BREAK" }, -- Brick Break
      { level = 20, move = "AERIAL_ACE" }, -- Aerial Ace
      { level = 28, move = "KNOCK_OFF" }, -- Knock Off
      { level = 36, move = "CLOSE_COMBAT" }, -- Close Combat
      { level = 44, move = "BRAVE_BIRD" }, -- Brave Bird
      { level = 52, move = "SWORDS_DANCE" }, -- Swords Dance
      { level = 60, move = "ROOST" }, -- Roost
    }
  })

  -- #084 Doduo (Normal / Fighting) | BST: 310
  -- Ability: Run Away, Tangled Feet, Early Bird
  mod.content.pokemon:patch("DODUO", {
    abilities = { "RUN_AWAY", "TANGLED_FEET", "EARLY_BIRD" },
    types = { "NORMAL", "FIGHTING" },
    baseStats = {
      hp = 35,
      attack = 85,
      defense = 45,
      speed = 75,
      special = 35, -- Gen 1 unified Special representation
      spAtk = 35,
      spDef = 35
    },
    learnset = {
      { level = 1, move = "PECK" }, -- Peck
      { level = 1, move = "GROWL" }, -- Growl
      { level = 5, move = "QUICK_ATTACK" }, -- Quick Attack
      { level = 9, move = "LOW_KICK" }, -- Low Kick
      { level = 13, move = "FURY_ATTACK" }, -- Fury Attack
      { level = 17, move = "PURSUIT" }, -- Pursuit
      { level = 21, move = "PLUCK" }, -- Pluck
      { level = 25, move = "DOUBLE_HIT" }, -- Double Hit
    }
  })

  -- #085 Dodrio (Normal / Fighting) | BST: 480
  -- Ability: Run Away, Tangled Feet, Early Bird
  mod.content.pokemon:patch("DODRIO", {
    abilities = { "RUN_AWAY", "TANGLED_FEET", "EARLY_BIRD" },
    types = { "NORMAL", "FIGHTING" },
    baseStats = {
      hp = 60,
      attack = 120,
      defense = 70,
      speed = 110,
      special = 60, -- Gen 1 unified Special representation
      spAtk = 60,
      spDef = 60
    },
    learnset = {
      { level = 1, move = "PECK" }, -- Peck
      { level = 1, move = "LOW_KICK" }, -- Low Kick
      { level = 1, move = "JUMP_KICK" }, -- Jump Kick
      { level = 20, move = "QUICK_ATTACK" }, -- Quick Attack
      { level = 28, move = "DRILL_PECK" }, -- Drill Peck
      { level = 36, move = "CLOSE_COMBAT" }, -- Close Combat
      { level = 44, move = "DOUBLE_EDGE" }, -- Double-Edge
      { level = 52, move = "SWORDS_DANCE" }, -- Swords Dance
      { level = 60, move = "HIGH_JUMP_KICK" }, -- High Jump Kick
    }
  })

  -- #086 Seel (Pure Ice) | BST: 325
  -- Ability: Thick Fat, Ice Body, Hydration
  mod.content.pokemon:patch("SEEL", {
    abilities = { "THICK_FAT", "ICE_BODY", "HYDRATION" },
    types = { "ICE" },
    baseStats = {
      hp = 65,
      attack = 45,
      defense = 55,
      speed = 45,
      special = 45, -- Gen 1 unified Special representation
      spAtk = 45,
      spDef = 70
    },
    learnset = {
      { level = 1, move = "HEADBUTT" }, -- Headbutt
      { level = 1, move = "GROWL" }, -- Growl
      { level = 3, move = "WATER_GUN" }, -- Water Gun
      { level = 7, move = "ICY_WIND" }, -- Icy Wind
      { level = 11, move = "ENCORE" }, -- Encore
      { level = 15, move = "ICE_SHARD" }, -- Ice Shard
      { level = 19, move = "REST" }, -- Rest
      { level = 23, move = "AQUA_RING" }, -- Aqua Ring
    }
  })

  -- #087 Dewgong (Pure Ice) | BST: 495
  -- Ability: Thick Fat, Ice Body, Hydration
  mod.content.pokemon:patch("DEWGONG", {
    abilities = { "THICK_FAT", "ICE_BODY", "HYDRATION" },
    types = { "ICE" },
    baseStats = {
      hp = 90,
      attack = 70,
      defense = 80,
      speed = 70,
      special = 90, -- Gen 1 unified Special representation
      spAtk = 90,
      spDef = 95
    },
    learnset = {
      { level = 1, move = "HEADBUTT" }, -- Headbutt
      { level = 1, move = "ICE_SHARD" }, -- Ice Shard
      { level = 1, move = "ICY_WIND" }, -- Icy Wind
      { level = 20, move = "ICE_BEAM" }, -- Ice Beam
      { level = 28, move = "FROST_BREATH" }, -- Frost Breath
      { level = 36, move = "ICE_SHARD" }, -- Ice Shard
      { level = 44, move = "BLIZZARD" }, -- Blizzard
      { level = 52, move = "REST" }, -- Rest
      { level = 60, move = "SLEEP_TALK" }, -- Sleep Talk
    }
  })

  -- #088 Grimer (Poison / Dark) | BST: 325
  -- Ability: Stench, Poison Touch, Sticky Hold
  mod.content.pokemon:patch("GRIMER", {
    abilities = { "STENCH", "POISON_TOUCH", "STICKY_HOLD" },
    types = { "POISON", "DARK" },
    baseStats = {
      hp = 80,
      attack = 80,
      defense = 50,
      speed = 25,
      special = 40, -- Gen 1 unified Special representation
      spAtk = 40,
      spDef = 50
    },
    learnset = {
      { level = 1, move = "POUND" }, -- Pound
      { level = 1, move = "POISON_GAS" }, -- Poison Gas
      { level = 4, move = "HARDEN" }, -- Harden
      { level = 7, move = "MUD_SLAP" }, -- Mud-Slap
      { level = 12, move = "DISABLE" }, -- Disable
      { level = 15, move = "SLUDGE" }, -- Sludge
      { level = 18, move = "MUD_BOMB" }, -- Mud Bomb
      { level = 21, move = "MINIMIZE" }, -- Minimize
    }
  })

  -- #089 Muk (Poison / Dark) | BST: 515
  -- Ability: Stench, Poison Touch, Sticky Hold
  mod.content.pokemon:patch("MUK", {
    abilities = { "STENCH", "POISON_TOUCH", "STICKY_HOLD" },
    types = { "POISON", "DARK" },
    baseStats = {
      hp = 105,
      attack = 105,
      defense = 90,
      speed = 50,
      special = 65, -- Gen 1 unified Special representation
      spAtk = 65,
      spDef = 100
    },
    learnset = {
      { level = 1, move = "POUND" }, -- Pound
      { level = 1, move = "SLUDGE" }, -- Sludge
      { level = 1, move = "KNOCK_OFF" }, -- Knock Off
      { level = 20, move = "POISON_JAB" }, -- Poison Jab
      { level = 28, move = "CRUNCH" }, -- Crunch
      { level = 36, move = "GUNK_SHOT" }, -- Gunk Shot
      { level = 44, move = "CURSE" }, -- Curse
      { level = 52, move = "PAIN_SPLIT" }, -- Pain Split
      { level = 60, move = "SHADOW_SNEAK" }, -- Shadow Sneak
    }
  })

  -- #090 Shellder (Ice / Steel) | BST: 305
  -- Ability: Shell Armor, Overcoat, Skill Link
  mod.content.pokemon:patch("SHELLDER", {
    abilities = { "SHELL_ARMOR", "OVERCOAT", "SKILL_LINK" },
    types = { "ICE", "STEEL" },
    baseStats = {
      hp = 30,
      attack = 65,
      defense = 100,
      speed = 40,
      special = 45, -- Gen 1 unified Special representation
      spAtk = 45,
      spDef = 25
    },
    learnset = {
      { level = 1, move = "TACKLE" }, -- Tackle
      { level = 1, move = "WATER_GUN" }, -- Water Gun
      { level = 4, move = "WITHDRAW" }, -- Withdraw
      { level = 8, move = "ICE_SHARD" }, -- Ice Shard
      { level = 12, move = "ICICLE_SPEAR" }, -- Icicle Spear
      { level = 16, move = "IRON_DEFENSE" }, -- Iron Defense
      { level = 20, move = "RAZOR_SHELL" }, -- Razor Shell
      { level = 24, move = "IRON_HEAD" }, -- Iron Head
    }
  })

  -- #091 Cloyster (Ice / Steel) | BST: 535
  -- Ability: Shell Armor, Overcoat, Skill Link
  mod.content.pokemon:patch("CLOYSTER", {
    abilities = { "SHELL_ARMOR", "OVERCOAT", "SKILL_LINK" },
    types = { "ICE", "STEEL" },
    baseStats = {
      hp = 60,
      attack = 95,
      defense = 180,
      speed = 70,
      special = 85, -- Gen 1 unified Special representation
      spAtk = 85,
      spDef = 45
    },
    learnset = {
      { level = 1, move = "ICICLE_SPEAR" }, -- Icicle Spear
      { level = 1, move = "IRON_HEAD" }, -- Iron Head
      { level = 1, move = "SHELL_SMASH" }, -- Shell Smash
      { level = 20, move = "ICICLE_SPEAR" }, -- Icicle Spear
      { level = 28, move = "IRON_HEAD" }, -- Iron Head
      { level = 36, move = "ROCK_BLAST" }, -- Rock Blast
      { level = 44, move = "SPIKES" }, -- Spikes
      { level = 52, move = "SHELL_SMASH" }, -- Shell Smash
      { level = 60, move = "HYDRO_PUMP" }, -- Hydro Pump
    }
  })

  -- #092 Gastly (Ghost / Poison) | BST: 310
  -- Ability: Levitate
  mod.content.pokemon:patch("GASTLY", {
    abilities = { "LEVITATE" },
    types = { "GHOST", "POISON" },
    baseStats = {
      hp = 30,
      attack = 35,
      defense = 30,
      speed = 80,
      special = 100, -- Gen 1 unified Special representation
      spAtk = 100,
      spDef = 35
    },
    learnset = {
      { level = 1, move = "LICK" }, -- Lick
      { level = 1, move = "SPITE" }, -- Spite
      { level = 4, move = "HYPNOSIS" }, -- Hypnosis
      { level = 8, move = "MEAN_LOOK" }, -- Mean Look
      { level = 12, move = "CURSE" }, -- Curse
      { level = 16, move = "NIGHT_SHADE" }, -- Night Shade
      { level = 20, move = "CONFUSE_RAY" }, -- Confuse Ray
      { level = 24, move = "SUCKER_PUNCH" }, -- Sucker Punch
    }
  })

  -- #093 Haunter (Ghost / Poison) | BST: 405
  -- Ability: Levitate
  mod.content.pokemon:patch("HAUNTER", {
    abilities = { "LEVITATE" },
    types = { "GHOST", "POISON" },
    baseStats = {
      hp = 45,
      attack = 50,
      defense = 45,
      speed = 95,
      special = 115, -- Gen 1 unified Special representation
      spAtk = 115,
      spDef = 55
    },
    learnset = {
      { level = 1, move = "LICK" }, -- Lick
      { level = 1, move = "HYPNOSIS" }, -- Hypnosis
      { level = 1, move = "NIGHT_SHADE" }, -- Night Shade
      { level = 16, move = "SHADOW_BALL" }, -- Shadow Ball
      { level = 22, move = "SLUDGE_BOMB" }, -- Sludge Bomb
      { level = 29, move = "CONFUSE_RAY" }, -- Confuse Ray
      { level = 36, move = "DARK_PULSE" }, -- Dark Pulse
      { level = 43, move = "DESTINY_BOND" }, -- Destiny Bond
    }
  })

  -- #094 Gengar (Ghost / Poison) | BST: 500
  -- Ability: Cursed Body
  mod.content.pokemon:patch("GENGAR", {
    abilities = { "CURSED_BODY" },
    types = { "GHOST", "POISON" },
    baseStats = {
      hp = 60,
      attack = 65,
      defense = 60,
      speed = 110,
      special = 130, -- Gen 1 unified Special representation
      spAtk = 130,
      spDef = 75
    },
    learnset = {
      { level = 1, move = "LICK" }, -- Lick
      { level = 1, move = "SHADOW_BALL" }, -- Shadow Ball
      { level = 1, move = "SLUDGE_WAVE" }, -- Sludge Wave
      { level = 20, move = "CONFUSE_RAY" }, -- Confuse Ray
      { level = 28, move = "SHADOW_BALL" }, -- Shadow Ball
      { level = 36, move = "SLUDGE_WAVE" }, -- Sludge Wave
      { level = 44, move = "FOCUS_BLAST" }, -- Focus Blast
      { level = 52, move = "DESTINY_BOND" }, -- Destiny Bond
      { level = 60, move = "NASTY_PLOT" }, -- Nasty Plot
    }
  })

  -- #095 Onix (Rock / Fighting) | BST: 425
  -- Ability: Rock Head, Weak Armor, Sturdy
  mod.content.pokemon:patch("ONIX", {
    abilities = { "ROCK_HEAD", "WEAK_ARMOR", "STURDY" },
    types = { "ROCK", "FIGHTING" },
    baseStats = {
      hp = 35,
      attack = 85,
      defense = 160,
      speed = 70,
      special = 30, -- Gen 1 unified Special representation
      spAtk = 30,
      spDef = 45
    },
    learnset = {
      { level = 1, move = "TACKLE" }, -- Tackle
      { level = 1, move = "HARDEN" }, -- Harden
      { level = 1, move = "LOW_KICK" }, -- Low Kick
      { level = 20, move = "ROCK_TOMB" }, -- Rock Tomb
      { level = 28, move = "BRICK_BREAK" }, -- Brick Break
      { level = 36, move = "ROCK_SLIDE" }, -- Rock Slide
      { level = 44, move = "CLOSE_COMBAT" }, -- Close Combat
      { level = 52, move = "STEALTH_ROCK" }, -- Stealth Rock
      { level = 60, move = "EARTHQUAKE" }, -- Earthquake
    }
  })

  -- #096 Drowzee (Psychic / Dark) | BST: 328
  -- Ability: Insomnia, Inner Focus, Forewarn
  mod.content.pokemon:patch("DROWZEE", {
    abilities = { "INSOMNIA", "INNER_FOCUS", "FOREWARN" },
    types = { "PSYCHIC", "DARK" },
    baseStats = {
      hp = 60,
      attack = 48,
      defense = 45,
      speed = 42,
      special = 43, -- Gen 1 unified Special representation
      spAtk = 43,
      spDef = 90
    },
    learnset = {
      { level = 1, move = "POUND" }, -- Pound
      { level = 1, move = "HYPNOSIS" }, -- Hypnosis
      { level = 5, move = "DISABLE" }, -- Disable
      { level = 9, move = "CONFUSION" }, -- Confusion
      { level = 13, move = "HEADBUTT" }, -- Headbutt
      { level = 17, move = "POISON_GAS" }, -- Poison Gas
      { level = 21, move = "MEDITATE" }, -- Meditate
      { level = 25, move = "PSYBEAM" }, -- Psybeam
    }
  })

  -- #097 Hypno (Psychic / Dark) | BST: 503
  -- Ability: Insomnia, Inner Focus, Forewarn
  mod.content.pokemon:patch("HYPNO", {
    abilities = { "INSOMNIA", "INNER_FOCUS", "FOREWARN" },
    types = { "PSYCHIC", "DARK" },
    baseStats = {
      hp = 85,
      attack = 93,
      defense = 70,
      speed = 67,
      special = 73, -- Gen 1 unified Special representation
      spAtk = 73,
      spDef = 115
    },
    learnset = {
      { level = 1, move = "HYPNOSIS" }, -- Hypnosis
      { level = 1, move = "CONFUSION" }, -- Confusion
      { level = 1, move = "SUCKER_PUNCH" }, -- Sucker Punch
      { level = 20, move = "PSYBEAM" }, -- Psybeam
      { level = 28, move = "DARK_PULSE" }, -- Dark Pulse
      { level = 36, move = "NASTY_PLOT" }, -- Nasty Plot
      { level = 44, move = "PSYCHIC" }, -- Psychic
      { level = 52, move = "FOUL_PLAY" }, -- Foul Play
      { level = 60, move = "WISH" }, -- Wish
    }
  })

  -- #098 Krabby (Water / Normal) | BST: 325
  -- Ability: Hyper Cutter, Sheer Force, Shell Armor
  mod.content.pokemon:patch("KRABBY", {
    abilities = { "HYPER_CUTTER", "SHEER_FORCE", "SHELL_ARMOR" },
    types = { "WATER", "NORMAL" },
    baseStats = {
      hp = 30,
      attack = 105,
      defense = 90,
      speed = 50,
      special = 25, -- Gen 1 unified Special representation
      spAtk = 25,
      spDef = 25
    },
    learnset = {
      { level = 1, move = "WATER_GUN" }, -- Water Gun
      { level = 1, move = "LEER" }, -- Leer
      { level = 5, move = "VICEGRIP" }, -- Vicegrip
      { level = 9, move = "HARDEN" }, -- Harden
      { level = 11, move = "BUBBLEBEAM" }, -- Bubblebeam
      { level = 15, move = "MUD_SHOT" }, -- Mud Shot
      { level = 19, move = "METAL_CLAW" }, -- Metal Claw
      { level = 23, move = "STOMP" }, -- Stomp
    }
  })

  -- #099 Kingler (Water / Normal) | BST: 485
  -- Ability: Hyper Cutter, Sheer Force, Shell Armor
  mod.content.pokemon:patch("KINGLER", {
    abilities = { "HYPER_CUTTER", "SHEER_FORCE", "SHELL_ARMOR" },
    types = { "WATER", "NORMAL" },
    baseStats = {
      hp = 55,
      attack = 130,
      defense = 115,
      speed = 85,
      special = 50, -- Gen 1 unified Special representation
      spAtk = 50,
      spDef = 50
    },
    learnset = {
      { level = 1, move = "VICEGRIP" }, -- Vicegrip
      { level = 1, move = "CRABHAMMER" }, -- Crabhammer
      { level = 1, move = "BODY_SLAM" }, -- Body Slam
      { level = 20, move = "STOMP" }, -- Stomp
      { level = 28, move = "LIQUIDATION" }, -- Liquidation
      { level = 36, move = "DOUBLE_EDGE" }, -- Double-Edge
      { level = 44, move = "AGILITY" }, -- Agility
      { level = 52, move = "SWORDS_DANCE" }, -- Swords Dance
      { level = 60, move = "SUPERPOWER" }, -- Superpower
    }
  })

  -- #100 Voltorb (Electric / Fire) | BST: 330
  -- Ability: Soundproof, Aftermath, Static
  mod.content.pokemon:patch("VOLTORB", {
    abilities = { "SOUNDPROOF", "AFTERMATH", "STATIC" },
    types = { "ELECTRIC", "FIRE" },
    baseStats = {
      hp = 40,
      attack = 30,
      defense = 50,
      speed = 100,
      special = 55, -- Gen 1 unified Special representation
      spAtk = 55,
      spDef = 55
    },
    learnset = {
      { level = 1, move = "CHARGE" }, -- Charge
      { level = 1, move = "TACKLE" }, -- Tackle
      { level = 4, move = "SCREECH" }, -- Screech
      { level = 9, move = "SPARK" }, -- Spark
      { level = 11, move = "FLAME_BURST" }, -- Flame Burst
      { level = 13, move = "ROLLOUT" }, -- Rollout
      { level = 16, move = "LIGHT_SCREEN" }, -- Light Screen
      { level = 20, move = "SWIFT" }, -- Swift
    }
  })

  -- #101 Electrode (Electric / Fire) | BST: 510
  -- Ability: Soundproof, Aftermath, Static
  mod.content.pokemon:patch("ELECTRODE", {
    abilities = { "SOUNDPROOF", "AFTERMATH", "STATIC" },
    types = { "ELECTRIC", "FIRE" },
    baseStats = {
      hp = 60,
      attack = 50,
      defense = 70,
      speed = 150,
      special = 100, -- Gen 1 unified Special representation
      spAtk = 100,
      spDef = 80
    },
    learnset = {
      { level = 1, move = "CHARGE" }, -- Charge
      { level = 1, move = "SPARK" }, -- Spark
      { level = 1, move = "FLAME_BURST" }, -- Flame Burst
      { level = 20, move = "VOLT_SWITCH" }, -- Volt Switch
      { level = 28, move = "FLAMETHROWER" }, -- Flamethrower
      { level = 36, move = "THUNDERBOLT" }, -- Thunderbolt
      { level = 44, move = "TAUNT" }, -- Taunt
      { level = 52, move = "EXPLOSION" }, -- Explosion
      { level = 60, move = "OVERHEAT" }, -- Overheat
    }
  })

  -- #102 Exeggcute (Grass / Psychic) | BST: 325
  -- Ability: Chlorophyll, Harvest
  mod.content.pokemon:patch("EXEGGCUTE", {
    abilities = { "CHLOROPHYLL", "HARVEST" },
    types = { "GRASS", "PSYCHIC" },
    baseStats = {
      hp = 60,
      attack = 40,
      defense = 80,
      speed = 40,
      special = 60, -- Gen 1 unified Special representation
      spAtk = 60,
      spDef = 45
    },
    learnset = {
      { level = 1, move = "BARRAGE" }, -- Barrage
      { level = 1, move = "HYPNOSIS" }, -- Hypnosis
      { level = 7, move = "REFLECT" }, -- Reflect
      { level = 11, move = "LEECH_SEED" }, -- Leech Seed
      { level = 17, move = "BULLET_SEED" }, -- Bullet Seed
      { level = 19, move = "CONFUSION" }, -- Confusion
      { level = 21, move = "STUN_SPORE" }, -- Stun Spore
      { level = 27, move = "POISON_POWDER" }, -- Poison Powder
    }
  })

  -- #103 Exeggutor (Grass / Psychic) | BST: 530
  -- Ability: Chlorophyll, Harvest
  mod.content.pokemon:patch("EXEGGUTOR", {
    abilities = { "CHLOROPHYLL", "HARVEST" },
    types = { "GRASS", "PSYCHIC" },
    baseStats = {
      hp = 95,
      attack = 95,
      defense = 85,
      speed = 55,
      special = 125, -- Gen 1 unified Special representation
      spAtk = 125,
      spDef = 75
    },
    learnset = {
      { level = 1, move = "HYPNOSIS" }, -- Hypnosis
      { level = 1, move = "GIGA_DRAIN" }, -- Giga Drain
      { level = 1, move = "PSYCHIC" }, -- Psychic
      { level = 20, move = "CONFUSION" }, -- Confusion
      { level = 28, move = "WOOD_HAMMER" }, -- Wood Hammer
      { level = 36, move = "PSYCHIC" }, -- Psychic
      { level = 44, move = "LEAF_STORM" }, -- Leaf Storm
      { level = 52, move = "TRICK_ROOM" }, -- Trick Room
      { level = 60, move = "SOLAR_BEAM" }, -- Solar Beam
    }
  })

  -- #104 Cubone (Ground / Ghost) | BST: 320
  -- Ability: Rock Head, Battle Armor, Lightning Rod
  mod.content.pokemon:patch("CUBONE", {
    abilities = { "ROCK_HEAD", "BATTLE_ARMOR", "LIGHTNING_ROD" },
    types = { "GROUND", "GHOST" },
    baseStats = {
      hp = 50,
      attack = 50,
      defense = 95,
      speed = 35,
      special = 40, -- Gen 1 unified Special representation
      spAtk = 40,
      spDef = 50
    },
    learnset = {
      { level = 1, move = "GROWL" }, -- Growl
      { level = 1, move = "BONE_CLUB" }, -- Bone Club
      { level = 3, move = "TAIL_WHIP" }, -- Tail Whip
      { level = 7, move = "HEADBUTT" }, -- Headbutt
      { level = 11, move = "SHADOW_SNEAK" }, -- Shadow Sneak
      { level = 13, move = "BONEMERANG" }, -- Bonemerang
      { level = 17, move = "RAGE" }, -- Rage
      { level = 21, move = "FALSE_SWIPE" }, -- False Swipe
    }
  })

  -- #105 Marowak (Ground / Ghost) | BST: 445
  -- Ability: Rock Head, Battle Armor, Lightning Rod
  mod.content.pokemon:patch("MAROWAK", {
    abilities = { "ROCK_HEAD", "BATTLE_ARMOR", "LIGHTNING_ROD" },
    types = { "GROUND", "GHOST" },
    baseStats = {
      hp = 60,
      attack = 100,
      defense = 110,
      speed = 45,
      special = 50, -- Gen 1 unified Special representation
      spAtk = 50,
      spDef = 80
    },
    learnset = {
      { level = 1, move = "BONE_CLUB" }, -- Bone Club
      { level = 1, move = "SHADOW_SNEAK" }, -- Shadow Sneak
      { level = 1, move = "BONEMERANG" }, -- Bonemerang
      { level = 20, move = "SHADOW_CLAW" }, -- Shadow Claw
      { level = 28, move = "EARTHQUAKE" }, -- Earthquake
      { level = 36, move = "SHADOW_BONE" }, -- Shadow Bone
      { level = 44, move = "SWORDS_DANCE" }, -- Swords Dance
      { level = 52, move = "STEALTH_ROCK" }, -- Stealth Rock
      { level = 60, move = "FLARE_BLITZ" }, -- Flare Blitz
    }
  })

  -- #106 Hitmonlee (Fighting / Normal) | BST: 465
  -- Ability: Limber, Unburden, Reckless
  mod.content.pokemon:patch("HITMONLEE", {
    abilities = { "LIMBER", "UNBURDEN", "RECKLESS" },
    types = { "FIGHTING", "NORMAL" },
    baseStats = {
      hp = 50,
      attack = 120,
      defense = 53,
      speed = 97,
      special = 35, -- Gen 1 unified Special representation
      spAtk = 35,
      spDef = 110
    },
    learnset = {
      { level = 1, move = "DOUBLE_KICK" }, -- Double Kick
      { level = 1, move = "MEDITATE" }, -- Meditate
      { level = 1, move = "MEGA_KICK" }, -- Mega Kick
      { level = 20, move = "ROLLING_KICK" }, -- Rolling Kick
      { level = 28, move = "JUMP_KICK" }, -- Jump Kick
      { level = 36, move = "CLOSE_COMBAT" }, -- Close Combat
      { level = 44, move = "HIGH_JUMP_KICK" }, -- High Jump Kick
      { level = 52, move = "REVERSAL" }, -- Reversal
      { level = 60, move = "BLAZE_KICK" }, -- Blaze Kick
    }
  })

  -- #107 Hitmonchan (Fighting / Steel) | BST: 475
  -- Ability: Keen Eye, Inner Focus, Iron Fist
  mod.content.pokemon:patch("HITMONCHAN", {
    abilities = { "KEEN_EYE", "INNER_FOCUS", "IRON_FIST" },
    types = { "FIGHTING", "STEEL" },
    baseStats = {
      hp = 50,
      attack = 125,
      defense = 79,
      speed = 76,
      special = 35, -- Gen 1 unified Special representation
      spAtk = 35,
      spDef = 110
    },
    learnset = {
      { level = 1, move = "COMET_PUNCH" }, -- Comet Punch
      { level = 1, move = "AGILITY" }, -- Agility
      { level = 1, move = "BULLET_PUNCH" }, -- Bullet Punch
      { level = 20, move = "MACH_PUNCH" }, -- Mach Punch
      { level = 28, move = "FIRE_PUNCH" }, -- Fire Punch
      { level = 36, move = "ICE_PUNCH" }, -- Ice Punch
      { level = 44, move = "THUNDER_PUNCH" }, -- Thunder Punch
      { level = 52, move = "CLOSE_COMBAT" }, -- Close Combat
      { level = 60, move = "BULLET_PUNCH" }, -- Bullet Punch
    }
  })

  -- #108 Lickitung (Normal / Poison) | BST: 415
  -- Ability: Own Tempo, Cloud Nine, Oblivious
  mod.content.pokemon:patch("LICKITUNG", {
    abilities = { "OWN_TEMPO", "CLOUD_NINE", "OBLIVIOUS" },
    types = { "NORMAL", "POISON" },
    baseStats = {
      hp = 120,
      attack = 55,
      defense = 75,
      speed = 30,
      special = 60, -- Gen 1 unified Special representation
      spAtk = 60,
      spDef = 75
    },
    learnset = {
      { level = 1, move = "LICK" }, -- Lick
      { level = 1, move = "SUPERSONIC" }, -- Supersonic
      { level = 6, move = "DEFENSE_CURL" }, -- Defense Curl
      { level = 12, move = "KNOCK_OFF" }, -- Knock Off
      { level = 18, move = "STOMP" }, -- Stomp
      { level = 24, move = "TOXIC" }, -- Toxic
      { level = 30, move = "BODY_SLAM" }, -- Body Slam
      { level = 36, move = "WISH" }, -- Wish
      { level = 42, move = "CURSE" }, -- Curse
      { level = 48, move = "POWER_WHIP" }, -- Power Whip
    }
  })

  -- #109 Koffing (Poison / Fire) | BST: 340
  -- Ability: Levitate
  mod.content.pokemon:patch("KOFFING", {
    abilities = { "LEVITATE" },
    types = { "POISON", "FIRE" },
    baseStats = {
      hp = 40,
      attack = 65,
      defense = 95,
      speed = 35,
      special = 60, -- Gen 1 unified Special representation
      spAtk = 60,
      spDef = 45
    },
    learnset = {
      { level = 1, move = "POISON_GAS" }, -- Poison Gas
      { level = 1, move = "TACKLE" }, -- Tackle
      { level = 4, move = "SMOG" }, -- Smog
      { level = 7, move = "SMOKESCREEN" }, -- Smokescreen
      { level = 12, move = "ASSURANCE" }, -- Assurance
      { level = 15, move = "CLEAR_SMOG" }, -- Clear Smog
      { level = 18, move = "SLUDGE" }, -- Sludge
      { level = 23, move = "HAZE" }, -- Haze
    }
  })

  -- #110 Weezing (Poison / Fire) | BST: 505
  -- Ability: Levitate
  mod.content.pokemon:patch("WEEZING", {
    abilities = { "LEVITATE" },
    types = { "POISON", "FIRE" },
    baseStats = {
      hp = 65,
      attack = 90,
      defense = 120,
      speed = 60,
      special = 100, -- Gen 1 unified Special representation
      spAtk = 100,
      spDef = 70
    },
    learnset = {
      { level = 1, move = "SLUDGE" }, -- Sludge
      { level = 1, move = "FLAMETHROWER" }, -- Flamethrower
      { level = 1, move = "WILL_O_WISP" }, -- Will-O-Wisp
      { level = 20, move = "SLUDGE_BOMB" }, -- Sludge Bomb
      { level = 28, move = "FLAMETHROWER" }, -- Flamethrower
      { level = 36, move = "WILL_O_WISP" }, -- Will-O-Wisp
      { level = 44, move = "TOXIC_SPIKES" }, -- Toxic Spikes
      { level = 52, move = "FIRE_BLAST" }, -- Fire Blast
      { level = 60, move = "DESTINY_BOND" }, -- Destiny Bond
    }
  })

  -- #111 Rhyhorn (Ground / Rock) | BST: 345
  -- Ability: Lightning Rod, Reckless, Rock Head
  mod.content.pokemon:patch("RHYHORN", {
    abilities = { "LIGHTNING_ROD", "RECKLESS", "ROCK_HEAD" },
    types = { "GROUND", "ROCK" },
    baseStats = {
      hp = 80,
      attack = 85,
      defense = 95,
      speed = 25,
      special = 30, -- Gen 1 unified Special representation
      spAtk = 30,
      spDef = 30
    },
    learnset = {
      { level = 1, move = "HORN_ATTACK" }, -- Horn Attack
      { level = 1, move = "TAIL_WHIP" }, -- Tail Whip
      { level = 5, move = "FURY_ATTACK" }, -- Fury Attack
      { level = 9, move = "SCARY_FACE" }, -- Scary Face
      { level = 13, move = "SMACK_DOWN" }, -- Smack Down
      { level = 17, move = "STOMP" }, -- Stomp
      { level = 21, move = "BULLDOZE" }, -- Bulldoze
      { level = 25, move = "ROCK_BLAST" }, -- Rock Blast
    }
  })

  -- #112 Rhydon (Ground / Rock) | BST: 495
  -- Ability: Lightning Rod, Reckless, Rock Head
  mod.content.pokemon:patch("RHYDON", {
    abilities = { "LIGHTNING_ROD", "RECKLESS", "ROCK_HEAD" },
    types = { "GROUND", "ROCK" },
    baseStats = {
      hp = 105,
      attack = 130,
      defense = 120,
      speed = 40,
      special = 45, -- Gen 1 unified Special representation
      spAtk = 45,
      spDef = 55
    },
    learnset = {
      { level = 1, move = "HORN_ATTACK" }, -- Horn Attack
      { level = 1, move = "BULLDOZE" }, -- Bulldoze
      { level = 1, move = "ROCK_SLIDE" }, -- Rock Slide
      { level = 20, move = "EARTHQUAKE" }, -- Earthquake
      { level = 28, move = "STONE_EDGE" }, -- Stone Edge
      { level = 36, move = "MEGAHORN" }, -- Megahorn
      { level = 44, move = "HAMMER_ARM" }, -- Hammer Arm
      { level = 52, move = "STEALTH_ROCK" }, -- Stealth Rock
      { level = 60, move = "HORN_DRILL" }, -- Horn Drill
    }
  })

  -- #113 Chansey (Normal / Fairy) | BST: 450
  -- Ability: Natural Cure, Healer, Serene Grace
  mod.content.pokemon:patch("CHANSEY", {
    abilities = { "NATURAL_CURE", "HEALER", "SERENE_GRACE" },
    types = { "NORMAL", "FAIRY" },
    baseStats = {
      hp = 250,
      attack = 5,
      defense = 5,
      speed = 50,
      special = 35, -- Gen 1 unified Special representation
      spAtk = 35,
      spDef = 105
    },
    learnset = {
      { level = 1, move = "POUND" }, -- Pound
      { level = 1, move = "DEFENSE_CURL" }, -- Defense Curl
      { level = 5, move = "GROWL" }, -- Growl
      { level = 9, move = "TAIL_WHIP" }, -- Tail Whip
      { level = 12, move = "SOFT_BOILED" }, -- Soft-Boiled
      { level = 16, move = "DOUBLE_SLAP" }, -- Double Slap
      { level = 20, move = "HEAL_BELL" }, -- Heal Bell
      { level = 24, move = "WISH" }, -- Wish
      { level = 28, move = "TOXIC" }, -- Toxic
      { level = 32, move = "SEISMIC_TOSS" }, -- Seismic Toss
    }
  })

  -- #114 Tangela (Pure Grass) | BST: 455
  -- Ability: Chlorophyll, Regenerator, Leaf Guard
  mod.content.pokemon:patch("TANGELA", {
    abilities = { "CHLOROPHYLL", "REGENERATOR", "LEAF_GUARD" },
    types = { "GRASS" },
    baseStats = {
      hp = 65,
      attack = 55,
      defense = 115,
      speed = 60,
      special = 100, -- Gen 1 unified Special representation
      spAtk = 100,
      spDef = 60
    },
    learnset = {
      { level = 1, move = "ABSORB" }, -- Absorb
      { level = 1, move = "BIND" }, -- Bind
      { level = 4, move = "SLEEP_POWDER" }, -- Sleep Powder
      { level = 8, move = "VINE_WHIP" }, -- Vine Whip
      { level = 12, move = "POISON_POWDER" }, -- Poison Powder
      { level = 16, move = "MEGA_DRAIN" }, -- Mega Drain
      { level = 20, move = "KNOCK_OFF" }, -- Knock Off
      { level = 24, move = "GIGA_DRAIN" }, -- Giga Drain
      { level = 28, move = "ANCIENT_POWER" }, -- Ancient Power
      { level = 32, move = "LEECH_SEED" }, -- Leech Seed
      { level = 36, move = "POWER_WHIP" }, -- Power Whip
    }
  })

  -- #115 Kangaskhan (Normal / Ground) | BST: 500
  -- Ability: Early Bird, Inner Focus, Scrappy
  mod.content.pokemon:patch("KANGASKHAN", {
    abilities = { "EARLY_BIRD", "INNER_FOCUS", "SCRAPPY" },
    types = { "NORMAL", "GROUND" },
    baseStats = {
      hp = 105,
      attack = 105,
      defense = 80,
      speed = 90,
      special = 40, -- Gen 1 unified Special representation
      spAtk = 40,
      spDef = 80
    },
    learnset = {
      { level = 1, move = "COMET_PUNCH" }, -- Comet Punch
      { level = 1, move = "LEER" }, -- Leer
      { level = 7, move = "FAKE_OUT" }, -- Fake Out
      { level = 13, move = "TAIL_WHIP" }, -- Tail Whip
      { level = 19, move = "BITE" }, -- Bite
      { level = 25, move = "MEGA_PUNCH" }, -- Mega Punch
      { level = 31, move = "EARTHQUAKE" }, -- Earthquake
      { level = 37, move = "BODY_SLAM" }, -- Body Slam
      { level = 43, move = "SUCKER_PUNCH" }, -- Sucker Punch
      { level = 49, move = "OUTRAGE" }, -- Outrage
    }
  })

  -- #116 Horsea (Water / Dragon) | BST: 295
  -- Ability: Swift Swim, Damp, Sniper
  mod.content.pokemon:patch("HORSEA", {
    abilities = { "SWIFT_SWIM", "DAMP", "SNIPER" },
    types = { "WATER", "DRAGON" },
    baseStats = {
      hp = 30,
      attack = 40,
      defense = 70,
      speed = 60,
      special = 70, -- Gen 1 unified Special representation
      spAtk = 70,
      spDef = 25
    },
    learnset = {
      { level = 1, move = "WATER_GUN" }, -- Water Gun
      { level = 1, move = "SMOKESCREEN" }, -- Smokescreen
      { level = 5, move = "LEER" }, -- Leer
      { level = 9, move = "WATER_PULSE" }, -- Water Pulse
      { level = 13, move = "TWISTER" }, -- Twister
      { level = 17, move = "BUBBLEBEAM" }, -- Bubblebeam
      { level = 21, move = "FOCUS_ENERGY" }, -- Focus Energy
      { level = 25, move = "DRAGON_BREATH" }, -- Dragon Breath
    }
  })

  -- #117 Seadra (Water / Dragon) | BST: 450
  -- Ability: Poison Point, Damp, Sniper
  mod.content.pokemon:patch("SEADRA", {
    abilities = { "POISON_POINT", "DAMP", "SNIPER" },
    types = { "WATER", "DRAGON" },
    baseStats = {
      hp = 55,
      attack = 65,
      defense = 95,
      speed = 85,
      special = 105, -- Gen 1 unified Special representation
      spAtk = 105,
      spDef = 45
    },
    learnset = {
      { level = 1, move = "WATER_GUN" }, -- Water Gun
      { level = 1, move = "TWISTER" }, -- Twister
      { level = 1, move = "DRAGON_PULSE" }, -- Dragon Pulse
      { level = 20, move = "SCALD" }, -- Scald
      { level = 28, move = "DRAGON_PULSE" }, -- Dragon Pulse
      { level = 36, move = "AGILITY" }, -- Agility
      { level = 44, move = "HYDRO_PUMP" }, -- Hydro Pump
      { level = 52, move = "FLASH_CANNON" }, -- Flash Cannon
      { level = 60, move = "OUTRAGE" }, -- Outrage
    }
  })

  -- #118 Goldeen (Water / Electric) | BST: 320
  -- Ability: Swift Swim, Lightning Rod, Water Veil
  mod.content.pokemon:patch("GOLDEEN", {
    abilities = { "SWIFT_SWIM", "LIGHTNING_ROD", "WATER_VEIL" },
    types = { "WATER", "ELECTRIC" },
    baseStats = {
      hp = 45,
      attack = 67,
      defense = 60,
      speed = 63,
      special = 35, -- Gen 1 unified Special representation
      spAtk = 35,
      spDef = 50
    },
    learnset = {
      { level = 1, move = "PECK" }, -- Peck
      { level = 1, move = "TAIL_WHIP" }, -- Tail Whip
      { level = 5, move = "WATER_PULSE" }, -- Water Pulse
      { level = 8, move = "SUPERSONIC" }, -- Supersonic
      { level = 13, move = "HORN_ATTACK" }, -- Horn Attack
      { level = 16, move = "WATERFALL" }, -- Water Waterfall
      { level = 21, move = "FLAIL" }, -- Flail
      { level = 26, move = "SPARK" }, -- Spark
    }
  })

  -- #119 Seaking (Water / Electric) | BST: 480
  -- Ability: Swift Swim, Lightning Rod, Water Veil
  mod.content.pokemon:patch("SEAKING", {
    abilities = { "SWIFT_SWIM", "LIGHTNING_ROD", "WATER_VEIL" },
    types = { "WATER", "ELECTRIC" },
    baseStats = {
      hp = 80,
      attack = 122,
      defense = 65,
      speed = 68,
      special = 65, -- Gen 1 unified Special representation
      spAtk = 65,
      spDef = 80
    },
    learnset = {
      { level = 1, move = "PECK" }, -- Peck
      { level = 1, move = "WATERFALL" }, -- Waterfall
      { level = 1, move = "WILD_CHARGE" }, -- Wild Charge
      { level = 20, move = "MEGAHORN" }, -- Megahorn
      { level = 28, move = "WATERFALL" }, -- Waterfall
      { level = 36, move = "WILD_CHARGE" }, -- Wild Charge
      { level = 44, move = "AGILITY" }, -- Agility
      { level = 52, move = "DRILL_RUN" }, -- Drill Run
      { level = 60, move = "HORN_DRILL" }, -- Horn Drill
    }
  })

  -- #120 Staryu (Water / Fairy) | BST: 340
  -- Ability: Illuminate, Analytic, Natural Cure
  mod.content.pokemon:patch("STARYU", {
    abilities = { "ILLUMINATE", "ANALYTIC", "NATURAL_CURE" },
    types = { "WATER", "FAIRY" },
    baseStats = {
      hp = 30,
      attack = 45,
      defense = 55,
      speed = 85,
      special = 70, -- Gen 1 unified Special representation
      spAtk = 70,
      spDef = 55
    },
    learnset = {
      { level = 1, move = "HARDEN" }, -- Harden
      { level = 1, move = "WATER_GUN" }, -- Water Gun
      { level = 4, move = "RAPID_SPIN" }, -- Rapid Spin
      { level = 7, move = "RECOVER" }, -- Recover
      { level = 10, move = "PSYWAVE" }, -- Psywave
      { level = 13, move = "SWIFT" }, -- Swift
      { level = 16, move = "BUBBLEBEAM" }, -- Bubblebeam
      { level = 19, move = "CAMOUFLAGE" }, -- Camouflage
      { level = 22, move = "GYRO_BALL" }, -- Gyro Ball
    }
  })

  -- #121 Starmie (Water / Fairy) | BST: 520
  -- Ability: Illuminate, Analytic, Natural Cure
  mod.content.pokemon:patch("STARMIE", {
    abilities = { "ILLUMINATE", "ANALYTIC", "NATURAL_CURE" },
    types = { "WATER", "FAIRY" },
    baseStats = {
      hp = 60,
      attack = 75,
      defense = 85,
      speed = 115,
      special = 100, -- Gen 1 unified Special representation
      spAtk = 100,
      spDef = 85
    },
    learnset = {
      { level = 1, move = "RAPID_SPIN" }, -- Rapid Spin
      { level = 1, move = "SCALD" }, -- Scald
      { level = 1, move = "DAZZLING_GLEAM" }, -- Dazzling Gleam
      { level = 20, move = "RECOVER" }, -- Recover
      { level = 28, move = "HYDRO_PUMP" }, -- Hydro Pump
      { level = 36, move = "PSYCHIC" }, -- Psychic
      { level = 44, move = "MOONBLAST" }, -- Moonblast
      { level = 52, move = "THUNDERBOLT" }, -- Thunderbolt
      { level = 60, move = "ICE_BEAM" }, -- Ice Beam
    }
  })

  -- #122 Mr. Mime (Psychic / Fairy) | BST: 470
  -- Ability: Soundproof, Technician, Filter
  mod.content.pokemon:patch("MR_MIME", {
    abilities = { "SOUNDPROOF", "TECHNICIAN", "FILTER" },
    types = { "PSYCHIC", "FAIRY" },
    baseStats = {
      hp = 40,
      attack = 45,
      defense = 65,
      speed = 90,
      special = 110, -- Gen 1 unified Special representation
      spAtk = 110,
      spDef = 120
    },
    learnset = {
      { level = 1, move = "CONFUSION" }, -- Confusion
      { level = 1, move = "BARRIER" }, -- Barrier
      { level = 1, move = "LIGHT_SCREEN" }, -- Light Screen
      { level = 1, move = "REFLECT" }, -- Reflect
      { level = 15, move = "PSYBEAM" }, -- Psybeam
      { level = 22, move = "DAZZLING_GLEAM" }, -- Dazzling Gleam
      { level = 29, move = "PSYCHIC" }, -- Psychic
      { level = 36, move = "NASTY_PLOT" }, -- Nasty Plot
      { level = 43, move = "FOCUS_BLAST" }, -- Focus Blast
      { level = 50, move = "BATON_PASS" }, -- Baton Pass
    }
  })

  -- #123 Scyther (Bug / Flying) | BST: 500
  -- Ability: Swarm, Steadfast, Technician
  mod.content.pokemon:patch("SCYTHER", {
    abilities = { "SWARM", "STEADFAST", "TECHNICIAN" },
    types = { "BUG", "FLYING" },
    baseStats = {
      hp = 70,
      attack = 110,
      defense = 80,
      speed = 105,
      special = 55, -- Gen 1 unified Special representation
      spAtk = 55,
      spDef = 80
    },
    learnset = {
      { level = 1, move = "VACUUM_WAVE" }, -- Vacuum Wave
      { level = 1, move = "QUICK_ATTACK" }, -- Quick Attack
      { level = 1, move = "LEER" }, -- Leer
      { level = 5, move = "FOCUS_ENERGY" }, -- Focus Energy
      { level = 9, move = "DOUBLE_TEAM" }, -- Double Team
      { level = 13, move = "PURSUIT" }, -- Pursuit
      { level = 17, move = "WING_ATTACK" }, -- Wing Attack
      { level = 21, move = "AGILITY" }, -- Agility
      { level = 25, move = "SLASH" }, -- Slash
      { level = 29, move = "U_TURN" }, -- U-turn
      { level = 33, move = "SWORDS_DANCE" }, -- Swords Dance
      { level = 37, move = "X_SCISSOR" }, -- X-Scissor
      { level = 41, move = "AIR_SLASH" }, -- Air Slash
    }
  })

  -- #124 Jynx (Ice / Psychic) | BST: 465
  -- Ability: Oblivious, Dry Skin, Forewarn
  mod.content.pokemon:patch("JYNX", {
    abilities = { "OBLIVIOUS", "DRY_SKIN", "FOREWARN" },
    types = { "ICE", "PSYCHIC" },
    baseStats = {
      hp = 65,
      attack = 50,
      defense = 35,
      speed = 105,
      special = 115, -- Gen 1 unified Special representation
      spAtk = 115,
      spDef = 95
    },
    learnset = {
      { level = 1, move = "POUND" }, -- Pound
      { level = 1, move = "LICK" }, -- Lick
      { level = 1, move = "LOVELY_KISS" }, -- Lovely Kiss
      { level = 18, move = "ICE_PUNCH" }, -- Ice Punch
      { level = 24, move = "MIND_READER" }, -- Mind Reader
      { level = 30, move = "ICE_BEAM" }, -- Ice Beam
      { level = 36, move = "PSYCHIC" }, -- Psychic
      { level = 42, move = "NASTY_PLOT" }, -- Nasty Plot
      { level = 48, move = "BLIZZARD" }, -- Blizzard
    }
  })

  -- #125 Electabuzz (Pure Electric) | BST: 500
  -- Ability: Static, Vital Spirit
  mod.content.pokemon:patch("ELECTABUZZ", {
    abilities = { "STATIC", "VITAL_SPIRIT" },
    types = { "ELECTRIC" },
    baseStats = {
      hp = 65,
      attack = 93,
      defense = 57,
      speed = 105,
      special = 95, -- Gen 1 unified Special representation
      spAtk = 95,
      spDef = 85
    },
    learnset = {
      { level = 1, move = "QUICK_ATTACK" }, -- Quick Attack
      { level = 1, move = "LEER" }, -- Leer
      { level = 1, move = "THUNDERSHOCK" }, -- Thundershock
      { level = 12, move = "LOW_KICK" }, -- Low Kick
      { level = 16, move = "SWIFT" }, -- Swift
      { level = 20, move = "SHOCK_WAVE" }, -- Shock Wave
      { level = 24, move = "LIGHT_SCREEN" }, -- Light Screen
      { level = 28, move = "THUNDER_PUNCH" }, -- Thunder Punch
      { level = 32, move = "DISCHARGE" }, -- Discharge
      { level = 36, move = "THUNDERBOLT" }, -- Thunderbolt
      { level = 40, move = "VOLT_SWITCH" }, -- Volt Switch
    }
  })

  -- #126 Magmar (Pure Fire) | BST: 505
  -- Ability: Flame Body, Vital Spirit
  mod.content.pokemon:patch("MAGMAR", {
    abilities = { "FLAME_BODY", "VITAL_SPIRIT" },
    types = { "FIRE" },
    baseStats = {
      hp = 65,
      attack = 95,
      defense = 57,
      speed = 103,
      special = 100, -- Gen 1 unified Special representation
      spAtk = 100,
      spDef = 85
    },
    learnset = {
      { level = 1, move = "SMOG" }, -- Smog
      { level = 1, move = "LEER" }, -- Leer
      { level = 1, move = "EMBER" }, -- Ember
      { level = 12, move = "FIRE_PUNCH" }, -- Fire Punch
      { level = 16, move = "FLAME_BURST" }, -- Flame Burst
      { level = 20, move = "CONFUSE_RAY" }, -- Confuse Ray
      { level = 24, move = "FIRE_SPIN" }, -- Fire Spin
      { level = 28, move = "SUNNY_DAY" }, -- Sunny Day
      { level = 32, move = "FLAMETHROWER" }, -- Flamethrower
      { level = 36, move = "FIRE_BLAST" }, -- Fire Blast
      { level = 40, move = "FOCUS_BLAST" }, -- Focus Blast
    }
  })

  -- #127 Pinsir (Bug / Fighting) | BST: 510
  -- Ability: Hyper Cutter, Moxie, Mold Breaker
  mod.content.pokemon:patch("PINSIR", {
    abilities = { "HYPER_CUTTER", "MOXIE", "MOLD_BREAKER" },
    types = { "BUG", "FIGHTING" },
    baseStats = {
      hp = 65,
      attack = 125,
      defense = 100,
      speed = 95,
      special = 55, -- Gen 1 unified Special representation
      spAtk = 55,
      spDef = 70
    },
    learnset = {
      { level = 1, move = "VICEGRIP" }, -- Vicegrip
      { level = 1, move = "FOCUS_ENERGY" }, -- Focus Energy
      { level = 4, move = "BIND" }, -- Bind
      { level = 8, move = "SEISMIC_TOSS" }, -- Seismic Toss
      { level = 12, move = "BUG_BITE" }, -- Bug Bite
      { level = 16, move = "STORM_THROW" }, -- Storm Throw
      { level = 20, move = "BRICK_BREAK" }, -- Brick Break
      { level = 24, move = "X_SCISSOR" }, -- X-Scissor
      { level = 28, move = "SWORDS_DANCE" }, -- Swords Dance
      { level = 32, move = "CLOSE_COMBAT" }, -- Close Combat
      { level = 36, move = "SUPERPOWER" }, -- Superpower
    }
  })

  -- #128 Tauros (Normal / Fighting) | BST: 490
  -- Ability: Intimidate, Sheer Force, Anger Point
  mod.content.pokemon:patch("TAUROS", {
    abilities = { "INTIMIDATE", "SHEER_FORCE", "ANGER_POINT" },
    types = { "NORMAL", "FIGHTING" },
    baseStats = {
      hp = 75,
      attack = 100,
      defense = 95,
      speed = 110,
      special = 40, -- Gen 1 unified Special representation
      spAtk = 40,
      spDef = 70
    },
    learnset = {
      { level = 1, move = "TACKLE" }, -- Tackle
      { level = 1, move = "TAIL_WHIP" }, -- Tail Whip
      { level = 3, move = "RAGE" }, -- Rage
      { level = 7, move = "HORN_ATTACK" }, -- Horn Attack
      { level = 11, move = "SCARY_FACE" }, -- Scary Face
      { level = 15, move = "PURSUIT" }, -- Pursuit
      { level = 19, move = "REST" }, -- Rest
      { level = 23, move = "ZEN_HEADBUTT" }, -- Zen Headbutt
      { level = 27, move = "TAKE_DOWN" }, -- Take Down
      { level = 31, move = "CLOSE_COMBAT" }, -- Close Combat
      { level = 35, move = "ROCK_CLIMB" }, -- Rock Climb
      { level = 39, move = "DOUBLE_EDGE" }, -- Double-Edge
    }
  })

  -- #129 Magikarp (Water / Dark) | BST: 200
  -- Ability: Swift Swim, Rattled
  mod.content.pokemon:patch("MAGIKARP", {
    abilities = { "SWIFT_SWIM", "RATTLED" },
    types = { "WATER", "DARK" },
    baseStats = {
      hp = 20,
      attack = 10,
      defense = 55,
      speed = 80,
      special = 15, -- Gen 1 unified Special representation
      spAtk = 15,
      spDef = 20
    },
    learnset = {
      { level = 1, move = "SPLASH" }, -- Splash
      { level = 15, move = "TACKLE" }, -- Tackle
      { level = 30, move = "FLAIL" }, -- Flail
    }
  })

  -- #130 Gyarados (Water / Dark) | BST: 540
  -- Ability: Intimidate, Moxie
  mod.content.pokemon:patch("GYARADOS", {
    abilities = { "INTIMIDATE", "MOXIE" },
    types = { "WATER", "DARK" },
    baseStats = {
      hp = 95,
      attack = 125,
      defense = 79,
      speed = 81,
      special = 60, -- Gen 1 unified Special representation
      spAtk = 60,
      spDef = 100
    },
    learnset = {
      { level = 1, move = "BITE" }, -- Bite
      { level = 1, move = "THRASH" }, -- Thrash
      { level = 20, move = "WATERFALL" }, -- Waterfall
      { level = 28, move = "CRUNCH" }, -- Crunch
      { level = 36, move = "DRAGON_DANCE" }, -- Dragon Dance
      { level = 44, move = "ICE_FANG" }, -- Ice Fang
      { level = 52, move = "POWER_WHIP" }, -- Power Whip
      { level = 60, move = "OUTRAGE" }, -- Outrage
    }
  })

  -- #131 Lapras (Water / Ice) | BST: 535
  -- Ability: Water Absorb, Hydration, Shell Armor
  mod.content.pokemon:patch("LAPRAS", {
    abilities = { "WATER_ABSORB", "HYDRATION", "SHELL_ARMOR" },
    types = { "WATER", "ICE" },
    baseStats = {
      hp = 130,
      attack = 85,
      defense = 80,
      speed = 60,
      special = 85, -- Gen 1 unified Special representation
      spAtk = 85,
      spDef = 95
    },
    learnset = {
      { level = 1, move = "WATER_GUN" }, -- Water Gun
      { level = 1, move = "GROWL" }, -- Growl
      { level = 1, move = "SING" }, -- Sing
      { level = 4, move = "MIST" }, -- Mist
      { level = 7, move = "CONFUSE_RAY" }, -- Confuse Ray
      { level = 10, move = "ICE_SHARD" }, -- Ice Shard
      { level = 14, move = "WATER_PULSE" }, -- Water Pulse
      { level = 18, move = "BODY_SLAM" }, -- Body Slam
      { level = 22, move = "ICE_BEAM" }, -- Ice Beam
      { level = 27, move = "RAIN_DANCE" }, -- Rain Dance
      { level = 32, move = "PERISH_SONG" }, -- Perish Song
      { level = 37, move = "HYDRO_PUMP" }, -- Hydro Pump
      { level = 43, move = "FREEZE_DRY" }, -- Freeze-Dry
    }
  })

  -- #132 Ditto (Pure Normal) | BST: 308
  -- Ability: Limber, Imposter
  mod.content.pokemon:patch("DITTO", {
    abilities = { "LIMBER", "IMPOSTER" },
    types = { "NORMAL" },
    baseStats = {
      hp = 68,
      attack = 48,
      defense = 48,
      speed = 48,
      special = 48, -- Gen 1 unified Special representation
      spAtk = 48,
      spDef = 48
    },
    learnset = {
      { level = 1, move = "TRANSFORM" }, -- Transform
    }
  })

  -- #133 Eevee (Pure Normal) | BST: 325
  -- Ability: Run Away, Anticipation, Adaptability
  mod.content.pokemon:patch("EEVEE", {
    abilities = { "RUN_AWAY", "ANTICIPATION", "ADAPTABILITY" },
    types = { "NORMAL" },
    baseStats = {
      hp = 55,
      attack = 55,
      defense = 50,
      speed = 55,
      special = 45, -- Gen 1 unified Special representation
      spAtk = 45,
      spDef = 65
    },
    learnset = {
      { level = 1, move = "COVET" }, -- Covet
      { level = 1, move = "HELPING_HAND" }, -- Helping Hand
      { level = 1, move = "TACKLE" }, -- Tackle
      { level = 1, move = "GROWL" }, -- Growl
      { level = 1, move = "TAIL_WHIP" }, -- Tail Whip
      { level = 5, move = "SAND_ATTACK" }, -- Sand Attack
      { level = 10, move = "QUICK_ATTACK" }, -- Quick Attack
      { level = 15, move = "BABY_DOLL_EYES" }, -- Baby-Doll Eyes
      { level = 20, move = "SWIFT" }, -- Swift
      { level = 25, move = "BITE" }, -- Bite
    }
  })

  -- #134 Vaporeon (Pure Water) | BST: 525
  -- Ability: Water Absorb, Hydration
  mod.content.pokemon:patch("VAPOREON", {
    abilities = { "WATER_ABSORB", "HYDRATION" },
    types = { "WATER" },
    baseStats = {
      hp = 130,
      attack = 65,
      defense = 60,
      speed = 65,
      special = 110, -- Gen 1 unified Special representation
      spAtk = 110,
      spDef = 95
    },
    learnset = {
      { level = 1, move = "WATER_GUN" }, -- Water Gun
      { level = 1, move = "QUICK_ATTACK" }, -- Quick Attack
      { level = 1, move = "WISH" }, -- Wish
      { level = 20, move = "SCALD" }, -- Scald
      { level = 28, move = "ACID_ARMOR" }, -- Acid Armor
      { level = 36, move = "WISH" }, -- Wish
      { level = 44, move = "HYDRO_PUMP" }, -- Hydro Pump
      { level = 52, move = "ICE_BEAM" }, -- Ice Beam
      { level = 60, move = "BATON_PASS" }, -- Baton Pass
    }
  })

  -- #135 Jolteon (Pure Electric) | BST: 525
  -- Ability: Volt Absorb, Quick Feet
  mod.content.pokemon:patch("JOLTEON", {
    abilities = { "VOLT_ABSORB", "QUICK_FEET" },
    types = { "ELECTRIC" },
    baseStats = {
      hp = 65,
      attack = 65,
      defense = 60,
      speed = 130,
      special = 110, -- Gen 1 unified Special representation
      spAtk = 110,
      spDef = 95
    },
    learnset = {
      { level = 1, move = "THUNDERSHOCK" }, -- Thundershock
      { level = 1, move = "QUICK_ATTACK" }, -- Quick Attack
      { level = 1, move = "VOLT_SWITCH" }, -- Volt Switch
      { level = 20, move = "DISCHARGE" }, -- Discharge
      { level = 28, move = "SHADOW_BALL" }, -- Shadow Ball
      { level = 36, move = "VOLT_SWITCH" }, -- Volt Switch
      { level = 44, move = "THUNDERBOLT" }, -- Thunderbolt
      { level = 52, move = "PIN_MISSILE" }, -- Pin Missile
      { level = 60, move = "AGILITY" }, -- Agility
    }
  })

  -- #136 Flareon (Pure Fire) | BST: 545
  -- Ability: Flash Fire, Guts
  mod.content.pokemon:patch("FLAREON", {
    abilities = { "FLASH_FIRE", "GUTS" },
    types = { "FIRE" },
    baseStats = {
      hp = 65,
      attack = 130,
      defense = 60,
      speed = 85,
      special = 95, -- Gen 1 unified Special representation
      spAtk = 95,
      spDef = 110
    },
    learnset = {
      { level = 1, move = "EMBER" }, -- Ember
      { level = 1, move = "QUICK_ATTACK" }, -- Quick Attack
      { level = 1, move = "BITE" }, -- Bite
      { level = 20, move = "FLAME_CHARGE" }, -- Flame Charge
      { level = 28, move = "FIRE_FANG" }, -- Fire Fang
      { level = 36, move = "FLARE_BLITZ" }, -- Flare Blitz
      { level = 44, move = "SUPERPOWER" }, -- Superpower
      { level = 52, move = "WILL_O_WISP" }, -- Will-O-Wisp
      { level = 60, move = "WISH" }, -- Wish
    }
  })

  -- #137 Porygon (Normal / Psychic) | BST: 415
  -- Ability: Trace, Analytic, Download
  mod.content.pokemon:patch("PORYGON", {
    abilities = { "TRACE", "ANALYTIC", "DOWNLOAD" },
    types = { "NORMAL", "PSYCHIC" },
    baseStats = {
      hp = 65,
      attack = 60,
      defense = 70,
      speed = 40,
      special = 105, -- Gen 1 unified Special representation
      spAtk = 105,
      spDef = 75
    },
    learnset = {
      { level = 1, move = "CONVERSION_2" }, -- Conversion 2
      { level = 1, move = "TACKLE" }, -- Tackle
      { level = 1, move = "CONVERSION" }, -- Conversion
      { level = 1, move = "SHARPEN" }, -- Sharpen
      { level = 7, move = "PSYBEAM" }, -- Psybeam
      { level = 12, move = "AGILITY" }, -- Agility
      { level = 18, move = "RECOVER" }, -- Recover
      { level = 23, move = "TRI_ATTACK" }, -- Tri Attack
      { level = 29, move = "DISCHARGE" }, -- Discharge
      { level = 34, move = "LOCK_ON" }, -- Lock-On
      { level = 40, move = "ZAP_CANNON" }, -- Zap Cannon
    }
  })

  -- #138 Omanyte (Rock / Water) | BST: 355
  -- Ability: Swift Swim, Weak Armor, Shell Armor
  mod.content.pokemon:patch("OMANYTE", {
    abilities = { "SWIFT_SWIM", "WEAK_ARMOR", "SHELL_ARMOR" },
    types = { "ROCK", "WATER" },
    baseStats = {
      hp = 35,
      attack = 40,
      defense = 100,
      speed = 35,
      special = 90, -- Gen 1 unified Special representation
      spAtk = 90,
      spDef = 55
    },
    learnset = {
      { level = 1, move = "CONSTRICT" }, -- Constrict
      { level = 1, move = "WITHDRAW" }, -- Withdraw
      { level = 7, move = "BITE" }, -- Bite
      { level = 10, move = "WATER_GUN" }, -- Water Gun
      { level = 16, move = "ROLLOUT" }, -- Rollout
      { level = 19, move = "MUD_SHOT" }, -- Mud Shot
      { level = 25, move = "BRINE" }, -- Brine
      { level = 28, move = "PROTECT" }, -- Protect
    }
  })

  -- #139 Omastar (Rock / Water) | BST: 505
  -- Ability: Swift Swim, Weak Armor, Shell Armor
  mod.content.pokemon:patch("OMASTAR", {
    abilities = { "SWIFT_SWIM", "WEAK_ARMOR", "SHELL_ARMOR" },
    types = { "ROCK", "WATER" },
    baseStats = {
      hp = 80,
      attack = 60,
      defense = 125,
      speed = 55,
      special = 115, -- Gen 1 unified Special representation
      spAtk = 115,
      spDef = 70
    },
    learnset = {
      { level = 1, move = "WATER_GUN" }, -- Water Gun
      { level = 1, move = "ROCK_SLIDE" }, -- Rock Slide
      { level = 1, move = "SHELL_SMASH" }, -- Shell Smash
      { level = 20, move = "ANCIENT_POWER" }, -- Ancient Power
      { level = 28, move = "SCALD" }, -- Scald
      { level = 36, move = "HYDRO_PUMP" }, -- Hydro Pump
      { level = 44, move = "SPIKES" }, -- Spikes
      { level = 52, move = "SHELL_SMASH" }, -- Shell Smash
      { level = 60, move = "ICE_BEAM" }, -- Ice Beam
    }
  })

  -- #140 Kabuto (Rock / Bug) | BST: 355
  -- Ability: Swift Swim, Weak Armor, Battle Armor
  mod.content.pokemon:patch("KABUTO", {
    abilities = { "SWIFT_SWIM", "WEAK_ARMOR", "BATTLE_ARMOR" },
    types = { "ROCK", "BUG" },
    baseStats = {
      hp = 30,
      attack = 80,
      defense = 90,
      speed = 55,
      special = 55, -- Gen 1 unified Special representation
      spAtk = 55,
      spDef = 45
    },
    learnset = {
      { level = 1, move = "SCRATCH" }, -- Scratch
      { level = 1, move = "HARDEN" }, -- Harden
      { level = 7, move = "ABSORB" }, -- Absorb
      { level = 10, move = "LEER" }, -- Leer
      { level = 16, move = "MUD_SHOT" }, -- Mud Shot
      { level = 19, move = "AQUA_JET" }, -- Aqua Jet
      { level = 25, move = "ENDURE" }, -- Endure
      { level = 28, move = "METAL_CLAW" }, -- Metal Claw
    }
  })

  -- #141 Kabutops (Rock / Bug) | BST: 505
  -- Ability: Swift Swim, Weak Armor, Battle Armor
  mod.content.pokemon:patch("KABUTOPS", {
    abilities = { "SWIFT_SWIM", "WEAK_ARMOR", "BATTLE_ARMOR" },
    types = { "ROCK", "BUG" },
    baseStats = {
      hp = 60,
      attack = 115,
      defense = 105,
      speed = 90,
      special = 65, -- Gen 1 unified Special representation
      spAtk = 65,
      spDef = 70
    },
    learnset = {
      { level = 1, move = "SCRATCH" }, -- Scratch
      { level = 1, move = "AQUA_JET" }, -- Aqua Jet
      { level = 1, move = "X_SCISSOR" }, -- X-Scissor
      { level = 20, move = "ROCK_SLIDE" }, -- Rock Slide
      { level = 28, move = "LIQUIDATION" }, -- Liquidation
      { level = 36, move = "X_SCISSOR" }, -- X-Scissor
      { level = 44, move = "STONE_EDGE" }, -- Stone Edge
      { level = 52, move = "SWORDS_DANCE" }, -- Swords Dance
      { level = 60, move = "SUPERPOWER" }, -- Superpower
    }
  })

  -- #142 Aerodactyl (Rock / Flying) | BST: 515
  -- Ability: Rock Head, Unnerve, Pressure
  mod.content.pokemon:patch("AERODACTYL", {
    abilities = { "ROCK_HEAD", "UNNERVE", "PRESSURE" },
    types = { "ROCK", "FLYING" },
    baseStats = {
      hp = 80,
      attack = 105,
      defense = 65,
      speed = 130,
      special = 60, -- Gen 1 unified Special representation
      spAtk = 60,
      spDef = 75
    },
    learnset = {
      { level = 1, move = "ICE_FANG" }, -- Ice Fang
      { level = 1, move = "FIRE_FANG" }, -- Fire Fang
      { level = 1, move = "THUNDER_FANG" }, -- Thunder Fang
      { level = 1, move = "WING_ATTACK" }, -- Wing Attack
      { level = 1, move = "SUPERSONIC" }, -- Supersonic
      { level = 1, move = "BITE" }, -- Bite
      { level = 17, move = "ROAR" }, -- Roar
      { level = 25, move = "ANCIENT_POWER" }, -- Ancient Power
      { level = 33, move = "CRUNCH" }, -- Crunch
      { level = 41, move = "TAKE_DOWN" }, -- Take Down
      { level = 49, move = "SKY_DROP" }, -- Sky Drop
      { level = 57, move = "IRON_HEAD" }, -- Iron Head
      { level = 65, move = "STONE_EDGE" }, -- Stone Edge
      { level = 73, move = "HEAD_SMASH" }, -- Head Smash
    }
  })

  -- #143 Snorlax (Pure Normal) | BST: 540
  -- Ability: Immunity, Gluttony, Thick Fat
  mod.content.pokemon:patch("SNORLAX", {
    abilities = { "IMMUNITY", "GLUTTONY", "THICK_FAT" },
    types = { "NORMAL" },
    baseStats = {
      hp = 160,
      attack = 110,
      defense = 65,
      speed = 30,
      special = 65, -- Gen 1 unified Special representation
      spAtk = 65,
      spDef = 110
    },
    learnset = {
      { level = 1, move = "TACKLE" }, -- Tackle
      { level = 4, move = "BELLY_DRUM" }, -- Belly Drum
      { level = 9, move = "DEFENSE_CURL" }, -- Defense Curl
      { level = 12, move = "AMNESIA" }, -- Amnesia
      { level = 17, move = "LICK" }, -- Lick
      { level = 20, move = "REST" }, -- Rest
      { level = 24, move = "SNORE" }, -- Snore
      { level = 28, move = "BODY_SLAM" }, -- Body Slam
      { level = 33, move = "HEAVY_SLAM" }, -- Heavy Slam
      { level = 38, move = "HIGH_HORSEPOWER" }, -- High Horsepower
      { level = 44, move = "CRUNCH" }, -- Crunch
      { level = 49, move = "GIGA_IMPACT" }, -- Giga Impact
    }
  })

  -- #144 Articuno (Ice / Flying) | BST: 600
  -- Ability: Pressure, Snow Cloak
  mod.content.pokemon:patch("ARTICUNO", {
    abilities = { "PRESSURE", "SNOW_CLOAK" },
    types = { "ICE", "FLYING" },
    baseStats = {
      hp = 90,
      attack = 85,
      defense = 100,
      speed = 85,
      special = 115, -- Gen 1 unified Special representation
      spAtk = 115,
      spDef = 125
    },
    learnset = {
      { level = 1, move = "GUST" }, -- Gust
      { level = 1, move = "POWDER_SNOW" }, -- Powder Snow
      { level = 8, move = "MIST" }, -- Mist
      { level = 15, move = "ICE_SHARD" }, -- Ice Shard
      { level = 22, move = "MIND_READER" }, -- Mind Reader
      { level = 29, move = "ANCIENT_POWER" }, -- Ancient Power
      { level = 36, move = "AGILITY" }, -- Agility
      { level = 43, move = "ICE_BEAM" }, -- Ice Beam
      { level = 50, move = "REFLECT" }, -- Reflect
      { level = 57, move = "ROOST" }, -- Roost
      { level = 64, move = "BLIZZARD" }, -- Blizzard
      { level = 71, move = "HURRICANE" }, -- Hurricane
    }
  })

  -- #145 Zapdos (Electric / Flying) | BST: 580
  -- Ability: Pressure, Static
  mod.content.pokemon:patch("ZAPDOS", {
    abilities = { "PRESSURE", "STATIC" },
    types = { "ELECTRIC", "FLYING" },
    baseStats = {
      hp = 90,
      attack = 90,
      defense = 85,
      speed = 100,
      special = 125, -- Gen 1 unified Special representation
      spAtk = 125,
      spDef = 90
    },
    learnset = {
      { level = 1, move = "PECK" }, -- Peck
      { level = 1, move = "THUNDERSHOCK" }, -- Thundershock
      { level = 8, move = "THUNDER_WAVE" }, -- Thunder Wave
      { level = 15, move = "DETECT" }, -- Detect
      { level = 22, move = "PLUCK" }, -- Pluck
      { level = 29, move = "ANCIENT_POWER" }, -- Ancient Power
      { level = 36, move = "CHARGE" }, -- Charge
      { level = 43, move = "DISCHARGE" }, -- Discharge
      { level = 50, move = "LIGHT_SCREEN" }, -- Light Screen
      { level = 57, move = "ROOST" }, -- Roost
      { level = 64, move = "THUNDERBOLT" }, -- Thunderbolt
      { level = 71, move = "ZAP_CANNON" }, -- Zap Cannon
    }
  })

  -- #146 Moltres (Fire / Flying) | BST: 580
  -- Ability: Pressure, Flame Body
  mod.content.pokemon:patch("MOLTRES", {
    abilities = { "PRESSURE", "FLAME_BODY" },
    types = { "FIRE", "FLYING" },
    baseStats = {
      hp = 90,
      attack = 100,
      defense = 90,
      speed = 90,
      special = 125, -- Gen 1 unified Special representation
      spAtk = 125,
      spDef = 85
    },
    learnset = {
      { level = 1, move = "WING_ATTACK" }, -- Wing Attack
      { level = 1, move = "EMBER" }, -- Ember
      { level = 8, move = "FIRE_SPIN" }, -- Fire Spin
      { level = 15, move = "AGILITY" }, -- Agility
      { level = 22, move = "ENDURE" }, -- Endure
      { level = 29, move = "ANCIENT_POWER" }, -- Ancient Power
      { level = 36, move = "FLAMETHROWER" }, -- Flamethrower
      { level = 43, move = "AIR_SLASH" }, -- Air Slash
      { level = 50, move = "SAFEGUARD" }, -- Safeguard
      { level = 57, move = "ROOST" }, -- Roost
      { level = 64, move = "HEAT_WAVE" }, -- Heat Wave
      { level = 71, move = "SOLAR_BEAM" }, -- Solar Beam
    }
  })

  -- #147 Dratini (Dragon / Flying) | BST: 300
  -- Ability: Shed Skin, Marvel Scale
  mod.content.pokemon:patch("DRATINI", {
    abilities = { "SHED_SKIN", "MARVEL_SCALE" },
    types = { "DRAGON", "FLYING" },
    baseStats = {
      hp = 41,
      attack = 64,
      defense = 45,
      speed = 50,
      special = 50, -- Gen 1 unified Special representation
      spAtk = 50,
      spDef = 50
    },
    learnset = {
      { level = 1, move = "WRAP" }, -- Wrap
      { level = 1, move = "LEER" }, -- Leer
      { level = 5, move = "THUNDER_WAVE" }, -- Thunder Wave
      { level = 11, move = "TWISTER" }, -- Twister
      { level = 15, move = "DRAGON_RAGE" }, -- Dragon Rage
      { level = 21, move = "SLAM" }, -- Slam
      { level = 25, move = "AGILITY" }, -- Agility
      { level = 31, move = "DRAGON_TAIL" }, -- Dragon Tail
      { level = 35, move = "AQUA_TAIL" }, -- Aqua Tail
      { level = 41, move = "DRAGON_PULSE" }, -- Dragon Pulse
    }
  })

  -- #148 Dragonair (Dragon / Flying) | BST: 420
  -- Ability: Shed Skin, Marvel Scale
  mod.content.pokemon:patch("DRAGONAIR", {
    abilities = { "SHED_SKIN", "MARVEL_SCALE" },
    types = { "DRAGON", "FLYING" },
    baseStats = {
      hp = 61,
      attack = 84,
      defense = 65,
      speed = 70,
      special = 70, -- Gen 1 unified Special representation
      spAtk = 70,
      spDef = 70
    },
    learnset = {
      { level = 1, move = "WRAP" }, -- Wrap
      { level = 1, move = "TWISTER" }, -- Twister
      { level = 1, move = "DRAGON_PULSE" }, -- Dragon Pulse
      { level = 21, move = "SLAM" }, -- Slam
      { level = 27, move = "AGILITY" }, -- Agility
      { level = 33, move = "DRAGON_TAIL" }, -- Dragon Tail
      { level = 39, move = "AQUA_TAIL" }, -- Aqua Tail
      { level = 45, move = "DRAGON_RUSH" }, -- Dragon Rush
      { level = 51, move = "SAFEGUARD" }, -- Safeguard
      { level = 57, move = "OUTRAGE" }, -- Outrage
    }
  })

  -- #149 Dragonite (Dragon / Flying) | BST: 600
  -- Ability: Inner Focus, Multiscale
  mod.content.pokemon:patch("DRAGONITE", {
    abilities = { "INNER_FOCUS", "MULTISCALE" },
    types = { "DRAGON", "FLYING" },
    baseStats = {
      hp = 91,
      attack = 134,
      defense = 95,
      speed = 80,
      special = 100, -- Gen 1 unified Special representation
      spAtk = 100,
      spDef = 100
    },
    learnset = {
      { level = 1, move = "FIRE_PUNCH" }, -- Fire Punch
      { level = 1, move = "THUNDER_PUNCH" }, -- Thunder Punch
      { level = 1, move = "DRAGON_CLAW" }, -- Dragon Claw
      { level = 1, move = "ROOST" }, -- Roost
      { level = 27, move = "EXTREME_SPEED" }, -- Extreme Speed
      { level = 35, move = "DRAGON_DANCE" }, -- Dragon Dance
      { level = 45, move = "HURRICANE" }, -- Hurricane
      { level = 55, move = "OUTRAGE" }, -- Outrage
      { level = 65, move = "SUPERPOWER" }, -- Superpower
    }
  })

  -- #150 Mewtwo (Pure Psychic) | BST: 680
  -- Ability: Pressure, Unnerve
  mod.content.pokemon:patch("MEWTWO", {
    abilities = { "PRESSURE", "UNNERVE" },
    types = { "PSYCHIC" },
    baseStats = {
      hp = 106,
      attack = 110,
      defense = 90,
      speed = 130,
      special = 154, -- Gen 1 unified Special representation
      spAtk = 154,
      spDef = 90
    },
    learnset = {
      { level = 1, move = "PRESSURE" }, -- Pressure
      { level = 1, move = "CONFUSION" }, -- Confusion
      { level = 1, move = "DISABLE" }, -- Disable
      { level = 8, move = "SWIFT" }, -- Swift
      { level = 15, move = "PSYCHO_CUT" }, -- Psycho Cut
      { level = 22, move = "AMNESIA" }, -- Amnesia
      { level = 29, move = "AURA_SPHERE" }, -- Aura Sphere
      { level = 36, move = "PSYCHIC" }, -- Psychic
      { level = 43, move = "PSYSTRIKE" }, -- Psystrike
      { level = 50, move = "RECOVER" }, -- Recover
      { level = 57, move = "FUTURE_SIGHT" }, -- Future Sight
      { level = 64, move = "MIST" }, -- Mist
      { level = 70, move = "PSYSTRIKE" }, -- Psystrike
    }
  })

  -- #151 Mew (Pure Psychic) | BST: 600
  -- Ability: Synchronize
  mod.content.pokemon:patch("MEW", {
    abilities = { "SYNCHRONIZE" },
    types = { "PSYCHIC" },
    baseStats = {
      hp = 100,
      attack = 100,
      defense = 100,
      speed = 100,
      special = 100, -- Gen 1 unified Special representation
      spAtk = 100,
      spDef = 100
    },
    learnset = {
      { level = 1, move = "POUND" }, -- Pound
      { level = 1, move = "REFLECT" }, -- Reflect
      { level = 1, move = "TRANSFORM" }, -- Transform
      { level = 10, move = "MEGA_PUNCH" }, -- Mega Punch
      { level = 20, move = "METRONOME" }, -- Metronome
      { level = 30, move = "PSYCHIC" }, -- Psychic
      { level = 40, move = "BARRIER" }, -- Barrier
      { level = 50, move = "ANCIENT_POWER" }, -- Ancient Power
      { level = 60, move = "AMNESIA" }, -- Amnesia
      { level = 70, move = "ME_FIRST" }, -- Me First
      { level = 80, move = "NASTY_PLOT" }, -- Nasty Plot
      { level = 90, move = "AURA_SPHERE" }, -- Aura Sphere
      { level = 100, move = "TRANSFORM" }, -- Transform
    }
  })

  mod.log:info('Kanto Revitalised: Gen 1 Roster (#001 - #151) successfully loaded!')
end