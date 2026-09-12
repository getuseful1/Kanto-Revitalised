-- ============================================================================
-- Kanto Revitalised - Trainer Parties Overhaul (trainers.lua)
-- Gen1Recomp Mod API v2
-- Rebalances Gym Leaders, Elite Four, Rival, and Boss trainer parties
-- to reflect the 151 Unique Typing ecosystem and modern competitive movesets.
-- ============================================================================

return function(mod)
  if not mod or not mod.content or not mod.content.trainers then
    error("trainers.lua requires a valid gen1recomp mod object!")
  end

  mod.log:info("Kanto Revitalised: Overhauling Gym Leaders, Elite Four, and Boss trainer parties...")

  -- 1. GYM LEADER BROCK (Rock / Fighting Specialist)
  mod.content.trainers:patch("BROCK", {
    name = "BROCK",
    title = "LEADER",
    party = {
      { species = "GEODUDE", level = 12, moves = { "ROCK_THROW", "TACKLE", "DEFENSE_CURL" } },
      { species = "MACHOP", level = 12, moves = { "KARATE_CHOP", "LOW_SWEEP", "FOCUS_ENERGY" } },
      { species = "ONIX", level = 14, moves = { "ROCK_THROW", "ROCK_TOMB", "BIND", "HARDEN" } }
    }
  })

  -- 2. GYM LEADER MISTY (Water / Psychic / Fairy Specialist)
  mod.content.trainers:patch("MISTY", {
    name = "MISTY",
    title = "LEADER",
    party = {
      { species = "PSYDUCK", level = 18, moves = { "WATER_GUN", "CONFUSION", "DISABLE" } },
      { species = "STARYU", level = 19, moves = { "WATER_PULSE", "FAIRY_WIND", "RECOVER" } },
      { species = "STARMIE", level = 21, moves = { "SCALD", "PSYBEAM", "DISARMING_VOICE", "RECOVER" } }
    }
  })

  -- 3. GYM LEADER LT. SURGE (Electric / Fighting Specialist)
  mod.content.trainers:patch("LT_SURGE", {
    name = "LT. SURGE",
    title = "LEADER",
    party = {
      { species = "VOLTORB", level = 21, moves = { "SPARK", "ROLLOUT", "SCARY_FACE" } },
      { species = "PIKACHU", level = 22, moves = { "THUNDERBOLT", "DOUBLE_KICK", "QUICK_ATTACK" } },
      { species = "RAICHU", level = 24, moves = { "VOLT_SWITCH", "BRICK_BREAK", "THUNDER_WAVE", "QUICK_ATTACK" } }
    }
  })

  -- 4. GYM LEADER ERIKA (Grass / Dark / Fairy Specialist)
  mod.content.trainers:patch("ERIKA", {
    name = "ERIKA",
    title = "LEADER",
    party = {
      { species = "TANGELA", level = 28, moves = { "GIGA_DRAIN", "BIND", "SLEEP_POWDER" } },
      { species = "VICTREEBEL", level = 29, moves = { "LEAF_BLADE", "SUCKER_PUNCH", "POISON_JAB" } },
      { species = "VILEPLUME", level = 32, moves = { "GIGA_DRAIN", "MOONBLAST", "SLUDGE_BOMB", "SYNTHESIS" } }
    }
  })

  -- 5. GYM LEADER KOGA (Poison / Dark Specialist)
  mod.content.trainers:patch("KOGA", {
    name = "KOGA",
    title = "LEADER",
    party = {
      { species = "GOLBAT", level = 37, moves = { "POISON_JAB", "AIR_SLASH", "U_TURN", "CONFUSE_RAY" } },
      { species = "MUK", level = 38, moves = { "POISON_JAB", "CRUNCH", "SHADOW_SNEAK", "ACID_ARMOR" } },
      { species = "WEEZING", level = 38, moves = { "SLUDGE_BOMB", "FLAMETHROWER", "WILL_O_WISP", "TOXIC_SPIKES" } },
      { species = "ARBOK", level = 43, moves = { "POISON_JAB", "CRUNCH", "COIL", "SUCKER_PUNCH" } }
    }
  })

  -- 6. GYM LEADER SABRINA (Psychic / Dark / Fairy Specialist)
  mod.content.trainers:patch("SABRINA", {
    name = "SABRINA",
    title = "LEADER",
    party = {
      { species = "KADABRA", level = 38, moves = { "PSYCHIC", "SHADOW_BALL", "REFLECT" } },
      { species = "MR_MIME", level = 38, moves = { "PSYCHIC", "DAZZLING_GLEAM", "LIGHT_SCREEN", "BATON_PASS" } },
      { species = "HYPNO", level = 40, moves = { "PSYCHIC", "DRAIN_PUNCH", "HYPNOSIS", "NASTY_PLOT" } },
      { species = "ALAKAZAM", level = 43, moves = { "PSYCHIC", "FOCUS_BLAST", "SHADOW_BALL", "RECOVER" } }
    }
  })

  -- 7. GYM LEADER BLAINE (Fire / Dragon / Ghost Specialist)
  mod.content.trainers:patch("BLAINE", {
    name = "BLAINE",
    title = "LEADER",
    party = {
      { species = "RAPIDASH", level = 42, moves = { "FLARE_BLITZ", "PLAY_ROUGH", "HIGH_HORSEPOWER", "WILL_O_WISP" } },
      { species = "NINETALES", level = 44, moves = { "FIRE_BLAST", "SHADOW_BALL", "NASTY_PLOT", "WILL_O_WISP" } },
      { species = "ARCANINE", level = 45, moves = { "FLARE_BLITZ", "EXTREME_SPEED", "CLOSE_COMBAT", "CRUNCH" } },
      { species = "CHARIZARD", level = 47, moves = { "FLAMETHROWER", "DRAGON_PULSE", "AIR_SLASH", "DRAGON_DANCE" } }
    }
  })

  -- 8. GYM LEADER GIOVANNI (Ground / Steel / Rock Specialist)
  mod.content.trainers:patch("GIOVANNI", {
    name = "GIOVANNI",
    title = "LEADER",
    party = {
      { species = "DUGTRIO", level = 45, moves = { "EARTHQUAKE", "ROCK_SLIDE", "SUCKER_PUNCH", "STEALTH_ROCK" } },
      { species = "SANDSLASH", level = 46, moves = { "EARTHQUAKE", "IRON_HEAD", "RAPID_SPIN", "SWORDS_DANCE" } },
      { species = "NIDOQUEEN", level = 47, moves = { "EARTH_POWER", "SLUDGE_WAVE", "ICE_BEAM", "STEALTH_ROCK" } },
      { species = "NIDOKING", level = 48, moves = { "EARTHQUAKE", "CLOSE_COMBAT", "POISON_JAB", "ICE_PUNCH" } },
      { species = "RHYDON", level = 50, moves = { "EARTHQUAKE", "STONE_EDGE", "MEGAHORN", "HAMMER_ARM" } }
    }
  })

  -- 9. ELITE FOUR LORELEI (Ice / Steel / Dragon Specialist)
  mod.content.trainers:patch("LORELEI", {
    name = "LORELEI",
    title = "ELITE FOUR",
    party = {
      { species = "DEWGONG", level = 54, moves = { "SURF", "ICE_BEAM", "SIGNAL_BEAM", "REST" } },
      { species = "CLOYSTER", level = 53, moves = { "ICICLE_SPEAR", "ROCK_BLAST", "RAZOR_SHELL", "SHELL_SMASH" } },
      { species = "JYNX", level = 54, moves = { "ICE_BEAM", "PSYCHIC", "LOVELY_KISS", "NASTY_PLOT" } },
      { species = "LAPRAS", level = 56, moves = { "HYDRO_PUMP", "ICE_BEAM", "THUNDERBOLT", "CONFUSE_RAY" } },
      { species = "ARTICUNO", level = 58, moves = { "BLIZZARD", "HURRICANE", "ROOST", "U_TURN" } }
    }
  })

  -- 10. ELITE FOUR BRUNO (Fighting / Rock / Bug Specialist)
  mod.content.trainers:patch("BRUNO", {
    name = "BRUNO",
    title = "ELITE FOUR",
    party = {
      { species = "HITMONLEE", level = 55, moves = { "HIGH_JUMP_KICK", "KNOCK_OFF", "POISON_JAB", "MACH_PUNCH" } },
      { species = "HITMONCHAN", level = 55, moves = { "CLOSE_COMBAT", "ICE_PUNCH", "THUNDERPUNCH", "BULLET_PUNCH" } },
      { species = "PINSIR", level = 56, moves = { "CLOSE_COMBAT", "X_SCISSOR", "STONE_EDGE", "SWORDS_DANCE" } },
      { species = "ONIX", level = 56, moves = { "EARTHQUAKE", "STONE_EDGE", "CLOSE_COMBAT", "STEALTH_ROCK" } },
      { species = "MACHAMP", level = 58, moves = { "DYNAMIC_PUNCH", "STONE_EDGE", "HEAVY_SLAM", "BULLET_PUNCH" } }
    }
  })

  -- 11. ELITE FOUR AGATHA (Ghost / Poison Specialist)
  mod.content.trainers:patch("AGATHA", {
    name = "AGATHA",
    title = "ELITE FOUR",
    party = {
      { species = "PARASECT", level = 56, moves = { "SPORE", "SHADOW_CLAW", "X_SCISSOR", "SWORDS_DANCE" } },
      { species = "MAROWAK", level = 56, moves = { "SHADOW_BONE", "EARTHQUAKE", "ROCK_SLIDE", "SWORDS_DANCE" } },
      { species = "NINETALES", level = 58, moves = { "SHADOW_BALL", "FIRE_BLAST", "WILL_O_WISP", "NASTY_PLOT" } },
      { species = "HAUNTER", level = 58, moves = { "SHADOW_BALL", "SLUDGE_BOMB", "THUNDERBOLT", "DESTINY_BOND" } },
      { species = "GENGAR", level = 60, moves = { "SHADOW_BALL", "SLUDGE_WAVE", "FOCUS_BLAST", "WILL_O_WISP" } }
    }
  })

  -- 12. ELITE FOUR LANCE (Dragon / Flying Specialist)
  mod.content.trainers:patch("LANCE", {
    name = "LANCE",
    title = "ELITE FOUR",
    party = {
      { species = "CHARIZARD", level = 58, moves = { "DRAGON_CLAW", "FLARE_BLITZ", "AIR_SLASH", "DRAGON_DANCE" } },
      { species = "SEADRA", level = 58, moves = { "DRAGON_PULSE", "HYDRO_PUMP", "ICE_BEAM", "FLASH_CANNON" } },
      { species = "GYARADOS", level = 60, moves = { "WATERFALL", "CRUNCH", "DRAGON_DANCE", "EARTHQUAKE" } },
      { species = "AERODACTYL", level = 60, moves = { "STONE_EDGE", "DUAL_WINGBEAT", "EARTHQUAKE", "ROOST" } },
      { species = "DRAGONITE", level = 62, moves = { "OUTRAGE", "EXTREME_SPEED", "SUPERPOWER", "DRAGON_DANCE" } }
    }
  })

  -- 13. CHAMPION RIVAL GREEN (Balanced Apex Team)
  mod.content.trainers:patch("CHAMPION", {
    name = "GREEN",
    title = "CHAMPION",
    party = {
      { species = "PIDGEOT", level = 61, moves = { "HURRICANE", "HEAT_WAVE", "U_TURN", "DEFOG" } },
      { species = "ALAKAZAM", level = 63, moves = { "PSYCHIC", "FOCUS_BLAST", "SHADOW_BALL", "RECOVER" } },
      { species = "RHYDON", level = 63, moves = { "EARTHQUAKE", "STONE_EDGE", "MEGAHORN", "HAMMER_ARM" } },
      { species = "ARCANINE", level = 63, moves = { "FLARE_BLITZ", "EXTREME_SPEED", "CLOSE_COMBAT", "CRUNCH" } },
      { species = "EXEGGUTOR", level = 63, moves = { "LEAF_STORM", "PSYCHIC", "GIGA_DRAIN", "SLEEP_POWDER" } },
      { species = "BLASTOISE", level = 65, moves = { "HYDRO_PUMP", "FLASH_CANNON", "ICE_BEAM", "SHELL_SMASH" } }
    }
  })

  mod.log:info("Kanto Revitalised: Gym Leaders, Elite Four, and Champion trainer parties successfully rebalanced!")

  -- 14. CHAPTER 4 BOSS TRAINERS (Flora, Alistair, Executive Vance)
  mod.content.trainers:patch("ERIKA", {
    name = "FLORA",
    title = "LEADER",
    party = {
      { species = "TANGELA", level = 28, moves = { "GIGA_DRAIN", "BIND", "SLEEP_POWDER" } },
      { species = "ROSELIA", level = 29, moves = { "GIGA_DRAIN", "SLUDGE_BOMB", "TOXIC_SPIKES", "SYNTHESIS" } },
      { species = "VICTREEBEL", level = 30, moves = { "LEAF_BLADE", "SUCKER_PUNCH", "POISON_JAB" } },
      { species = "VILEPLUME", level = 32, moves = { "GIGA_DRAIN", "MOONBLAST", "SLUDGE_BOMB", "SYNTHESIS" } }
    }
  })

  mod.content.trainers:patch("SABRINA", {
    name = "ALISTAIR",
    title = "LEADER",
    party = {
      { species = "KADABRA", level = 38, moves = { "PSYCHIC", "SHADOW_BALL", "REFLECT" } },
      { species = "MR_MIME", level = 38, moves = { "PSYCHIC", "DAZZLING_GLEAM", "LIGHT_SCREEN", "BATON_PASS" } },
      { species = "HYPNO", level = 40, moves = { "PSYCHIC", "DRAIN_PUNCH", "HYPNOSIS", "NASTY_PLOT" } },
      { species = "ALAKAZAM", level = 43, moves = { "PSYCHIC", "FOCUS_BLAST", "SHADOW_BALL", "RECOVER" } }
    }
  })

  mod.content.trainers:register("EXECUTIVE_VANCE", {
    name = "VANCE",
    title = "EXECUTIVE",
    party = {
      { species = "SNEASEL", level = 39, moves = { "ICE_PUNCH", "NIGHT_SLASH", "QUICK_ATTACK", "SWORDS_DANCE" } },
      { species = "HOUNDOOM", level = 41, moves = { "FLAMETHROWER", "DARK_PULSE", "SLUDGE_BOMB", "NASTY_PLOT" } },
      { species = "NIDOQUEEN", level = 42, moves = { "EARTH_POWER", "SLUDGE_WAVE", "ICE_BEAM", "STEALTH_ROCK" } },
      { species = "TYRANITAR", level = 44, moves = { "STONE_EDGE", "CRUNCH", "EARTHQUAKE", "DRAGON_DANCE" } }
    }
  })
end
