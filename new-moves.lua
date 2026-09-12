-- ============================================================================
-- Kanto Revitalised - New Moves Registration Module (new-moves.lua)
-- Gen1Recomp Mod API v2
-- Defines all post-Gen 1 moves featured in rebalance.lua learnsets
-- ============================================================================

return function(mod)
  if not mod or not mod.content or not mod.content.moves then
    error('gen1recomp modding API not initialized!')
  end

  -- Acid Spray (POISON / SPECIAL)
  mod.content.moves:register("ACID_SPRAY", {
    id = "ACID_SPRAY",
    name = "Acid Spray",
    type = "POISON",
    category = "SPECIAL",
    power = 40,
    accuracy = 100,
    pp = 20,
    description = "Harshly lowers the target's Sp. Def."
  })

  -- Acrobatics (FLYING / PHYSICAL)
  mod.content.moves:register("ACROBATICS", {
    id = "ACROBATICS",
    name = "Acrobatics",
    type = "FLYING",
    category = "PHYSICAL",
    power = 55,
    accuracy = 100,
    pp = 15,
    description = "Deals double damage if the user holds no item."
  })

  -- Aerial Ace (FLYING / PHYSICAL)
  mod.content.moves:register("AERIAL_ACE", {
    id = "AERIAL_ACE",
    name = "Aerial Ace",
    type = "FLYING",
    category = "PHYSICAL",
    power = 60,
    accuracy = 100,
    pp = 20,
    description = "An extremely fast attack that never misses."
  })

  -- Air Slash (FLYING / SPECIAL)
  mod.content.moves:register("AIR_SLASH", {
    id = "AIR_SLASH",
    name = "Air Slash",
    type = "FLYING",
    category = "SPECIAL",
    power = 75,
    accuracy = 95,
    pp = 15,
    description = "Attacks with a blade of air. May cause flinching."
  })

  -- Ancient Power (ROCK / SPECIAL)
  mod.content.moves:register("ANCIENT_POWER", {
    id = "ANCIENT_POWER",
    name = "Ancient Power",
    type = "ROCK",
    category = "SPECIAL",
    power = 60,
    accuracy = 100,
    pp = 5,
    description = "May raise all user stats by 1 stage."
  })

  -- Aqua Jet (WATER / PHYSICAL)
  mod.content.moves:register("AQUA_JET", {
    id = "AQUA_JET",
    name = "Aqua Jet",
    type = "WATER",
    category = "PHYSICAL",
    power = 40,
    accuracy = 100,
    pp = 20,
    description = "Strikes first with high speed."
  })

  -- Aqua Ring (WATER / STATUS)
  mod.content.moves:register("AQUA_RING", {
    id = "AQUA_RING",
    name = "Aqua Ring",
    type = "WATER",
    category = "STATUS",
    power = 0,
    accuracy = 100,
    pp = 20,
    description = "Surrounds the user in a veil of water that restores HP."
  })

  -- Aqua Tail (WATER / PHYSICAL)
  mod.content.moves:register("AQUA_TAIL", {
    id = "AQUA_TAIL",
    name = "Aqua Tail",
    type = "WATER",
    category = "PHYSICAL",
    power = 90,
    accuracy = 90,
    pp = 10,
    description = "Swings a tail like a wave in a stormy sea."
  })

  -- Aromatherapy (GRASS / STATUS)
  mod.content.moves:register("AROMATHERAPY", {
    id = "AROMATHERAPY",
    name = "Aromatherapy",
    type = "GRASS",
    category = "STATUS",
    power = 0,
    accuracy = 100,
    pp = 5,
    description = "Cures all status conditions in the party."
  })

  -- Assurance (DARK / PHYSICAL)
  mod.content.moves:register("ASSURANCE", {
    id = "ASSURANCE",
    name = "Assurance",
    type = "DARK",
    category = "PHYSICAL",
    power = 60,
    accuracy = 100,
    pp = 10,
    description = "Power doubles if target took damage this turn."
  })

  -- Astonish (GHOST / PHYSICAL)
  mod.content.moves:register("ASTONISH", {
    id = "ASTONISH",
    name = "Astonish",
    type = "GHOST",
    category = "PHYSICAL",
    power = 30,
    accuracy = 100,
    pp = 15,
    description = "May cause the target to flinch."
  })

  -- Aura Sphere (FIGHTING / SPECIAL)
  mod.content.moves:register("AURA_SPHERE", {
    id = "AURA_SPHERE",
    name = "Aura Sphere",
    type = "FIGHTING",
    category = "SPECIAL",
    power = 80,
    accuracy = 100,
    pp = 20,
    description = "Fires a aura blast that never misses."
  })

  -- Baby-Doll Eyes (FAIRY / STATUS)
  mod.content.moves:register("BABY_DOLL_EYES", {
    id = "BABY_DOLL_EYES",
    name = "Baby-Doll Eyes",
    type = "FAIRY",
    category = "STATUS",
    power = 0,
    accuracy = 100,
    pp = 30,
    description = "Lowers target's Attack. Strikes first."
  })

  -- Baton Pass (NORMAL / STATUS)
  mod.content.moves:register("BATON_PASS", {
    id = "BATON_PASS",
    name = "Baton Pass",
    type = "NORMAL",
    category = "STATUS",
    power = 0,
    accuracy = 100,
    pp = 40,
    description = "Switches out, passing stat boosts to the replacement."
  })

  -- Belly Drum (NORMAL / STATUS)
  mod.content.moves:register("BELLY_DRUM", {
    id = "BELLY_DRUM",
    name = "Belly Drum",
    type = "NORMAL",
    category = "STATUS",
    power = 0,
    accuracy = 100,
    pp = 10,
    description = "Cuts HP in half to maximize Attack stat."
  })

  -- Blaze Kick (FIRE / PHYSICAL)
  mod.content.moves:register("BLAZE_KICK", {
    id = "BLAZE_KICK",
    name = "Blaze Kick",
    type = "FIRE",
    category = "PHYSICAL",
    power = 85,
    accuracy = 90,
    pp = 10,
    description = "High critical hit ratio. May burn target."
  })

  -- Brave Bird (FLYING / PHYSICAL)
  mod.content.moves:register("BRAVE_BIRD", {
    id = "BRAVE_BIRD",
    name = "Brave Bird",
    type = "FLYING",
    category = "PHYSICAL",
    power = 120,
    accuracy = 100,
    pp = 15,
    description = "Takes 33% recoil damage from attack."
  })

  -- Brick Break (FIGHTING / PHYSICAL)
  mod.content.moves:register("BRICK_BREAK", {
    id = "BRICK_BREAK",
    name = "Brick Break",
    type = "FIGHTING",
    category = "PHYSICAL",
    power = 75,
    accuracy = 100,
    pp = 15,
    description = "Breaks Light Screen and Reflect barriers."
  })

  -- Brine (WATER / SPECIAL)
  mod.content.moves:register("BRINE", {
    id = "BRINE",
    name = "Brine",
    type = "WATER",
    category = "SPECIAL",
    power = 65,
    accuracy = 100,
    pp = 10,
    description = "Power doubles if target's HP is below 50%."
  })

  -- Bug Bite (BUG / PHYSICAL)
  mod.content.moves:register("BUG_BITE", {
    id = "BUG_BITE",
    name = "Bug Bite",
    type = "BUG",
    category = "PHYSICAL",
    power = 60,
    accuracy = 100,
    pp = 20,
    description = "Bites target and eats its held berry."
  })

  -- Bug Buzz (BUG / SPECIAL)
  mod.content.moves:register("BUG_BUZZ", {
    id = "BUG_BUZZ",
    name = "Bug Buzz",
    type = "BUG",
    category = "SPECIAL",
    power = 90,
    accuracy = 100,
    pp = 10,
    description = "Vibrates wings to attack. May lower Sp. Def."
  })

  -- Bulldoze (GROUND / PHYSICAL)
  mod.content.moves:register("BULLDOZE", {
    id = "BULLDOZE",
    name = "Bulldoze",
    type = "GROUND",
    category = "PHYSICAL",
    power = 60,
    accuracy = 100,
    pp = 20,
    description = "Lowers target's Speed by 1 stage."
  })

  -- Bullet Punch (STEEL / PHYSICAL)
  mod.content.moves:register("BULLET_PUNCH", {
    id = "BULLET_PUNCH",
    name = "Bullet Punch",
    type = "STEEL",
    category = "PHYSICAL",
    power = 40,
    accuracy = 100,
    pp = 30,
    description = "Tough steel punch that strikes first."
  })

  -- Bullet Seed (GRASS / PHYSICAL)
  mod.content.moves:register("BULLET_SEED", {
    id = "BULLET_SEED",
    name = "Bullet Seed",
    type = "GRASS",
    category = "PHYSICAL",
    power = 25,
    accuracy = 100,
    pp = 30,
    description = "Hits 2 to 5 times in succession."
  })

  -- Calm Mind (PSYCHIC / STATUS)
  mod.content.moves:register("CALM_MIND", {
    id = "CALM_MIND",
    name = "Calm Mind",
    type = "PSYCHIC",
    category = "STATUS",
    power = 0,
    accuracy = 100,
    pp = 20,
    description = "Raises Sp. Atk and Sp. Def by 1 stage."
  })

  -- Camouflage (NORMAL / STATUS)
  mod.content.moves:register("CAMOUFLAGE", {
    id = "CAMOUFLAGE",
    name = "Camouflage",
    type = "NORMAL",
    category = "STATUS",
    power = 0,
    accuracy = 100,
    pp = 20,
    description = "Changes user's type to match terrain."
  })

  -- Charge (ELECTRIC / STATUS)
  mod.content.moves:register("CHARGE", {
    id = "CHARGE",
    name = "Charge",
    type = "ELECTRIC",
    category = "STATUS",
    power = 0,
    accuracy = 100,
    pp = 20,
    description = "Boosts next Electric move and raises Sp. Def."
  })

  -- Circle Throw (FIGHTING / PHYSICAL)
  mod.content.moves:register("CIRCLE_THROW", {
    id = "CIRCLE_THROW",
    name = "Circle Throw",
    type = "FIGHTING",
    category = "PHYSICAL",
    power = 60,
    accuracy = 90,
    pp = 10,
    description = "Forces target to switch out."
  })

  -- Clear Smog (POISON / SPECIAL)
  mod.content.moves:register("CLEAR_SMOG", {
    id = "CLEAR_SMOG",
    name = "Clear Smog",
    type = "POISON",
    category = "SPECIAL",
    power = 50,
    accuracy = 100,
    pp = 15,
    description = "Resets target's stat changes to 0."
  })

  -- Close Combat (FIGHTING / PHYSICAL)
  mod.content.moves:register("CLOSE_COMBAT", {
    id = "CLOSE_COMBAT",
    name = "Close Combat",
    type = "FIGHTING",
    category = "PHYSICAL",
    power = 120,
    accuracy = 100,
    pp = 5,
    description = "Lowers user Defense and Sp. Def by 1 stage."
  })

  -- Coil (POISON / STATUS)
  mod.content.moves:register("COIL", {
    id = "COIL",
    name = "Coil",
    type = "POISON",
    category = "STATUS",
    power = 0,
    accuracy = 100,
    pp = 20,
    description = "Raises Attack, Defense, and Accuracy by 1 stage."
  })

  -- Conversion 2 (NORMAL / STATUS)
  mod.content.moves:register("CONVERSION_2", {
    id = "CONVERSION_2",
    name = "Conversion 2",
    type = "NORMAL",
    category = "STATUS",
    power = 0,
    accuracy = 100,
    pp = 30,
    description = "Changes type to resist last move used against it."
  })

  -- Cosmic Power (PSYCHIC / STATUS)
  mod.content.moves:register("COSMIC_POWER", {
    id = "COSMIC_POWER",
    name = "Cosmic Power",
    type = "PSYCHIC",
    category = "STATUS",
    power = 0,
    accuracy = 100,
    pp = 20,
    description = "Raises Defense and Sp. Def by 1 stage."
  })

  -- Covet (NORMAL / PHYSICAL)
  mod.content.moves:register("COVET", {
    id = "COVET",
    name = "Covet",
    type = "NORMAL",
    category = "PHYSICAL",
    power = 60,
    accuracy = 100,
    pp = 25,
    description = "Cutely attacks and steals held item."
  })

  -- Cross Chop (FIGHTING / PHYSICAL)
  mod.content.moves:register("CROSS_CHOP", {
    id = "CROSS_CHOP",
    name = "Cross Chop",
    type = "FIGHTING",
    category = "PHYSICAL",
    power = 100,
    accuracy = 80,
    pp = 5,
    description = "High critical hit ratio."
  })

  -- Crunch (DARK / PHYSICAL)
  mod.content.moves:register("CRUNCH", {
    id = "CRUNCH",
    name = "Crunch",
    type = "DARK",
    category = "PHYSICAL",
    power = 80,
    accuracy = 100,
    pp = 15,
    description = "Crunches with fangs. May lower target Defense."
  })

  -- Curse (GHOST / STATUS)
  mod.content.moves:register("CURSE", {
    id = "CURSE",
    name = "Curse",
    type = "GHOST",
    category = "STATUS",
    power = 0,
    accuracy = 100,
    pp = 10,
    description = "Ghosts sacrifice HP to curse foe; others raise Atk/Def."
  })

  -- Dark Pulse (DARK / SPECIAL)
  mod.content.moves:register("DARK_PULSE", {
    id = "DARK_PULSE",
    name = "Dark Pulse",
    type = "DARK",
    category = "SPECIAL",
    power = 80,
    accuracy = 100,
    pp = 15,
    description = "Fires dark aura. May cause flinching."
  })

  -- Dazzling Gleam (FAIRY / SPECIAL)
  mod.content.moves:register("DAZZLING_GLEAM", {
    id = "DAZZLING_GLEAM",
    name = "Dazzling Gleam",
    type = "FAIRY",
    category = "SPECIAL",
    power = 80,
    accuracy = 100,
    pp = 10,
    description = "Dazzles foes with powerful light."
  })

  -- Defog (FLYING / STATUS)
  mod.content.moves:register("DEFOG", {
    id = "DEFOG",
    name = "Defog",
    type = "FLYING",
    category = "STATUS",
    power = 0,
    accuracy = 100,
    pp = 15,
    description = "Clears entry hazards and lowers evasion."
  })

  -- Destiny Bond (GHOST / STATUS)
  mod.content.moves:register("DESTINY_BOND", {
    id = "DESTINY_BOND",
    name = "Destiny Bond",
    type = "GHOST",
    category = "STATUS",
    power = 0,
    accuracy = 100,
    pp = 5,
    description = "If user faints, attacker faints as well."
  })

  -- Detect (FIGHTING / STATUS)
  mod.content.moves:register("DETECT", {
    id = "DETECT",
    name = "Detect",
    type = "FIGHTING",
    category = "STATUS",
    power = 0,
    accuracy = 100,
    pp = 5,
    description = "Evades all attacks for one turn."
  })

  -- Disarming Voice (FAIRY / SPECIAL)
  mod.content.moves:register("DISARMING_VOICE", {
    id = "DISARMING_VOICE",
    name = "Disarming Voice",
    type = "FAIRY",
    category = "SPECIAL",
    power = 40,
    accuracy = 100,
    pp = 15,
    description = "Charming voice that never misses."
  })

  -- Discharge (ELECTRIC / SPECIAL)
  mod.content.moves:register("DISCHARGE", {
    id = "DISCHARGE",
    name = "Discharge",
    type = "ELECTRIC",
    category = "SPECIAL",
    power = 80,
    accuracy = 100,
    pp = 15,
    description = "30% chance to paralyze target."
  })

  -- Double Hit (NORMAL / PHYSICAL)
  mod.content.moves:register("DOUBLE_HIT", {
    id = "DOUBLE_HIT",
    name = "Double Hit",
    type = "NORMAL",
    category = "PHYSICAL",
    power = 35,
    accuracy = 90,
    pp = 10,
    description = "Slams target twice in succession."
  })

  -- Dragon Breath (DRAGON / SPECIAL)
  mod.content.moves:register("DRAGON_BREATH", {
    id = "DRAGON_BREATH",
    name = "Dragon Breath",
    type = "DRAGON",
    category = "SPECIAL",
    power = 60,
    accuracy = 100,
    pp = 20,
    description = "30% chance to paralyze target."
  })

  -- Dragon Claw (DRAGON / PHYSICAL)
  mod.content.moves:register("DRAGON_CLAW", {
    id = "DRAGON_CLAW",
    name = "Dragon Claw",
    type = "DRAGON",
    category = "PHYSICAL",
    power = 80,
    accuracy = 100,
    pp = 15,
    description = "Slashes target with sharp dragon claws."
  })

  -- Dragon Dance (DRAGON / STATUS)
  mod.content.moves:register("DRAGON_DANCE", {
    id = "DRAGON_DANCE",
    name = "Dragon Dance",
    type = "DRAGON",
    category = "STATUS",
    power = 0,
    accuracy = 100,
    pp = 20,
    description = "Raises Attack and Speed by 1 stage."
  })

  -- Dragon Hammer (DRAGON / PHYSICAL)
  mod.content.moves:register("DRAGON_HAMMER", {
    id = "DRAGON_HAMMER",
    name = "Dragon Hammer",
    type = "DRAGON",
    category = "PHYSICAL",
    power = 90,
    accuracy = 100,
    pp = 15,
    description = "Swings body like a hammer to strike."
  })

  -- Dragon Pulse (DRAGON / SPECIAL)
  mod.content.moves:register("DRAGON_PULSE", {
    id = "DRAGON_PULSE",
    name = "Dragon Pulse",
    type = "DRAGON",
    category = "SPECIAL",
    power = 85,
    accuracy = 100,
    pp = 10,
    description = "Fires dragon shockwave from mouth."
  })

  -- Dragon Rush (DRAGON / PHYSICAL)
  mod.content.moves:register("DRAGON_RUSH", {
    id = "DRAGON_RUSH",
    name = "Dragon Rush",
    type = "DRAGON",
    category = "PHYSICAL",
    power = 100,
    accuracy = 75,
    pp = 10,
    description = "Tackles with menacing aura. May flinch."
  })

  -- Dragon Tail (DRAGON / PHYSICAL)
  mod.content.moves:register("DRAGON_TAIL", {
    id = "DRAGON_TAIL",
    name = "Dragon Tail",
    type = "DRAGON",
    category = "PHYSICAL",
    power = 60,
    accuracy = 90,
    pp = 10,
    description = "Knocks target out and forces switch."
  })

  -- Drill Run (GROUND / PHYSICAL)
  mod.content.moves:register("DRILL_RUN", {
    id = "DRILL_RUN",
    name = "Drill Run",
    type = "GROUND",
    category = "PHYSICAL",
    power = 80,
    accuracy = 95,
    pp = 10,
    description = "Drills into target. High critical hit ratio."
  })

  -- Dynamic Punch (FIGHTING / PHYSICAL)
  mod.content.moves:register("DYNAMIC_PUNCH", {
    id = "DYNAMIC_PUNCH",
    name = "Dynamic Punch",
    type = "FIGHTING",
    category = "PHYSICAL",
    power = 100,
    accuracy = 50,
    pp = 5,
    description = "100% chance to confuse target on hit."
  })

  -- Earth Power (GROUND / SPECIAL)
  mod.content.moves:register("EARTH_POWER", {
    id = "EARTH_POWER",
    name = "Earth Power",
    type = "GROUND",
    category = "SPECIAL",
    power = 90,
    accuracy = 100,
    pp = 10,
    description = "Erupts ground below. May lower Sp. Def."
  })

  -- Encore (NORMAL / STATUS)
  mod.content.moves:register("ENCORE", {
    id = "ENCORE",
    name = "Encore",
    type = "NORMAL",
    category = "STATUS",
    power = 0,
    accuracy = 100,
    pp = 5,
    description = "Forces target to repeat last move for 3 turns."
  })

  -- Endure (NORMAL / STATUS)
  mod.content.moves:register("ENDURE", {
    id = "ENDURE",
    name = "Endure",
    type = "NORMAL",
    category = "STATUS",
    power = 0,
    accuracy = 100,
    pp = 10,
    description = "Endures any attack with at least 1 HP."
  })

  -- Energy Ball (GRASS / SPECIAL)
  mod.content.moves:register("ENERGY_BALL", {
    id = "ENERGY_BALL",
    name = "Energy Ball",
    type = "GRASS",
    category = "SPECIAL",
    power = 90,
    accuracy = 100,
    pp = 10,
    description = "Draws power from nature. May lower Sp. Def."
  })

  -- Extrasensory (PSYCHIC / SPECIAL)
  mod.content.moves:register("EXTRASENSORY", {
    id = "EXTRASENSORY",
    name = "Extrasensory",
    type = "PSYCHIC",
    category = "SPECIAL",
    power = 80,
    accuracy = 100,
    pp = 20,
    description = "Fires strange power. May cause flinching."
  })

  -- Extreme Speed (NORMAL / PHYSICAL)
  mod.content.moves:register("EXTREME_SPEED", {
    id = "EXTREME_SPEED",
    name = "Extreme Speed",
    type = "NORMAL",
    category = "PHYSICAL",
    power = 80,
    accuracy = 100,
    pp = 5,
    description = "Blinding speed attack that strikes first (+2 priority)."
  })

  -- Fairy Wind (FAIRY / SPECIAL)
  mod.content.moves:register("FAIRY_WIND", {
    id = "FAIRY_WIND",
    name = "Fairy Wind",
    type = "FAIRY",
    category = "SPECIAL",
    power = 40,
    accuracy = 100,
    pp = 30,
    description = "Stirs up fairy wind to strike."
  })

  -- Fake Out (NORMAL / PHYSICAL)
  mod.content.moves:register("FAKE_OUT", {
    id = "FAKE_OUT",
    name = "Fake Out",
    type = "NORMAL",
    category = "PHYSICAL",
    power = 40,
    accuracy = 100,
    pp = 10,
    description = "Strikes first on first turn out. Causes flinch."
  })

  -- False Swipe (NORMAL / PHYSICAL)
  mod.content.moves:register("FALSE_SWIPE", {
    id = "FALSE_SWIPE",
    name = "False Swipe",
    type = "NORMAL",
    category = "PHYSICAL",
    power = 40,
    accuracy = 100,
    pp = 40,
    description = "Leaves target with at least 1 HP."
  })

  -- Feather Dance (FLYING / STATUS)
  mod.content.moves:register("FEATHER_DANCE", {
    id = "FEATHER_DANCE",
    name = "Feather Dance",
    type = "FLYING",
    category = "STATUS",
    power = 0,
    accuracy = 100,
    pp = 15,
    description = "Covers target in down to harshly lower Attack."
  })

  -- Feint Attack (DARK / PHYSICAL)
  mod.content.moves:register("FEINT_ATTACK", {
    id = "FEINT_ATTACK",
    name = "Feint Attack",
    type = "DARK",
    category = "PHYSICAL",
    power = 60,
    accuracy = 100,
    pp = 20,
    description = "Deceitful attack that never misses."
  })

  -- Fell Stinger (BUG / PHYSICAL)
  mod.content.moves:register("FELL_STINGER", {
    id = "FELL_STINGER",
    name = "Fell Stinger",
    type = "BUG",
    category = "PHYSICAL",
    power = 50,
    accuracy = 100,
    pp = 25,
    description = "Sharply boosts Attack (+3) if it KOs target."
  })

  -- Fire Fang (FIRE / PHYSICAL)
  mod.content.moves:register("FIRE_FANG", {
    id = "FIRE_FANG",
    name = "Fire Fang",
    type = "FIRE",
    category = "PHYSICAL",
    power = 65,
    accuracy = 95,
    pp = 15,
    description = "May burn or cause target to flinch."
  })

  -- Flail (NORMAL / PHYSICAL)
  mod.content.moves:register("FLAIL", {
    id = "FLAIL",
    name = "Flail",
    type = "NORMAL",
    category = "PHYSICAL",
    power = 1,
    accuracy = 100,
    pp = 15,
    description = "Inflicts more damage when user's HP is low."
  })

  -- Flame Burst (FIRE / SPECIAL)
  mod.content.moves:register("FLAME_BURST", {
    id = "FLAME_BURST",
    name = "Flame Burst",
    type = "FIRE",
    category = "SPECIAL",
    power = 70,
    accuracy = 100,
    pp = 15,
    description = "Splashes fire to damage adjacent targets."
  })

  -- Flame Charge (FIRE / PHYSICAL)
  mod.content.moves:register("FLAME_CHARGE", {
    id = "FLAME_CHARGE",
    name = "Flame Charge",
    type = "FIRE",
    category = "PHYSICAL",
    power = 50,
    accuracy = 100,
    pp = 20,
    description = "100% chance to boost user Speed by 1 stage."
  })

  -- Flame Wheel (FIRE / PHYSICAL)
  mod.content.moves:register("FLAME_WHEEL", {
    id = "FLAME_WHEEL",
    name = "Flame Wheel",
    type = "FIRE",
    category = "PHYSICAL",
    power = 60,
    accuracy = 100,
    pp = 25,
    description = "10% chance to burn target."
  })

  -- Flare Blitz (FIRE / PHYSICAL)
  mod.content.moves:register("FLARE_BLITZ", {
    id = "FLARE_BLITZ",
    name = "Flare Blitz",
    type = "FIRE",
    category = "PHYSICAL",
    power = 120,
    accuracy = 100,
    pp = 15,
    description = "Takes 33% recoil damage. 10% burn chance."
  })

  -- Flash Cannon (STEEL / SPECIAL)
  mod.content.moves:register("FLASH_CANNON", {
    id = "FLASH_CANNON",
    name = "Flash Cannon",
    type = "STEEL",
    category = "SPECIAL",
    power = 80,
    accuracy = 100,
    pp = 10,
    description = "Fires light energy. May lower Sp. Def."
  })

  -- Focus Blast (FIGHTING / SPECIAL)
  mod.content.moves:register("FOCUS_BLAST", {
    id = "FOCUS_BLAST",
    name = "Focus Blast",
    type = "FIGHTING",
    category = "SPECIAL",
    power = 120,
    accuracy = 70,
    pp = 5,
    description = "Heightens focus and releases power. May lower Sp. Def."
  })

  -- Follow Me (NORMAL / STATUS)
  mod.content.moves:register("FOLLOW_ME", {
    id = "FOLLOW_ME",
    name = "Follow Me",
    type = "NORMAL",
    category = "STATUS",
    power = 0,
    accuracy = 100,
    pp = 20,
    description = "Draws attention to make opponents attack user."
  })

  -- Force Palm (FIGHTING / PHYSICAL)
  mod.content.moves:register("FORCE_PALM", {
    id = "FORCE_PALM",
    name = "Force Palm",
    type = "FIGHTING",
    category = "PHYSICAL",
    power = 60,
    accuracy = 100,
    pp = 10,
    description = "30% chance to paralyze target."
  })

  -- Foresight (NORMAL / STATUS)
  mod.content.moves:register("FORESIGHT", {
    id = "FORESIGHT",
    name = "Foresight",
    type = "NORMAL",
    category = "STATUS",
    power = 0,
    accuracy = 100,
    pp = 40,
    description = "Negates Ghost type immunities to Normal/Fighting."
  })

  -- Foul Play (DARK / PHYSICAL)
  mod.content.moves:register("FOUL_PLAY", {
    id = "FOUL_PLAY",
    name = "Foul Play",
    type = "DARK",
    category = "PHYSICAL",
    power = 95,
    accuracy = 100,
    pp = 15,
    description = "Uses target's Attack stat for damage calculation."
  })

  -- Freeze-Dry (ICE / SPECIAL)
  mod.content.moves:register("FREEZE_DRY", {
    id = "FREEZE_DRY",
    name = "Freeze-Dry",
    type = "ICE",
    category = "SPECIAL",
    power = 70,
    accuracy = 100,
    pp = 20,
    description = "Super-effective against Water types. May freeze."
  })

  -- Frost Breath (ICE / SPECIAL)
  mod.content.moves:register("FROST_BREATH", {
    id = "FROST_BREATH",
    name = "Frost Breath",
    type = "ICE",
    category = "SPECIAL",
    power = 60,
    accuracy = 90,
    pp = 10,
    description = "Always results in a critical hit."
  })

  -- Future Sight (PSYCHIC / SPECIAL)
  mod.content.moves:register("FUTURE_SIGHT", {
    id = "FUTURE_SIGHT",
    name = "Future Sight",
    type = "PSYCHIC",
    category = "SPECIAL",
    power = 120,
    accuracy = 100,
    pp = 10,
    description = "Deals damage two turns after use."
  })

  -- Gastro Acid (POISON / STATUS)
  mod.content.moves:register("GASTRO_ACID", {
    id = "GASTRO_ACID",
    name = "Gastro Acid",
    type = "POISON",
    category = "STATUS",
    power = 0,
    accuracy = 100,
    pp = 10,
    description = "Suppresses target's ability."
  })

  -- Giga Drain (GRASS / SPECIAL)
  mod.content.moves:register("GIGA_DRAIN", {
    id = "GIGA_DRAIN",
    name = "Giga Drain",
    type = "GRASS",
    category = "SPECIAL",
    power = 75,
    accuracy = 100,
    pp = 10,
    description = "Heals user for 50% of damage dealt."
  })

  -- Giga Impact (NORMAL / PHYSICAL)
  mod.content.moves:register("GIGA_IMPACT", {
    id = "GIGA_IMPACT",
    name = "Giga Impact",
    type = "NORMAL",
    category = "PHYSICAL",
    power = 150,
    accuracy = 90,
    pp = 5,
    description = "User must recharge next turn."
  })

  -- Gunk Shot (POISON / PHYSICAL)
  mod.content.moves:register("GUNK_SHOT", {
    id = "GUNK_SHOT",
    name = "Gunk Shot",
    type = "POISON",
    category = "PHYSICAL",
    power = 120,
    accuracy = 80,
    pp = 5,
    description = "30% chance to poison target."
  })

  -- Gyro Ball (STEEL / PHYSICAL)
  mod.content.moves:register("GYRO_BALL", {
    id = "GYRO_BALL",
    name = "Gyro Ball",
    type = "STEEL",
    category = "PHYSICAL",
    power = 1,
    accuracy = 100,
    pp = 5,
    description = "More power the slower user is relative to target."
  })

  -- Hammer Arm (FIGHTING / PHYSICAL)
  mod.content.moves:register("HAMMER_ARM", {
    id = "HAMMER_ARM",
    name = "Hammer Arm",
    type = "FIGHTING",
    category = "PHYSICAL",
    power = 100,
    accuracy = 90,
    pp = 10,
    description = "Swings heavy fist. Lowers user Speed."
  })

  -- Head Smash (ROCK / PHYSICAL)
  mod.content.moves:register("HEAD_SMASH", {
    id = "HEAD_SMASH",
    name = "Head Smash",
    type = "ROCK",
    category = "PHYSICAL",
    power = 150,
    accuracy = 80,
    pp = 5,
    description = "Takes 50% recoil damage."
  })

  -- Heal Bell (NORMAL / STATUS)
  mod.content.moves:register("HEAL_BELL", {
    id = "HEAL_BELL",
    name = "Heal Bell",
    type = "NORMAL",
    category = "STATUS",
    power = 0,
    accuracy = 100,
    pp = 5,
    description = "Chimes to cure status conditions of team."
  })

  -- Heat Wave (FIRE / SPECIAL)
  mod.content.moves:register("HEAT_WAVE", {
    id = "HEAT_WAVE",
    name = "Heat Wave",
    type = "FIRE",
    category = "SPECIAL",
    power = 95,
    accuracy = 90,
    pp = 10,
    description = "10% chance to burn target."
  })

  -- Heavy Slam (STEEL / PHYSICAL)
  mod.content.moves:register("HEAVY_SLAM", {
    id = "HEAVY_SLAM",
    name = "Heavy Slam",
    type = "STEEL",
    category = "PHYSICAL",
    power = 1,
    accuracy = 100,
    pp = 10,
    description = "More power the heavier user is than target."
  })

  -- Helping Hand (NORMAL / STATUS)
  mod.content.moves:register("HELPING_HAND", {
    id = "HELPING_HAND",
    name = "Helping Hand",
    type = "NORMAL",
    category = "STATUS",
    power = 0,
    accuracy = 100,
    pp = 20,
    description = "Boosts ally move power by 50%."
  })

  -- Hex (GHOST / SPECIAL)
  mod.content.moves:register("HEX", {
    id = "HEX",
    name = "Hex",
    type = "GHOST",
    category = "SPECIAL",
    power = 65,
    accuracy = 100,
    pp = 10,
    description = "Power doubles if target has status condition."
  })

  -- High Horsepower (GROUND / PHYSICAL)
  mod.content.moves:register("HIGH_HORSEPOWER", {
    id = "HIGH_HORSEPOWER",
    name = "High Horsepower",
    type = "GROUND",
    category = "PHYSICAL",
    power = 95,
    accuracy = 95,
    pp = 10,
    description = "Fierce horse tackle."
  })

  -- Hurricane (FLYING / SPECIAL)
  mod.content.moves:register("HURRICANE", {
    id = "HURRICANE",
    name = "Hurricane",
    type = "FLYING",
    category = "SPECIAL",
    power = 110,
    accuracy = 70,
    pp = 10,
    description = "30% chance to confuse target."
  })

  -- Hyper Voice (NORMAL / SPECIAL)
  mod.content.moves:register("HYPER_VOICE", {
    id = "HYPER_VOICE",
    name = "Hyper Voice",
    type = "NORMAL",
    category = "SPECIAL",
    power = 90,
    accuracy = 100,
    pp = 10,
    description = "Loud vocal attack that bypasses Substitute."
  })

  -- Ice Fang (ICE / PHYSICAL)
  mod.content.moves:register("ICE_FANG", {
    id = "ICE_FANG",
    name = "Ice Fang",
    type = "ICE",
    category = "PHYSICAL",
    power = 65,
    accuracy = 95,
    pp = 15,
    description = "May freeze or cause target to flinch."
  })

  -- Ice Shard (ICE / PHYSICAL)
  mod.content.moves:register("ICE_SHARD", {
    id = "ICE_SHARD",
    name = "Ice Shard",
    type = "ICE",
    category = "PHYSICAL",
    power = 40,
    accuracy = 100,
    pp = 30,
    description = "Fires ice shards that strike first."
  })

  -- Icicle Spear (ICE / PHYSICAL)
  mod.content.moves:register("ICICLE_SPEAR", {
    id = "ICICLE_SPEAR",
    name = "Icicle Spear",
    type = "ICE",
    category = "PHYSICAL",
    power = 25,
    accuracy = 100,
    pp = 30,
    description = "Hits 2 to 5 times in succession."
  })

  -- Icy Wind (ICE / SPECIAL)
  mod.content.moves:register("ICY_WIND", {
    id = "ICY_WIND",
    name = "Icy Wind",
    type = "ICE",
    category = "SPECIAL",
    power = 55,
    accuracy = 95,
    pp = 15,
    description = "100% chance to lower target Speed by 1 stage."
  })

  -- Iron Defense (STEEL / STATUS)
  mod.content.moves:register("IRON_DEFENSE", {
    id = "IRON_DEFENSE",
    name = "Iron Defense",
    type = "STEEL",
    category = "STATUS",
    power = 0,
    accuracy = 100,
    pp = 15,
    description = "Hardens body to sharply raise Defense (+2)."
  })

  -- Iron Head (STEEL / PHYSICAL)
  mod.content.moves:register("IRON_HEAD", {
    id = "IRON_HEAD",
    name = "Iron Head",
    type = "STEEL",
    category = "PHYSICAL",
    power = 80,
    accuracy = 100,
    pp = 15,
    description = "30% chance to cause target to flinch."
  })

  -- Iron Tail (STEEL / PHYSICAL)
  mod.content.moves:register("IRON_TAIL", {
    id = "IRON_TAIL",
    name = "Iron Tail",
    type = "STEEL",
    category = "PHYSICAL",
    power = 100,
    accuracy = 75,
    pp = 15,
    description = "30% chance to lower target Defense."
  })

  -- Knock Off (DARK / PHYSICAL)
  mod.content.moves:register("KNOCK_OFF", {
    id = "KNOCK_OFF",
    name = "Knock Off",
    type = "DARK",
    category = "PHYSICAL",
    power = 65,
    accuracy = 100,
    pp = 20,
    description = "50% more power if target holds an item, knocking it off."
  })

  -- Leaf Blade (GRASS / PHYSICAL)
  mod.content.moves:register("LEAF_BLADE", {
    id = "LEAF_BLADE",
    name = "Leaf Blade",
    type = "GRASS",
    category = "PHYSICAL",
    power = 90,
    accuracy = 100,
    pp = 15,
    description = "High critical hit ratio."
  })

  -- Leaf Storm (GRASS / SPECIAL)
  mod.content.moves:register("LEAF_STORM", {
    id = "LEAF_STORM",
    name = "Leaf Storm",
    type = "GRASS",
    category = "SPECIAL",
    power = 130,
    accuracy = 90,
    pp = 5,
    description = "Harshly lowers user Sp. Atk (-2)."
  })

  -- Liquidation (WATER / PHYSICAL)
  mod.content.moves:register("LIQUIDATION", {
    id = "LIQUIDATION",
    name = "Liquidation",
    type = "WATER",
    category = "PHYSICAL",
    power = 85,
    accuracy = 100,
    pp = 10,
    description = "20% chance to lower target Defense."
  })

  -- Lock-On (NORMAL / STATUS)
  mod.content.moves:register("LOCK_ON", {
    id = "LOCK_ON",
    name = "Lock-On",
    type = "NORMAL",
    category = "STATUS",
    power = 0,
    accuracy = 100,
    pp = 5,
    description = "Guarantees next move will hit target."
  })

  -- Low Sweep (FIGHTING / PHYSICAL)
  mod.content.moves:register("LOW_SWEEP", {
    id = "LOW_SWEEP",
    name = "Low Sweep",
    type = "FIGHTING",
    category = "PHYSICAL",
    power = 65,
    accuracy = 100,
    pp = 20,
    description = "100% chance to lower target Speed."
  })

  -- Mach Punch (FIGHTING / PHYSICAL)
  mod.content.moves:register("MACH_PUNCH", {
    id = "MACH_PUNCH",
    name = "Mach Punch",
    type = "FIGHTING",
    category = "PHYSICAL",
    power = 40,
    accuracy = 100,
    pp = 30,
    description = "Fast punch that strikes first."
  })

  -- Magnet Bomb (STEEL / PHYSICAL)
  mod.content.moves:register("MAGNET_BOMB", {
    id = "MAGNET_BOMB",
    name = "Magnet Bomb",
    type = "STEEL",
    category = "PHYSICAL",
    power = 60,
    accuracy = 100,
    pp = 20,
    description = "Steel projectile that never misses."
  })

  -- Magnet Rise (ELECTRIC / STATUS)
  mod.content.moves:register("MAGNET_RISE", {
    id = "MAGNET_RISE",
    name = "Magnet Rise",
    type = "ELECTRIC",
    category = "STATUS",
    power = 0,
    accuracy = 100,
    pp = 10,
    description = "Levitates user with electromagnetism for 5 turns."
  })

  -- Magnitude (GROUND / PHYSICAL)
  mod.content.moves:register("MAGNITUDE", {
    id = "MAGNITUDE",
    name = "Magnitude",
    type = "GROUND",
    category = "PHYSICAL",
    power = 1,
    accuracy = 100,
    pp = 30,
    description = "Random power between 10 and 150."
  })

  -- Mean Look (NORMAL / STATUS)
  mod.content.moves:register("MEAN_LOOK", {
    id = "MEAN_LOOK",
    name = "Mean Look",
    type = "NORMAL",
    category = "STATUS",
    power = 0,
    accuracy = 100,
    pp = 5,
    description = "Prevents target from switching out."
  })

  -- Megahorn (BUG / PHYSICAL)
  mod.content.moves:register("MEGAHORN", {
    id = "MEGAHORN",
    name = "Megahorn",
    type = "BUG",
    category = "PHYSICAL",
    power = 120,
    accuracy = 85,
    pp = 10,
    description = "Ramming horn attack."
  })

  -- Metal Claw (STEEL / PHYSICAL)
  mod.content.moves:register("METAL_CLAW", {
    id = "METAL_CLAW",
    name = "Metal Claw",
    type = "STEEL",
    category = "PHYSICAL",
    power = 50,
    accuracy = 95,
    pp = 35,
    description = "10% chance to boost user Attack."
  })

  -- Me First (NORMAL / STATUS)
  mod.content.moves:register("ME_FIRST", {
    id = "ME_FIRST",
    name = "Me First",
    type = "NORMAL",
    category = "STATUS",
    power = 0,
    accuracy = 100,
    pp = 20,
    description = "Steals target's attack and uses it with 1.5x power."
  })

  -- Mind Reader (NORMAL / STATUS)
  mod.content.moves:register("MIND_READER", {
    id = "MIND_READER",
    name = "Mind Reader",
    type = "NORMAL",
    category = "STATUS",
    power = 0,
    accuracy = 100,
    pp = 5,
    description = "Guarantees next move will hit target."
  })

  -- Mirror Shot (STEEL / SPECIAL)
  mod.content.moves:register("MIRROR_SHOT", {
    id = "MIRROR_SHOT",
    name = "Mirror Shot",
    type = "STEEL",
    category = "SPECIAL",
    power = 65,
    accuracy = 85,
    pp = 10,
    description = "30% chance to lower target Accuracy."
  })

  -- Moonblast (FAIRY / SPECIAL)
  mod.content.moves:register("MOONBLAST", {
    id = "MOONBLAST",
    name = "Moonblast",
    type = "FAIRY",
    category = "SPECIAL",
    power = 95,
    accuracy = 100,
    pp = 15,
    description = "30% chance to lower target Sp. Atk."
  })

  -- Moonlight (FAIRY / STATUS)
  mod.content.moves:register("MOONLIGHT", {
    id = "MOONLIGHT",
    name = "Moonlight",
    type = "FAIRY",
    category = "STATUS",
    power = 0,
    accuracy = 100,
    pp = 5,
    description = "Heals HP depending on weather."
  })

  -- Morning Sun (NORMAL / STATUS)
  mod.content.moves:register("MORNING_SUN", {
    id = "MORNING_SUN",
    name = "Morning Sun",
    type = "NORMAL",
    category = "STATUS",
    power = 0,
    accuracy = 100,
    pp = 5,
    description = "Heals HP depending on weather."
  })

  -- Mud Bomb (GROUND / SPECIAL)
  mod.content.moves:register("MUD_BOMB", {
    id = "MUD_BOMB",
    name = "Mud Bomb",
    type = "GROUND",
    category = "SPECIAL",
    power = 65,
    accuracy = 85,
    pp = 10,
    description = "30% chance to lower target Accuracy."
  })

  -- Mud Shot (GROUND / SPECIAL)
  mod.content.moves:register("MUD_SHOT", {
    id = "MUD_SHOT",
    name = "Mud Shot",
    type = "GROUND",
    category = "SPECIAL",
    power = 55,
    accuracy = 95,
    pp = 15,
    description = "100% chance to lower target Speed."
  })

  -- Mud-Slap (GROUND / SPECIAL)
  mod.content.moves:register("MUD_SLAP", {
    id = "MUD_SLAP",
    name = "Mud-Slap",
    type = "GROUND",
    category = "SPECIAL",
    power = 20,
    accuracy = 100,
    pp = 10,
    description = "100% chance to lower target Accuracy."
  })

  -- Nasty Plot (DARK / STATUS)
  mod.content.moves:register("NASTY_PLOT", {
    id = "NASTY_PLOT",
    name = "Nasty Plot",
    type = "DARK",
    category = "STATUS",
    power = 0,
    accuracy = 100,
    pp = 20,
    description = "Sharply boosts Sp. Atk (+2)."
  })

  -- Night Slash (DARK / PHYSICAL)
  mod.content.moves:register("NIGHT_SLASH", {
    id = "NIGHT_SLASH",
    name = "Night Slash",
    type = "DARK",
    category = "PHYSICAL",
    power = 70,
    accuracy = 100,
    pp = 15,
    description = "High critical hit ratio."
  })

  -- Odor Sleuth (NORMAL / STATUS)
  mod.content.moves:register("ODOR_SLEUTH", {
    id = "ODOR_SLEUTH",
    name = "Odor Sleuth",
    type = "NORMAL",
    category = "STATUS",
    power = 0,
    accuracy = 100,
    pp = 40,
    description = "Negates Ghost type immunities."
  })

  -- Outrage (DRAGON / PHYSICAL)
  mod.content.moves:register("OUTRAGE", {
    id = "OUTRAGE",
    name = "Outrage",
    type = "DRAGON",
    category = "PHYSICAL",
    power = 120,
    accuracy = 100,
    pp = 10,
    description = "Rampages for 2-3 turns then becomes confused."
  })

  -- Overheat (FIRE / SPECIAL)
  mod.content.moves:register("OVERHEAT", {
    id = "OVERHEAT",
    name = "Overheat",
    type = "FIRE",
    category = "SPECIAL",
    power = 130,
    accuracy = 90,
    pp = 5,
    description = "Harshly lowers user Sp. Atk (-2)."
  })

  -- Pain Split (NORMAL / STATUS)
  mod.content.moves:register("PAIN_SPLIT", {
    id = "PAIN_SPLIT",
    name = "Pain Split",
    type = "NORMAL",
    category = "STATUS",
    power = 0,
    accuracy = 100,
    pp = 20,
    description = "Adds user and target HP together and divides equally."
  })

  -- Parting Shot (DARK / STATUS)
  mod.content.moves:register("PARTING_SHOT", {
    id = "PARTING_SHOT",
    name = "Parting Shot",
    type = "DARK",
    category = "STATUS",
    power = 0,
    accuracy = 100,
    pp = 20,
    description = "Lowers target Atk/SpAtk then switches out."
  })

  -- Perish Song (NORMAL / STATUS)
  mod.content.moves:register("PERISH_SONG", {
    id = "PERISH_SONG",
    name = "Perish Song",
    type = "NORMAL",
    category = "STATUS",
    power = 0,
    accuracy = 100,
    pp = 5,
    description = "Any Pokemon listening faints in 3 turns."
  })

  -- Play Nice (NORMAL / STATUS)
  mod.content.moves:register("PLAY_NICE", {
    id = "PLAY_NICE",
    name = "Play Nice",
    type = "NORMAL",
    category = "STATUS",
    power = 0,
    accuracy = 100,
    pp = 20,
    description = "Lowers target Attack."
  })

  -- Play Rough (FAIRY / PHYSICAL)
  mod.content.moves:register("PLAY_ROUGH", {
    id = "PLAY_ROUGH",
    name = "Play Rough",
    type = "FAIRY",
    category = "PHYSICAL",
    power = 90,
    accuracy = 90,
    pp = 10,
    description = "10% chance to lower target Attack."
  })

  -- Pluck (FLYING / PHYSICAL)
  mod.content.moves:register("PLUCK", {
    id = "PLUCK",
    name = "Pluck",
    type = "FLYING",
    category = "PHYSICAL",
    power = 60,
    accuracy = 100,
    pp = 20,
    description = "Pecks target and eats its berry."
  })

  -- Poison Fang (POISON / PHYSICAL)
  mod.content.moves:register("POISON_FANG", {
    id = "POISON_FANG",
    name = "Poison Fang",
    type = "POISON",
    category = "PHYSICAL",
    power = 50,
    accuracy = 100,
    pp = 15,
    description = "50% chance to badly poison target."
  })

  -- Poison Jab (POISON / PHYSICAL)
  mod.content.moves:register("POISON_JAB", {
    id = "POISON_JAB",
    name = "Poison Jab",
    type = "POISON",
    category = "PHYSICAL",
    power = 80,
    accuracy = 100,
    pp = 20,
    description = "30% chance to poison target."
  })

  -- Poison Tail (POISON / PHYSICAL)
  mod.content.moves:register("POISON_TAIL", {
    id = "POISON_TAIL",
    name = "Poison Tail",
    type = "POISON",
    category = "PHYSICAL",
    power = 50,
    accuracy = 100,
    pp = 25,
    description = "High critical hit ratio. 10% poison chance."
  })

  -- Powder Snow (ICE / SPECIAL)
  mod.content.moves:register("POWDER_SNOW", {
    id = "POWDER_SNOW",
    name = "Powder Snow",
    type = "ICE",
    category = "SPECIAL",
    power = 40,
    accuracy = 100,
    pp = 25,
    description = "10% chance to freeze target."
  })

  -- Power Gem (ROCK / SPECIAL)
  mod.content.moves:register("POWER_GEM", {
    id = "POWER_GEM",
    name = "Power Gem",
    type = "ROCK",
    category = "SPECIAL",
    power = 80,
    accuracy = 100,
    pp = 20,
    description = "Gems ray attack."
  })

  -- Power Whip (GRASS / PHYSICAL)
  mod.content.moves:register("POWER_WHIP", {
    id = "POWER_WHIP",
    name = "Power Whip",
    type = "GRASS",
    category = "PHYSICAL",
    power = 120,
    accuracy = 85,
    pp = 10,
    description = "Violently lashes with vines."
  })

  -- Pressure (NORMAL / STATUS)
  mod.content.moves:register("PRESSURE", {
    id = "PRESSURE",
    name = "Pressure",
    type = "NORMAL",
    category = "STATUS",
    power = 0,
    accuracy = 100,
    pp = 20,
    description = "Pressure move."
  })

  -- Protect (NORMAL / STATUS)
  mod.content.moves:register("PROTECT", {
    id = "PROTECT",
    name = "Protect",
    type = "NORMAL",
    category = "STATUS",
    power = 0,
    accuracy = 100,
    pp = 10,
    description = "Evades all attacks for one turn."
  })

  -- Psybeam (PSYCHIC / SPECIAL)
  mod.content.moves:register("PSYBEAM", {
    id = "PSYBEAM",
    name = "Psybeam",
    type = "PSYCHIC",
    category = "SPECIAL",
    power = 65,
    accuracy = 100,
    pp = 20,
    description = "10% chance to confuse target."
  })

  -- Psycho Cut (PSYCHIC / PHYSICAL)
  mod.content.moves:register("PSYCHO_CUT", {
    id = "PSYCHO_CUT",
    name = "Psycho Cut",
    type = "PSYCHIC",
    category = "PHYSICAL",
    power = 70,
    accuracy = 100,
    pp = 20,
    description = "High critical hit ratio."
  })

  -- Psystrike (PSYCHIC / SPECIAL)
  mod.content.moves:register("PSYSTRIKE", {
    id = "PSYSTRIKE",
    name = "Psystrike",
    type = "PSYCHIC",
    category = "SPECIAL",
    power = 100,
    accuracy = 100,
    pp = 10,
    description = "Calculates damage using target Defense."
  })

  -- Pursuit (DARK / PHYSICAL)
  mod.content.moves:register("PURSUIT", {
    id = "PURSUIT",
    name = "Pursuit",
    type = "DARK",
    category = "PHYSICAL",
    power = 40,
    accuracy = 100,
    pp = 20,
    description = "Deals double power if target switches out."
  })

  -- Quiver Dance (BUG / STATUS)
  mod.content.moves:register("QUIVER_DANCE", {
    id = "QUIVER_DANCE",
    name = "Quiver Dance",
    type = "BUG",
    category = "STATUS",
    power = 0,
    accuracy = 100,
    pp = 20,
    description = "Raises Sp. Atk, Sp. Def, and Speed (+1)."
  })

  -- Rage Fist (GHOST / PHYSICAL)
  mod.content.moves:register("RAGE_FIST", {
    id = "RAGE_FIST",
    name = "Rage Fist",
    type = "GHOST",
    category = "PHYSICAL",
    power = 50,
    accuracy = 100,
    pp = 10,
    description = "Power increases by 50 for each hit received."
  })

  -- Rain Dance (WATER / STATUS)
  mod.content.moves:register("RAIN_DANCE", {
    id = "RAIN_DANCE",
    name = "Rain Dance",
    type = "WATER",
    category = "STATUS",
    power = 0,
    accuracy = 100,
    pp = 5,
    description = "Summons heavy rain for 5 turns."
  })

  -- Rapid Spin (NORMAL / PHYSICAL)
  mod.content.moves:register("RAPID_SPIN", {
    id = "RAPID_SPIN",
    name = "Rapid Spin",
    type = "NORMAL",
    category = "PHYSICAL",
    power = 50,
    accuracy = 100,
    pp = 40,
    description = "Clears entry hazards and boosts Speed (+1)."
  })

  -- Razor Shell (WATER / PHYSICAL)
  mod.content.moves:register("RAZOR_SHELL", {
    id = "RAZOR_SHELL",
    name = "Razor Shell",
    type = "WATER",
    category = "PHYSICAL",
    power = 75,
    accuracy = 95,
    pp = 10,
    description = "50% chance to lower target Defense."
  })

  -- Revenge (FIGHTING / PHYSICAL)
  mod.content.moves:register("REVENGE", {
    id = "REVENGE",
    name = "Revenge",
    type = "FIGHTING",
    category = "PHYSICAL",
    power = 60,
    accuracy = 100,
    pp = 10,
    description = "Power doubles if user took damage this turn."
  })

  -- Reversal (FIGHTING / PHYSICAL)
  mod.content.moves:register("REVERSAL", {
    id = "REVERSAL",
    name = "Reversal",
    type = "FIGHTING",
    category = "PHYSICAL",
    power = 1,
    accuracy = 100,
    pp = 15,
    description = "Power increases as user HP decreases."
  })

  -- Rock Blast (ROCK / PHYSICAL)
  mod.content.moves:register("ROCK_BLAST", {
    id = "ROCK_BLAST",
    name = "Rock Blast",
    type = "ROCK",
    category = "PHYSICAL",
    power = 25,
    accuracy = 90,
    pp = 10,
    description = "Hits 2 to 5 times in succession."
  })

  -- Rock Climb (NORMAL / PHYSICAL)
  mod.content.moves:register("ROCK_CLIMB", {
    id = "ROCK_CLIMB",
    name = "Rock Climb",
    type = "NORMAL",
    category = "PHYSICAL",
    power = 90,
    accuracy = 85,
    pp = 20,
    description = "20% chance to confuse target."
  })

  -- Rock Polish (ROCK / STATUS)
  mod.content.moves:register("ROCK_POLISH", {
    id = "ROCK_POLISH",
    name = "Rock Polish",
    type = "ROCK",
    category = "STATUS",
    power = 0,
    accuracy = 100,
    pp = 20,
    description = "Sharply boosts Speed (+2)."
  })

  -- Rock Tomb (ROCK / PHYSICAL)
  mod.content.moves:register("ROCK_TOMB", {
    id = "ROCK_TOMB",
    name = "Rock Tomb",
    type = "ROCK",
    category = "PHYSICAL",
    power = 60,
    accuracy = 95,
    pp = 15,
    description = "100% chance to lower target Speed."
  })

  -- Rollout (ROCK / PHYSICAL)
  mod.content.moves:register("ROLLOUT", {
    id = "ROLLOUT",
    name = "Rollout",
    type = "ROCK",
    category = "PHYSICAL",
    power = 30,
    accuracy = 90,
    pp = 20,
    description = "Attacks 5 turns, doubling power each hit."
  })

  -- Roost (FLYING / STATUS)
  mod.content.moves:register("ROOST", {
    id = "ROOST",
    name = "Roost",
    type = "FLYING",
    category = "STATUS",
    power = 0,
    accuracy = 100,
    pp = 10,
    description = "Heals 50% max HP."
  })

  -- Safeguard (NORMAL / STATUS)
  mod.content.moves:register("SAFEGUARD", {
    id = "SAFEGUARD",
    name = "Safeguard",
    type = "NORMAL",
    category = "STATUS",
    power = 0,
    accuracy = 100,
    pp = 25,
    description = "Protects team from status for 5 turns."
  })

  -- Scald (WATER / SPECIAL)
  mod.content.moves:register("SCALD", {
    id = "SCALD",
    name = "Scald",
    type = "WATER",
    category = "SPECIAL",
    power = 80,
    accuracy = 100,
    pp = 15,
    description = "30% chance to burn target."
  })

  -- Scary Face (NORMAL / STATUS)
  mod.content.moves:register("SCARY_FACE", {
    id = "SCARY_FACE",
    name = "Scary Face",
    type = "NORMAL",
    category = "STATUS",
    power = 0,
    accuracy = 100,
    pp = 10,
    description = "Sharply lowers target Speed (-2)."
  })

  -- Seed Bomb (GRASS / PHYSICAL)
  mod.content.moves:register("SEED_BOMB", {
    id = "SEED_BOMB",
    name = "Seed Bomb",
    type = "GRASS",
    category = "PHYSICAL",
    power = 80,
    accuracy = 100,
    pp = 15,
    description = "Slams hard seeds down."
  })

  -- Shadow Ball (GHOST / SPECIAL)
  mod.content.moves:register("SHADOW_BALL", {
    id = "SHADOW_BALL",
    name = "Shadow Ball",
    type = "GHOST",
    category = "SPECIAL",
    power = 80,
    accuracy = 100,
    pp = 15,
    description = "20% chance to lower target Sp. Def."
  })

  -- Shadow Bone (GHOST / PHYSICAL)
  mod.content.moves:register("SHADOW_BONE", {
    id = "SHADOW_BONE",
    name = "Shadow Bone",
    type = "GHOST",
    category = "PHYSICAL",
    power = 85,
    accuracy = 100,
    pp = 10,
    description = "20% chance to lower target Defense."
  })

  -- Shadow Claw (GHOST / PHYSICAL)
  mod.content.moves:register("SHADOW_CLAW", {
    id = "SHADOW_CLAW",
    name = "Shadow Claw",
    type = "GHOST",
    category = "PHYSICAL",
    power = 70,
    accuracy = 100,
    pp = 15,
    description = "High critical hit ratio."
  })

  -- Shadow Sneak (GHOST / PHYSICAL)
  mod.content.moves:register("SHADOW_SNEAK", {
    id = "SHADOW_SNEAK",
    name = "Shadow Sneak",
    type = "GHOST",
    category = "PHYSICAL",
    power = 40,
    accuracy = 100,
    pp = 30,
    description = "Strikes first (+1 priority)."
  })

  -- Shell Smash (NORMAL / STATUS)
  mod.content.moves:register("SHELL_SMASH", {
    id = "SHELL_SMASH",
    name = "Shell Smash",
    type = "NORMAL",
    category = "STATUS",
    power = 0,
    accuracy = 100,
    pp = 15,
    description = "Lowers Def/SpDef (-1), boosts Atk/SpAtk/Spe (+2)."
  })

  -- Shock Wave (ELECTRIC / SPECIAL)
  mod.content.moves:register("SHOCK_WAVE", {
    id = "SHOCK_WAVE",
    name = "Shock Wave",
    type = "ELECTRIC",
    category = "SPECIAL",
    power = 60,
    accuracy = 100,
    pp = 20,
    description = "Never misses."
  })

  -- Signal Beam (BUG / SPECIAL)
  mod.content.moves:register("SIGNAL_BEAM", {
    id = "SIGNAL_BEAM",
    name = "Signal Beam",
    type = "BUG",
    category = "SPECIAL",
    power = 75,
    accuracy = 100,
    pp = 15,
    description = "10% chance to confuse target."
  })

  -- Sky Drop (FLYING / PHYSICAL)
  mod.content.moves:register("SKY_DROP", {
    id = "SKY_DROP",
    name = "Sky Drop",
    type = "FLYING",
    category = "PHYSICAL",
    power = 60,
    accuracy = 100,
    pp = 10,
    description = "Carries target into sky on turn 1, drops on turn 2."
  })

  -- Slack Off (NORMAL / STATUS)
  mod.content.moves:register("SLACK_OFF", {
    id = "SLACK_OFF",
    name = "Slack Off",
    type = "NORMAL",
    category = "STATUS",
    power = 0,
    accuracy = 100,
    pp = 10,
    description = "Heals 50% max HP."
  })

  -- Sleep Talk (NORMAL / STATUS)
  mod.content.moves:register("SLEEP_TALK", {
    id = "SLEEP_TALK",
    name = "Sleep Talk",
    type = "NORMAL",
    category = "STATUS",
    power = 0,
    accuracy = 100,
    pp = 10,
    description = "Uses a random move while asleep."
  })

  -- Sludge Bomb (POISON / SPECIAL)
  mod.content.moves:register("SLUDGE_BOMB", {
    id = "SLUDGE_BOMB",
    name = "Sludge Bomb",
    type = "POISON",
    category = "SPECIAL",
    power = 90,
    accuracy = 100,
    pp = 10,
    description = "30% chance to poison target."
  })

  -- Sludge Wave (POISON / SPECIAL)
  mod.content.moves:register("SLUDGE_WAVE", {
    id = "SLUDGE_WAVE",
    name = "Sludge Wave",
    type = "POISON",
    category = "SPECIAL",
    power = 95,
    accuracy = 100,
    pp = 10,
    description = "10% chance to poison target."
  })

  -- Smack Down (ROCK / PHYSICAL)
  mod.content.moves:register("SMACK_DOWN", {
    id = "SMACK_DOWN",
    name = "Smack Down",
    type = "ROCK",
    category = "PHYSICAL",
    power = 50,
    accuracy = 100,
    pp = 15,
    description = "Knocks Flying types to the ground."
  })

  -- Snore (NORMAL / SPECIAL)
  mod.content.moves:register("SNORE", {
    id = "SNORE",
    name = "Snore",
    type = "NORMAL",
    category = "SPECIAL",
    power = 50,
    accuracy = 100,
    pp = 15,
    description = "Can only be used while asleep. May flinch."
  })

  -- Spark (ELECTRIC / PHYSICAL)
  mod.content.moves:register("SPARK", {
    id = "SPARK",
    name = "Spark",
    type = "ELECTRIC",
    category = "PHYSICAL",
    power = 65,
    accuracy = 100,
    pp = 20,
    description = "30% chance to paralyze target."
  })

  -- Spikes (GROUND / STATUS)
  mod.content.moves:register("SPIKES", {
    id = "SPIKES",
    name = "Spikes",
    type = "GROUND",
    category = "STATUS",
    power = 0,
    accuracy = 100,
    pp = 20,
    description = "Lays entry hazard hurting grounded foes."
  })

  -- Spite (GHOST / STATUS)
  mod.content.moves:register("SPITE", {
    id = "SPITE",
    name = "Spite",
    type = "GHOST",
    category = "STATUS",
    power = 0,
    accuracy = 100,
    pp = 10,
    description = "Cuts 4 PP from last move used by target."
  })

  -- Starlight (FAIRY / SPECIAL)
  mod.content.moves:register("STARLIGHT", {
    id = "STARLIGHT",
    name = "Starlight",
    type = "FAIRY",
    category = "SPECIAL",
    power = 80,
    accuracy = 100,
    pp = 15,
    description = "Fires starlight burst."
  })

  -- Stealth Rock (ROCK / STATUS)
  mod.content.moves:register("STEALTH_ROCK", {
    id = "STEALTH_ROCK",
    name = "Stealth Rock",
    type = "ROCK",
    category = "STATUS",
    power = 0,
    accuracy = 100,
    pp = 20,
    description = "Lays floating rocks that damage foes switching in."
  })

  -- Stone Edge (ROCK / PHYSICAL)
  mod.content.moves:register("STONE_EDGE", {
    id = "STONE_EDGE",
    name = "Stone Edge",
    type = "ROCK",
    category = "PHYSICAL",
    power = 100,
    accuracy = 80,
    pp = 5,
    description = "High critical hit ratio."
  })

  -- Storm Throw (FIGHTING / PHYSICAL)
  mod.content.moves:register("STORM_THROW", {
    id = "STORM_THROW",
    name = "Storm Throw",
    type = "FIGHTING",
    category = "PHYSICAL",
    power = 60,
    accuracy = 100,
    pp = 10,
    description = "Always results in a critical hit."
  })

  -- Strength Sap (GRASS / STATUS)
  mod.content.moves:register("STRENGTH_SAP", {
    id = "STRENGTH_SAP",
    name = "Strength Sap",
    type = "GRASS",
    category = "STATUS",
    power = 0,
    accuracy = 100,
    pp = 10,
    description = "Lowers target Atk and heals user by target Atk."
  })

  -- Sucker Punch (DARK / PHYSICAL)
  mod.content.moves:register("SUCKER_PUNCH", {
    id = "SUCKER_PUNCH",
    name = "Sucker Punch",
    type = "DARK",
    category = "PHYSICAL",
    power = 70,
    accuracy = 100,
    pp = 5,
    description = "Strikes first if target is preparing an attack."
  })

  -- Sunny Day (FIRE / STATUS)
  mod.content.moves:register("SUNNY_DAY", {
    id = "SUNNY_DAY",
    name = "Sunny Day",
    type = "FIRE",
    category = "STATUS",
    power = 0,
    accuracy = 100,
    pp = 5,
    description = "Summons bright sunlight for 5 turns."
  })

  -- Superpower (FIGHTING / PHYSICAL)
  mod.content.moves:register("SUPERPOWER", {
    id = "SUPERPOWER",
    name = "Superpower",
    type = "FIGHTING",
    category = "PHYSICAL",
    power = 120,
    accuracy = 100,
    pp = 5,
    description = "Lowers user Atk and Def (-1)."
  })

  -- Sweet Scent (NORMAL / STATUS)
  mod.content.moves:register("SWEET_SCENT", {
    id = "SWEET_SCENT",
    name = "Sweet Scent",
    type = "NORMAL",
    category = "STATUS",
    power = 0,
    accuracy = 100,
    pp = 20,
    description = "Lowers target Evasion (-2)."
  })

  -- Synthesis (GRASS / STATUS)
  mod.content.moves:register("SYNTHESIS", {
    id = "SYNTHESIS",
    name = "Synthesis",
    type = "GRASS",
    category = "STATUS",
    power = 0,
    accuracy = 100,
    pp = 5,
    description = "Heals HP depending on weather."
  })

  -- Tailwind (FLYING / STATUS)
  mod.content.moves:register("TAIL_WIND", {
    id = "TAIL_WIND",
    name = "Tailwind",
    type = "FLYING",
    category = "STATUS",
    power = 0,
    accuracy = 100,
    pp = 15,
    description = "Doubles team Speed for 4 turns."
  })

  -- Taunt (DARK / STATUS)
  mod.content.moves:register("TAUNT", {
    id = "TAUNT",
    name = "Taunt",
    type = "DARK",
    category = "STATUS",
    power = 0,
    accuracy = 100,
    pp = 20,
    description = "Prevents target from using status moves for 3 turns."
  })

  -- Thunder Fang (ELECTRIC / PHYSICAL)
  mod.content.moves:register("THUNDER_FANG", {
    id = "THUNDER_FANG",
    name = "Thunder Fang",
    type = "ELECTRIC",
    category = "PHYSICAL",
    power = 65,
    accuracy = 95,
    pp = 15,
    description = "May paralyze or flinch target."
  })

  -- Toxic Spikes (POISON / STATUS)
  mod.content.moves:register("TOXIC_SPIKES", {
    id = "TOXIC_SPIKES",
    name = "Toxic Spikes",
    type = "POISON",
    category = "STATUS",
    power = 0,
    accuracy = 100,
    pp = 20,
    description = "Poisons foes upon switching in."
  })

  -- Trick Room (PSYCHIC / STATUS)
  mod.content.moves:register("TRICK_ROOM", {
    id = "TRICK_ROOM",
    name = "Trick Room",
    type = "PSYCHIC",
    category = "STATUS",
    power = 0,
    accuracy = 100,
    pp = 5,
    description = "Slower Pokemon move first for 5 turns."
  })

  -- Twister (DRAGON / SPECIAL)
  mod.content.moves:register("TWISTER", {
    id = "TWISTER",
    name = "Twister",
    type = "DRAGON",
    category = "SPECIAL",
    power = 40,
    accuracy = 100,
    pp = 20,
    description = "20% chance to cause flinching."
  })

  -- U-turn (BUG / PHYSICAL)
  mod.content.moves:register("U_TURN", {
    id = "U_TURN",
    name = "U-turn",
    type = "BUG",
    category = "PHYSICAL",
    power = 70,
    accuracy = 100,
    pp = 20,
    description = "Switches out after attacking."
  })

  -- Vacuum Wave (FIGHTING / SPECIAL)
  mod.content.moves:register("VACUUM_WAVE", {
    id = "VACUUM_WAVE",
    name = "Vacuum Wave",
    type = "FIGHTING",
    category = "SPECIAL",
    power = 40,
    accuracy = 100,
    pp = 30,
    description = "Strikes first (+1 priority)."
  })

  -- Vital Throw (FIGHTING / PHYSICAL)
  mod.content.moves:register("VITAL_THROW", {
    id = "VITAL_THROW",
    name = "Vital Throw",
    type = "FIGHTING",
    category = "PHYSICAL",
    power = 70,
    accuracy = 100,
    pp = 10,
    description = "Never misses, but user moves last."
  })

  -- Volt Switch (ELECTRIC / SPECIAL)
  mod.content.moves:register("VOLT_SWITCH", {
    id = "VOLT_SWITCH",
    name = "Volt Switch",
    type = "ELECTRIC",
    category = "SPECIAL",
    power = 70,
    accuracy = 100,
    pp = 20,
    description = "Switches out after attacking."
  })

  -- Volt Tackle (ELECTRIC / PHYSICAL)
  mod.content.moves:register("VOLT_TACKLE", {
    id = "VOLT_TACKLE",
    name = "Volt Tackle",
    type = "ELECTRIC",
    category = "PHYSICAL",
    power = 120,
    accuracy = 100,
    pp = 15,
    description = "Takes 33% recoil damage. 10% paralyze chance."
  })

  -- Water Pulse (WATER / SPECIAL)
  mod.content.moves:register("WATER_PULSE", {
    id = "WATER_PULSE",
    name = "Water Pulse",
    type = "WATER",
    category = "SPECIAL",
    power = 60,
    accuracy = 100,
    pp = 20,
    description = "20% chance to confuse target."
  })

  -- Wild Charge (ELECTRIC / PHYSICAL)
  mod.content.moves:register("WILD_CHARGE", {
    id = "WILD_CHARGE",
    name = "Wild Charge",
    type = "ELECTRIC",
    category = "PHYSICAL",
    power = 90,
    accuracy = 100,
    pp = 15,
    description = "Takes 25% recoil damage."
  })

  -- Will-O-Wisp (FIRE / STATUS)
  mod.content.moves:register("WILL_O_WISP", {
    id = "WILL_O_WISP",
    name = "Will-O-Wisp",
    type = "FIRE",
    category = "STATUS",
    power = 0,
    accuracy = 85,
    pp = 15,
    description = "Inflicts burn status on target."
  })

  -- Wish (NORMAL / STATUS)
  mod.content.moves:register("WISH", {
    id = "WISH",
    name = "Wish",
    type = "NORMAL",
    category = "STATUS",
    power = 0,
    accuracy = 100,
    pp = 10,
    description = "Restores 50% max HP next turn."
  })

  -- Wood Hammer (GRASS / PHYSICAL)
  mod.content.moves:register("WOOD_HAMMER", {
    id = "WOOD_HAMMER",
    name = "Wood Hammer",
    type = "GRASS",
    category = "PHYSICAL",
    power = 120,
    accuracy = 100,
    pp = 15,
    description = "Takes 33% recoil damage."
  })

  -- X-Scissor (BUG / PHYSICAL)
  mod.content.moves:register("X_SCISSOR", {
    id = "X_SCISSOR",
    name = "X-Scissor",
    type = "BUG",
    category = "PHYSICAL",
    power = 80,
    accuracy = 100,
    pp = 15,
    description = "Slashes with scythes or claws."
  })

  -- Yawn (NORMAL / STATUS)
  mod.content.moves:register("YAWN", {
    id = "YAWN",
    name = "Yawn",
    type = "NORMAL",
    category = "STATUS",
    power = 0,
    accuracy = 100,
    pp = 10,
    description = "Puts target to sleep next turn."
  })

  -- Zap Cannon (ELECTRIC / SPECIAL)
  mod.content.moves:register("ZAP_CANNON", {
    id = "ZAP_CANNON",
    name = "Zap Cannon",
    type = "ELECTRIC",
    category = "SPECIAL",
    power = 120,
    accuracy = 50,
    pp = 5,
    description = "100% chance to paralyze target."
  })

  -- Zen Headbutt (PSYCHIC / PHYSICAL)
  mod.content.moves:register("ZEN_HEADBUTT", {
    id = "ZEN_HEADBUTT",
    name = "Zen Headbutt",
    type = "PSYCHIC",
    category = "PHYSICAL",
    power = 80,
    accuracy = 90,
    pp = 15,
    description = "20% chance to cause flinching."
  })

  
  -- Additional Post-Gen 1 Moves Registration
  mod.content.moves:register("HIGH_JUMP_KICK", { id = "HIGH_JUMP_KICK", name = "High Jump Kick", type = "FIGHTING", category = "PHYSICAL", power = 130, accuracy = 90, pp = 10, description = "If it misses, the user takes damage." })
  mod.content.moves:register("ERUPTION", { id = "ERUPTION", name = "Eruption", type = "FIRE", category = "SPECIAL", power = 150, accuracy = 100, pp = 5, description = "Higher power the higher the user's HP." })
  mod.content.moves:register("DRAIN_PUNCH", { id = "DRAIN_PUNCH", name = "Drain Punch", type = "FIGHTING", category = "PHYSICAL", power = 75, accuracy = 100, pp = 10, description = "Restores HP equal to half damage dealt." })
  mod.content.moves:register("CROSS_POISON", { id = "CROSS_POISON", name = "Cross Poison", type = "POISON", category = "PHYSICAL", power = 70, accuracy = 100, pp = 20, description = "High critical-hit ratio. May poison target." })
  mod.content.moves:register("CHARM", { id = "CHARM", name = "Charm", type = "FAIRY", category = "STATUS", power = 0, accuracy = 100, pp = 20, description = "Harshly lowers the target's Attack." })
  mod.content.moves:register("COTTON_GUARD", { id = "COTTON_GUARD", name = "Cotton Guard", type = "GRASS", category = "STATUS", power = 0, accuracy = 100, pp = 10, description = "Drastically boosts the user's Defense." })
  mod.content.moves:register("MAGICAL_LEAF", { id = "MAGICAL_LEAF", name = "Magical Leaf", type = "GRASS", category = "SPECIAL", power = 60, accuracy = 100, pp = 20, description = "Scatters magical leaves that never miss." })
  mod.content.moves:register("HIDDEN_POWER", { id = "HIDDEN_POWER", name = "Hidden Power", type = "NORMAL", category = "SPECIAL", power = 60, accuracy = 100, pp = 15, description = "A unique attack depending on the user." })
  mod.content.moves:register("MIRROR_COAT", { id = "MIRROR_COAT", name = "Mirror Coat", type = "PSYCHIC", category = "SPECIAL", power = 1, accuracy = 100, pp = 20, description = "Counters special attacks with double damage." })
  mod.content.moves:register("STICKY_WEB", { id = "STICKY_WEB", name = "Sticky Web", type = "BUG", category = "STATUS", power = 0, accuracy = 100, pp = 20, description = "Lays a sticky net that lowers Speed on switch in." })
  mod.content.moves:register("ICICLE_CRASH", { id = "ICICLE_CRASH", name = "Icicle Crash", type = "ICE", category = "PHYSICAL", power = 85, accuracy = 90, pp = 10, description = "Drops large icicles. May cause flinching." })
  mod.content.moves:register("LAVA_PLUME", { id = "LAVA_PLUME", name = "Lava Plume", type = "FIRE", category = "SPECIAL", power = 80, accuracy = 100, pp = 15, description = "30% chance to burn targets." })
  mod.content.moves:register("OCTAZOOKA", { id = "OCTAZOOKA", name = "Octazooka", type = "WATER", category = "SPECIAL", power = 65, accuracy = 85, pp = 10, description = "Fires ink. May lower target's Accuracy." })
  mod.content.moves:register("PRESENT", { id = "PRESENT", name = "Present", type = "NORMAL", category = "PHYSICAL", power = 40, accuracy = 90, pp = 15, description = "Gives a present that may damage or heal." })
  mod.content.moves:register("STEEL_WING", { id = "STEEL_WING", name = "Steel Wing", type = "STEEL", category = "PHYSICAL", power = 70, accuracy = 90, pp = 25, description = "Strikes with hard wings. May boost Defense." })
  mod.content.moves:register("SKETCH", { id = "SKETCH", name = "Sketch", type = "NORMAL", category = "STATUS", power = 0, accuracy = 100, pp = 1, description = "Copies the move used by the opponent." })
  mod.content.moves:register("TRIPLE_KICK", { id = "TRIPLE_KICK", name = "Triple Kick", type = "FIGHTING", category = "PHYSICAL", power = 20, accuracy = 90, pp = 10, description = "Kicks 3 times with increasing power." })
  mod.content.moves:register("MILK_DRINK", { id = "MILK_DRINK", name = "Milk Drink", type = "NORMAL", category = "STATUS", power = 0, accuracy = 100, pp = 10, description = "Restores half the user's max HP." })
  mod.content.moves:register("SACRED_FIRE", { id = "SACRED_FIRE", name = "Sacred Fire", type = "FIRE", category = "PHYSICAL", power = 100, accuracy = 95, pp = 5, description = "50% chance to burn the target." })
  mod.content.moves:register("AEROBLAST", { id = "AEROBLAST", name = "Aeroblast", type = "FLYING", category = "SPECIAL", power = 100, accuracy = 95, pp = 5, description = "High critical-hit ratio." })
  mod.content.moves:register("FACADE", { id = "FACADE", name = "Facade", type = "NORMAL", category = "PHYSICAL", power = 70, accuracy = 100, pp = 20, description = "Power doubles if burned, paralyzed, or poisoned." })
  mod.content.moves:register("BOOMBURST", { id = "BOOMBURST", name = "Boomburst", type = "NORMAL", category = "SPECIAL", power = 140, accuracy = 100, pp = 10, description = "Attacks everything around with noise." })
  mod.content.moves:register("PHANTOM_FORCE", { id = "PHANTOM_FORCE", name = "Phantom Force", type = "GHOST", category = "PHYSICAL", power = 90, accuracy = 100, pp = 10, description = "Disappears turn 1, strikes through protect turn 2." })
  mod.content.moves:register("ECHOED_VOICE", { id = "ECHOED_VOICE", name = "Echoed Voice", type = "NORMAL", category = "SPECIAL", power = 40, accuracy = 100, pp = 15, description = "Power increases every turn it is used." })
  mod.content.moves:register("ARM_THRUST", { id = "ARM_THRUST", name = "Arm Thrust", type = "FIGHTING", category = "PHYSICAL", power = 15, accuracy = 100, pp = 20, description = "Slaps 2 to 5 times in succession." })
  mod.content.moves:register("TAIL_GLOW", { id = "TAIL_GLOW", name = "Tail Glow", type = "BUG", category = "STATUS", power = 0, accuracy = 100, pp = 20, description = "Drastically boosts Sp. Atk (+3)." })
  mod.content.moves:register("WATER_SPOUT", { id = "WATER_SPOUT", name = "Water Spout", type = "WATER", category = "SPECIAL", power = 150, accuracy = 100, pp = 5, description = "Higher power the higher the user's HP." })
  mod.content.moves:register("TEETER_DANCE", { id = "TEETER_DANCE", name = "Teeter Dance", type = "NORMAL", category = "STATUS", power = 0, accuracy = 100, pp = 20, description = "Confuses all Pokemon in battle." })
  mod.content.moves:register("NEEDLE_ARM", { id = "NEEDLE_ARM", name = "Needle Arm", type = "GRASS", category = "PHYSICAL", power = 60, accuracy = 100, pp = 15, description = "30% chance to cause flinching." })
  mod.content.moves:register("WEATHER_BALL", { id = "WEATHER_BALL", name = "Weather Ball", type = "NORMAL", category = "SPECIAL", power = 50, accuracy = 100, pp = 10, description = "Type and power change with weather." })
  mod.content.moves:register("SHADOW_PUNCH", { id = "SHADOW_PUNCH", name = "Shadow Punch", type = "GHOST", category = "PHYSICAL", power = 60, accuracy = 100, pp = 20, description = "Shadow punch that never misses." })
  mod.content.moves:register("ICE_BALL", { id = "ICE_BALL", name = "Ice Ball", type = "ICE", category = "PHYSICAL", power = 30, accuracy = 90, pp = 20, description = "Attacks 5 turns, doubling power each hit." })
  mod.content.moves:register("METEOR_MASH", { id = "METEOR_MASH", name = "Meteor Mash", type = "STEEL", category = "PHYSICAL", power = 90, accuracy = 90, pp = 10, description = "20% chance to raise Attack." })
  mod.content.moves:register("MIST_BALL", { id = "MIST_BALL", name = "Mist Ball", type = "PSYCHIC", category = "SPECIAL", power = 70, accuracy = 100, pp = 5, description = "50% chance to lower target's Sp. Atk." })
  mod.content.moves:register("LUSTER_PURGE", { id = "LUSTER_PURGE", name = "Luster Purge", type = "PSYCHIC", category = "SPECIAL", power = 70, accuracy = 100, pp = 5, description = "50% chance to lower target's Sp. Def." })
  mod.content.moves:register("BULK_UP", { id = "BULK_UP", name = "Bulk Up", type = "FIGHTING", category = "STATUS", power = 0, accuracy = 100, pp = 20, description = "Raises Attack and Defense stages (+1)." })
  mod.content.moves:register("DRAGON_ASCENT", { id = "DRAGON_ASCENT", name = "Dragon Ascent", type = "FLYING", category = "PHYSICAL", power = 120, accuracy = 100, pp = 5, description = "Lowers Defense and Sp. Def stages (-1)." })
  mod.content.moves:register("DOOM_DESIRE", { id = "DOOM_DESIRE", name = "Doom Desire", type = "STEEL", category = "SPECIAL", power = 140, accuracy = 100, pp = 5, description = "Deals damage two turns after use." })
  mod.content.moves:register("PSYCHO_BOOST", { id = "PSYCHO_BOOST", name = "Psycho Boost", type = "PSYCHIC", category = "SPECIAL", power = 140, accuracy = 90, pp = 5, description = "Harshly lowers user's Sp. Atk (-2)." })
  mod.content.moves:register("DUAL_WINGBEAT", { id = "DUAL_WINGBEAT", name = "Dual Wingbeat", type = "FLYING", category = "PHYSICAL", power = 40, accuracy = 90, pp = 10, description = "Lashes target twice with wings." })

  mod.log:info('Successfully registered ' .. tostring(212) .. ' new post-Gen 1 moves!')
end
