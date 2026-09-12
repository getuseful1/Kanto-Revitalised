-- ============================================================================
-- Kanto Revitalised - New Moves Effects Engine (new-moves-effects.lua)
-- Gen1Recomp Mod API v2
-- Implements complete battle mechanics, hooks, and execution callbacks
-- for all 212 post-Generation 1 moves registered in new-moves.lua.
-- ============================================================================

return function(mod)
  if not mod or not mod.hooks or not mod.events or not mod.content or not mod.content.moves then
    error("new-moves-effects.lua requires a valid gen1recomp mod object!")
  end

  mod.log:info("Kanto Revitalised: Initializing New Moves Battle Effects Engine...")

  -- =========================================================================
  -- 1. MOVE EFFECT DEFINITIONS MATRIX
  -- =========================================================================
  local MOVE_EFFECTS = {}

  MOVE_EFFECTS["ACID_SPRAY"] = { target_drop_chance = 100, target_drops = { spDef = -2 } }
  MOVE_EFFECTS["ACROBATICS"] = { standard_effect = true }
  MOVE_EFFECTS["AERIAL_ACE"] = { standard_effect = true }
  MOVE_EFFECTS["AIR_SLASH"] = { crit_stage = 1, flinch_chance = 30 }
  MOVE_EFFECTS["ANCIENT_POWER"] = { self_boost_chance = 10, self_boosts = { attack = 1, defense = 1, spAtk = 1, spDef = 1, speed = 1 } }
  MOVE_EFFECTS["AQUA_JET"] = { priority = 1 }
  MOVE_EFFECTS["AQUA_RING"] = { standard_effect = true }
  MOVE_EFFECTS["AQUA_TAIL"] = { standard_effect = true }
  MOVE_EFFECTS["AROMATHERAPY"] = { standard_effect = true }
  MOVE_EFFECTS["ASSURANCE"] = { standard_effect = true }
  MOVE_EFFECTS["ASTONISH"] = { standard_effect = true }
  MOVE_EFFECTS["AURA_SPHERE"] = { standard_effect = true }
  MOVE_EFFECTS["BABY_DOLL_EYES"] = { standard_effect = true }
  MOVE_EFFECTS["BATON_PASS"] = { standard_effect = true }
  MOVE_EFFECTS["BELLY_DRUM"] = { self_boosts = { attack = 6 }, self_hp_cost_percent = 50, category = "STATUS" }
  MOVE_EFFECTS["BLAZE_KICK"] = { standard_effect = true }
  MOVE_EFFECTS["BRAVE_BIRD"] = { recoil_percent = 33 }
  MOVE_EFFECTS["BRICK_BREAK"] = { standard_effect = true }
  MOVE_EFFECTS["BRINE"] = { standard_effect = true }
  MOVE_EFFECTS["BUG_BITE"] = { standard_effect = true }
  MOVE_EFFECTS["BUG_BUZZ"] = { standard_effect = true }
  MOVE_EFFECTS["BULLDOZE"] = { target_drop_chance = 100, target_drops = { speed = -1 } }
  MOVE_EFFECTS["BULLET_PUNCH"] = { priority = 1 }
  MOVE_EFFECTS["BULLET_SEED"] = { multi_hit = { min = 2, max = 5 } }
  MOVE_EFFECTS["CALM_MIND"] = { self_boosts = { spAtk = 1, spDef = 1 }, category = "STATUS" }
  MOVE_EFFECTS["CAMOUFLAGE"] = { standard_effect = true }
  MOVE_EFFECTS["CHARGE"] = { self_boosts = { spDef = 1 }, special_effect = "charge_electric", category = "STATUS" }
  MOVE_EFFECTS["CIRCLE_THROW"] = { standard_effect = true }
  MOVE_EFFECTS["CLEAR_SMOG"] = { reset_target_stats = true }
  MOVE_EFFECTS["CLOSE_COMBAT"] = { self_drops = { defense = -1, spDef = -1 } }
  MOVE_EFFECTS["COIL"] = { self_boosts = { attack = 1, defense = 1, accuracy = 1 }, category = "STATUS" }
  MOVE_EFFECTS["CONVERSION_2"] = { standard_effect = true }
  MOVE_EFFECTS["COSMIC_POWER"] = { self_boosts = { defense = 1, spDef = 1 }, category = "STATUS" }
  MOVE_EFFECTS["COVET"] = { standard_effect = true }
  MOVE_EFFECTS["CROSS_CHOP"] = { crit_stage = 1 }
  MOVE_EFFECTS["CRUNCH"] = { standard_effect = true }
  MOVE_EFFECTS["CURSE"] = { standard_effect = true }
  MOVE_EFFECTS["DARK_PULSE"] = { flinch_chance = 20 }
  MOVE_EFFECTS["DAZZLING_GLEAM"] = { standard_effect = true }
  MOVE_EFFECTS["DEFOG"] = { clear_hazards = true, target_drops = { evasion = -1 }, category = "STATUS" }
  MOVE_EFFECTS["DESTINY_BOND"] = { standard_effect = true }
  MOVE_EFFECTS["DETECT"] = { standard_effect = true }
  MOVE_EFFECTS["DISARMING_VOICE"] = { standard_effect = true }
  MOVE_EFFECTS["DISCHARGE"] = { secondary_status = "PARALYSIS", status_chance = 30 }
  MOVE_EFFECTS["DOUBLE_HIT"] = { multi_hit = { min = 2, max = 2 } }
  MOVE_EFFECTS["DRAGON_BREATH"] = { standard_effect = true }
  MOVE_EFFECTS["DRAGON_CLAW"] = { standard_effect = true }
  MOVE_EFFECTS["DRAGON_DANCE"] = { self_boosts = { attack = 1, speed = 1 }, category = "STATUS" }
  MOVE_EFFECTS["DRAGON_HAMMER"] = { standard_effect = true }
  MOVE_EFFECTS["DRAGON_PULSE"] = { standard_effect = true }
  MOVE_EFFECTS["DRAGON_RUSH"] = { standard_effect = true }
  MOVE_EFFECTS["DRAGON_TAIL"] = { standard_effect = true }
  MOVE_EFFECTS["DRILL_RUN"] = { crit_stage = 1 }
  MOVE_EFFECTS["DYNAMIC_PUNCH"] = { standard_effect = true }
  MOVE_EFFECTS["EARTH_POWER"] = { standard_effect = true }
  MOVE_EFFECTS["ENCORE"] = { standard_effect = true }
  MOVE_EFFECTS["ENDURE"] = { standard_effect = true }
  MOVE_EFFECTS["ENERGY_BALL"] = { standard_effect = true }
  MOVE_EFFECTS["EXTRASENSORY"] = { standard_effect = true }
  MOVE_EFFECTS["EXTREME_SPEED"] = { priority = 2 }
  MOVE_EFFECTS["FAIRY_WIND"] = { standard_effect = true }
  MOVE_EFFECTS["FAKE_OUT"] = { priority = 1, first_turn_only = true, flinch_chance = 100 }
  MOVE_EFFECTS["FALSE_SWIPE"] = { standard_effect = true }
  MOVE_EFFECTS["FEATHER_DANCE"] = { standard_effect = true }
  MOVE_EFFECTS["FEINT_ATTACK"] = { standard_effect = true }
  MOVE_EFFECTS["FELL_STINGER"] = { standard_effect = true }
  MOVE_EFFECTS["FIRE_FANG"] = { standard_effect = true }
  MOVE_EFFECTS["FLAIL"] = { standard_effect = true }
  MOVE_EFFECTS["FLAME_BURST"] = { standard_effect = true }
  MOVE_EFFECTS["FLAME_CHARGE"] = { self_boost_chance = 100, self_boosts = { speed = 1 } }
  MOVE_EFFECTS["FLAME_WHEEL"] = { standard_effect = true }
  MOVE_EFFECTS["FLARE_BLITZ"] = { recoil_percent = 33, secondary_status = "BURN", status_chance = 10 }
  MOVE_EFFECTS["FLASH_CANNON"] = { standard_effect = true }
  MOVE_EFFECTS["FOCUS_BLAST"] = { standard_effect = true }
  MOVE_EFFECTS["FOLLOW_ME"] = { standard_effect = true }
  MOVE_EFFECTS["FORCE_PALM"] = { secondary_status = "PARALYSIS", status_chance = 30 }
  MOVE_EFFECTS["FORESIGHT"] = { standard_effect = true }
  MOVE_EFFECTS["FOUL_PLAY"] = { standard_effect = true }
  MOVE_EFFECTS["FREEZE_DRY"] = { standard_effect = true }
  MOVE_EFFECTS["FROST_BREATH"] = { always_crit = true }
  MOVE_EFFECTS["FUTURE_SIGHT"] = { standard_effect = true }
  MOVE_EFFECTS["GASTRO_ACID"] = { standard_effect = true }
  MOVE_EFFECTS["GIGA_DRAIN"] = { drain_percent = 50 }
  MOVE_EFFECTS["GIGA_IMPACT"] = { standard_effect = true }
  MOVE_EFFECTS["GUNK_SHOT"] = { secondary_status = "POISON", status_chance = 30 }
  MOVE_EFFECTS["GYRO_BALL"] = { standard_effect = true }
  MOVE_EFFECTS["HAMMER_ARM"] = { self_drops = { speed = -1 } }
  MOVE_EFFECTS["HEAD_SMASH"] = { recoil_percent = 50 }
  MOVE_EFFECTS["HEAL_BELL"] = { standard_effect = true }
  MOVE_EFFECTS["HEAT_WAVE"] = { standard_effect = true }
  MOVE_EFFECTS["HEAVY_SLAM"] = { standard_effect = true }
  MOVE_EFFECTS["HELPING_HAND"] = { standard_effect = true }
  MOVE_EFFECTS["HEX"] = { standard_effect = true }
  MOVE_EFFECTS["HIGH_HORSEPOWER"] = { standard_effect = true }
  MOVE_EFFECTS["HURRICANE"] = { standard_effect = true }
  MOVE_EFFECTS["HYPER_VOICE"] = { standard_effect = true }
  MOVE_EFFECTS["ICE_FANG"] = { standard_effect = true }
  MOVE_EFFECTS["ICE_SHARD"] = { priority = 1 }
  MOVE_EFFECTS["ICICLE_SPEAR"] = { multi_hit = { min = 2, max = 5 } }
  MOVE_EFFECTS["ICY_WIND"] = { target_drop_chance = 100, target_drops = { speed = -1 } }
  MOVE_EFFECTS["IRON_DEFENSE"] = { self_boosts = { defense = 2 }, category = "STATUS" }
  MOVE_EFFECTS["IRON_HEAD"] = { flinch_chance = 30 }
  MOVE_EFFECTS["IRON_TAIL"] = { standard_effect = true }
  MOVE_EFFECTS["KNOCK_OFF"] = { standard_effect = true }
  MOVE_EFFECTS["LEAF_BLADE"] = { crit_stage = 1 }
  MOVE_EFFECTS["LEAF_STORM"] = { self_drops = { spAtk = -2 } }
  MOVE_EFFECTS["LIQUIDATION"] = { standard_effect = true }
  MOVE_EFFECTS["LOCK_ON"] = { standard_effect = true }
  MOVE_EFFECTS["LOW_SWEEP"] = { target_drop_chance = 100, target_drops = { speed = -1 } }
  MOVE_EFFECTS["MACH_PUNCH"] = { priority = 1 }
  MOVE_EFFECTS["MAGNET_BOMB"] = { standard_effect = true }
  MOVE_EFFECTS["MAGNET_RISE"] = { standard_effect = true }
  MOVE_EFFECTS["MAGNITUDE"] = { standard_effect = true }
  MOVE_EFFECTS["MEAN_LOOK"] = { standard_effect = true }
  MOVE_EFFECTS["MEGAHORN"] = { standard_effect = true }
  MOVE_EFFECTS["METAL_CLAW"] = { standard_effect = true }
  MOVE_EFFECTS["ME_FIRST"] = { standard_effect = true }
  MOVE_EFFECTS["MIND_READER"] = { standard_effect = true }
  MOVE_EFFECTS["MIRROR_SHOT"] = { standard_effect = true }
  MOVE_EFFECTS["MOONBLAST"] = { standard_effect = true }
  MOVE_EFFECTS["MOONLIGHT"] = { heal_percent = 50, special_effect = "weather_heal", category = "STATUS" }
  MOVE_EFFECTS["MORNING_SUN"] = { heal_percent = 50, special_effect = "weather_heal", category = "STATUS" }
  MOVE_EFFECTS["MUD_BOMB"] = { standard_effect = true }
  MOVE_EFFECTS["MUD_SHOT"] = { target_drop_chance = 100, target_drops = { speed = -1 } }
  MOVE_EFFECTS["MUD_SLAP"] = { target_drop_chance = 100, target_drops = { accuracy = -1 } }
  MOVE_EFFECTS["NASTY_PLOT"] = { self_boosts = { spAtk = 2 }, category = "STATUS" }
  MOVE_EFFECTS["NIGHT_SLASH"] = { crit_stage = 1 }
  MOVE_EFFECTS["ODOR_SLEUTH"] = { standard_effect = true }
  MOVE_EFFECTS["OUTRAGE"] = { standard_effect = true }
  MOVE_EFFECTS["OVERHEAT"] = { self_drops = { spAtk = -2 } }
  MOVE_EFFECTS["PAIN_SPLIT"] = { standard_effect = true }
  MOVE_EFFECTS["PARTING_SHOT"] = { pivot = true, target_drops = { attack = -1, spAtk = -1 }, category = "STATUS" }
  MOVE_EFFECTS["PERISH_SONG"] = { standard_effect = true }
  MOVE_EFFECTS["PLAY_NICE"] = { standard_effect = true }
  MOVE_EFFECTS["PLAY_ROUGH"] = { standard_effect = true }
  MOVE_EFFECTS["PLUCK"] = { standard_effect = true }
  MOVE_EFFECTS["POISON_FANG"] = { standard_effect = true }
  MOVE_EFFECTS["POISON_JAB"] = { secondary_status = "POISON", status_chance = 30 }
  MOVE_EFFECTS["POISON_TAIL"] = { standard_effect = true }
  MOVE_EFFECTS["POWDER_SNOW"] = { standard_effect = true }
  MOVE_EFFECTS["POWER_GEM"] = { standard_effect = true }
  MOVE_EFFECTS["POWER_WHIP"] = { standard_effect = true }
  MOVE_EFFECTS["PRESSURE"] = { standard_effect = true }
  MOVE_EFFECTS["PROTECT"] = { standard_effect = true }
  MOVE_EFFECTS["PSYBEAM"] = { standard_effect = true }
  MOVE_EFFECTS["PSYCHO_CUT"] = { crit_stage = 1 }
  MOVE_EFFECTS["PSYSTRIKE"] = { standard_effect = true }
  MOVE_EFFECTS["PURSUIT"] = { standard_effect = true }
  MOVE_EFFECTS["QUIVER_DANCE"] = { self_boosts = { spAtk = 1, spDef = 1, speed = 1 }, category = "STATUS" }
  MOVE_EFFECTS["RAGE_FIST"] = { standard_effect = true }
  MOVE_EFFECTS["RAIN_DANCE"] = { weather = "RAIN", category = "STATUS" }
  MOVE_EFFECTS["RAPID_SPIN"] = { clear_hazards = true, self_boosts = { speed = 1 }, category = "PHYSICAL" }
  MOVE_EFFECTS["RAZOR_SHELL"] = { crit_stage = 1, target_drops = { defense = -1 }, target_drop_chance = 50 }
  MOVE_EFFECTS["REVENGE"] = { standard_effect = true }
  MOVE_EFFECTS["REVERSAL"] = { standard_effect = true }
  MOVE_EFFECTS["ROCK_BLAST"] = { multi_hit = { min = 2, max = 5 } }
  MOVE_EFFECTS["ROCK_CLIMB"] = { standard_effect = true }
  MOVE_EFFECTS["ROCK_POLISH"] = { self_boosts = { speed = 2 }, category = "STATUS" }
  MOVE_EFFECTS["ROCK_TOMB"] = { target_drop_chance = 100, target_drops = { speed = -1 } }
  MOVE_EFFECTS["ROLLOUT"] = { standard_effect = true }
  MOVE_EFFECTS["ROOST"] = { heal_percent = 50, special_effect = "ground_flying_type", category = "STATUS" }
  MOVE_EFFECTS["SAFEGUARD"] = { standard_effect = true }
  MOVE_EFFECTS["SCALD"] = { secondary_status = "BURN", status_chance = 30 }
  MOVE_EFFECTS["SCARY_FACE"] = { standard_effect = true }
  MOVE_EFFECTS["SEED_BOMB"] = { standard_effect = true }
  MOVE_EFFECTS["SHADOW_BALL"] = { standard_effect = true }
  MOVE_EFFECTS["SHADOW_BONE"] = { standard_effect = true }
  MOVE_EFFECTS["SHADOW_CLAW"] = { standard_effect = true }
  MOVE_EFFECTS["SHADOW_SNEAK"] = { priority = 1 }
  MOVE_EFFECTS["SHELL_SMASH"] = { self_boosts = { attack = 2, spAtk = 2, speed = 2, defense = -1, spDef = -1 }, category = "STATUS" }
  MOVE_EFFECTS["SHOCK_WAVE"] = { standard_effect = true }
  MOVE_EFFECTS["SIGNAL_BEAM"] = { standard_effect = true }
  MOVE_EFFECTS["SKY_DROP"] = { standard_effect = true }
  MOVE_EFFECTS["SLACK_OFF"] = { heal_percent = 50, category = "STATUS" }
  MOVE_EFFECTS["SLEEP_TALK"] = { standard_effect = true }
  MOVE_EFFECTS["SLUDGE_BOMB"] = { secondary_status = "POISON", status_chance = 30 }
  MOVE_EFFECTS["SLUDGE_WAVE"] = { secondary_status = "POISON", status_chance = 10 }
  MOVE_EFFECTS["SMACK_DOWN"] = { standard_effect = true }
  MOVE_EFFECTS["SNORE"] = { standard_effect = true }
  MOVE_EFFECTS["SPARK"] = { standard_effect = true }
  MOVE_EFFECTS["SPIKES"] = { hazard = "SPIKES", category = "STATUS" }
  MOVE_EFFECTS["SPITE"] = { standard_effect = true }
  MOVE_EFFECTS["STARLIGHT"] = { standard_effect = true }
  MOVE_EFFECTS["STEALTH_ROCK"] = { hazard = "STEALTH_ROCK", category = "STATUS" }
  MOVE_EFFECTS["STONE_EDGE"] = { crit_stage = 1 }
  MOVE_EFFECTS["STORM_THROW"] = { always_crit = true }
  MOVE_EFFECTS["STRENGTH_SAP"] = { drain_strength_sap = true, category = "STATUS" }
  MOVE_EFFECTS["SUCKER_PUNCH"] = { priority = 1, requires_attacking_target = true }
  MOVE_EFFECTS["SUNNY_DAY"] = { weather = "SUN", category = "STATUS" }
  MOVE_EFFECTS["SUPERPOWER"] = { self_drops = { attack = -1, defense = -1 } }
  MOVE_EFFECTS["SWEET_SCENT"] = { standard_effect = true }
  MOVE_EFFECTS["SYNTHESIS"] = { heal_percent = 50, special_effect = "weather_heal", category = "STATUS" }
  MOVE_EFFECTS["TAIL_WIND"] = { standard_effect = true }
  MOVE_EFFECTS["TAUNT"] = { inflict_status = "TAUNTED", category = "STATUS" }
  MOVE_EFFECTS["THUNDER_FANG"] = { standard_effect = true }
  MOVE_EFFECTS["TOXIC_SPIKES"] = { hazard = "TOXIC_SPIKES", category = "STATUS" }
  MOVE_EFFECTS["TRICK_ROOM"] = { field = "TRICK_ROOM", category = "STATUS" }
  MOVE_EFFECTS["TWISTER"] = { standard_effect = true }
  MOVE_EFFECTS["U_TURN"] = { pivot = true, category = "PHYSICAL" }
  MOVE_EFFECTS["VACUUM_WAVE"] = { priority = 1 }
  MOVE_EFFECTS["VITAL_THROW"] = { standard_effect = true }
  MOVE_EFFECTS["VOLT_SWITCH"] = { pivot = true, category = "SPECIAL" }
  MOVE_EFFECTS["VOLT_TACKLE"] = { recoil_percent = 33, secondary_status = "PARALYSIS", status_chance = 10 }
  MOVE_EFFECTS["WATER_PULSE"] = { standard_effect = true }
  MOVE_EFFECTS["WILD_CHARGE"] = { recoil_percent = 25 }
  MOVE_EFFECTS["WILL_O_WISP"] = { inflict_status = "BURN", accuracy = 85, category = "STATUS" }
  MOVE_EFFECTS["WISH"] = { special_effect = "wish_heal_next_turn", category = "STATUS" }
  MOVE_EFFECTS["WOOD_HAMMER"] = { recoil_percent = 33 }
  MOVE_EFFECTS["X_SCISSOR"] = { standard_effect = true }
  MOVE_EFFECTS["YAWN"] = { inflict_status = "DROWSY", category = "STATUS" }
  MOVE_EFFECTS["ZAP_CANNON"] = { standard_effect = true }
  MOVE_EFFECTS["ZEN_HEADBUTT"] = { flinch_chance = 20 }

  
  MOVE_EFFECTS["HIGH_JUMP_KICK"] = { standard_effect = true }
  MOVE_EFFECTS["ERUPTION"] = { standard_effect = true }
  MOVE_EFFECTS["DRAIN_PUNCH"] = { drain_percent = 50 }
  MOVE_EFFECTS["CROSS_POISON"] = { crit_stage = 1, secondary_status = "POISON", status_chance = 10 }
  MOVE_EFFECTS["CHARM"] = { target_drops = { attack = -2 }, category = "STATUS" }
  MOVE_EFFECTS["COTTON_GUARD"] = { self_boosts = { defense = 3 }, category = "STATUS" }
  MOVE_EFFECTS["MAGICAL_LEAF"] = { standard_effect = true }
  MOVE_EFFECTS["HIDDEN_POWER"] = { standard_effect = true }
  MOVE_EFFECTS["MIRROR_COAT"] = { standard_effect = true }
  MOVE_EFFECTS["STICKY_WEB"] = { hazard = "STICKY_WEB", category = "STATUS" }
  MOVE_EFFECTS["ICICLE_CRASH"] = { flinch_chance = 30 }
  MOVE_EFFECTS["LAVA_PLUME"] = { secondary_status = "BURN", status_chance = 30 }
  MOVE_EFFECTS["OCTAZOOKA"] = { target_drop_chance = 50, target_drops = { accuracy = -1 } }
  MOVE_EFFECTS["PRESENT"] = { standard_effect = true }
  MOVE_EFFECTS["STEEL_WING"] = { self_boost_chance = 10, self_boosts = { defense = 1 } }
  MOVE_EFFECTS["SKETCH"] = { standard_effect = true }
  MOVE_EFFECTS["TRIPLE_KICK"] = { multi_hit = { min = 3, max = 3 } }
  MOVE_EFFECTS["MILK_DRINK"] = { heal_percent = 50, category = "STATUS" }
  MOVE_EFFECTS["SACRED_FIRE"] = { secondary_status = "BURN", status_chance = 50 }
  MOVE_EFFECTS["AEROBLAST"] = { crit_stage = 1 }
  MOVE_EFFECTS["FACADE"] = { standard_effect = true }
  MOVE_EFFECTS["BOOMBURST"] = { standard_effect = true }
  MOVE_EFFECTS["PHANTOM_FORCE"] = { standard_effect = true }
  MOVE_EFFECTS["ECHOED_VOICE"] = { standard_effect = true }
  MOVE_EFFECTS["ARM_THRUST"] = { multi_hit = { min = 2, max = 5 } }
  MOVE_EFFECTS["TAIL_GLOW"] = { self_boosts = { spAtk = 3 }, category = "STATUS" }
  MOVE_EFFECTS["WATER_SPOUT"] = { standard_effect = true }
  MOVE_EFFECTS["TEETER_DANCE"] = { inflict_status = "CONFUSED", category = "STATUS" }
  MOVE_EFFECTS["NEEDLE_ARM"] = { flinch_chance = 30 }
  MOVE_EFFECTS["WEATHER_BALL"] = { standard_effect = true }
  MOVE_EFFECTS["SHADOW_PUNCH"] = { standard_effect = true }
  MOVE_EFFECTS["ICE_BALL"] = { standard_effect = true }
  MOVE_EFFECTS["METEOR_MASH"] = { self_boost_chance = 20, self_boosts = { attack = 1 } }
  MOVE_EFFECTS["MIST_BALL"] = { target_drop_chance = 50, target_drops = { spAtk = -1 } }
  MOVE_EFFECTS["LUSTER_PURGE"] = { target_drop_chance = 50, target_drops = { spDef = -1 } }
  MOVE_EFFECTS["BULK_UP"] = { self_boosts = { attack = 1, defense = 1 }, category = "STATUS" }
  MOVE_EFFECTS["DRAGON_ASCENT"] = { self_drops = { defense = -1, spDef = -1 } }
  MOVE_EFFECTS["DOOM_DESIRE"] = { standard_effect = true }
  MOVE_EFFECTS["PSYCHO_BOOST"] = { self_drops = { spAtk = -2 } }
  MOVE_EFFECTS["DUAL_WINGBEAT"] = { multi_hit = { min = 2, max = 2 } }

  -- =========================================================================
  -- 2. APPLY MOVE EFFECTS & HOOK BATTLE EXECUTION
  -- =========================================================================
  for move_id, effect_data in pairs(MOVE_EFFECTS) do
    mod.content.moves:patch(move_id, {
      effect_data = effect_data
    })
  end

  -- Wrap move execution to trigger move effects dynamically
  mod.hooks:wrap("battle.move_execute", function(orig_fn, ctx)
    if not ctx or not ctx.move or not ctx.move.id then
      return orig_fn(ctx)
    end

    local move_id = ctx.move.id
    local effect = MOVE_EFFECTS[move_id]

    if not effect then
      return orig_fn(ctx)
    end

    local user = ctx.user or ctx.attacker
    local target = ctx.target or ctx.defender

    -- Status Move Handler
    if effect.category == "STATUS" then
      mod.log:debug("Executing Status Move: " .. tostring(move_id))

      -- HP Cost (e.g. Belly Drum)
      if effect.self_hp_cost_percent and user then
        local cost = math.floor((user.max_hp or (user.stats and user.stats.hp) or 100) * (effect.self_hp_cost_percent / 100))
        if user.take_damage then user:take_damage(cost) end
      end

      -- Self Boosts
      if effect.self_boosts and user then
        for stat, val in pairs(effect.self_boosts) do
          if user.modify_stat_stage then
            user:modify_stat_stage(stat, val)
          end
        end
      end

      -- Strength Sap
      if effect.drain_strength_sap and user and target then
        local atk = (target.stats and target.stats.attack) or 50
        if target.modify_stat_stage then target:modify_stat_stage("attack", -1) end
        if user.heal then user:heal(atk) end
      end

      -- Wish
      if effect.special_effect == "wish_heal_next_turn" and ctx.battle and ctx.battle.set_wish then
        ctx.battle:set_wish(user)
      end

      -- Target Drops
      if effect.target_drops and target then
        for stat, val in pairs(effect.target_drops) do
          if target.modify_stat_stage then
            target:modify_stat_stage(stat, val)
          end
        end
      end

      -- Status Affliction
      if effect.inflict_status and target then
        local roll = math.random(1, 100)
        local acc = effect.accuracy or 100
        if roll <= acc and target.apply_status then
          target:apply_status(effect.inflict_status)
        end
      end

      -- Healing
      if effect.heal_percent and user then
        local heal_amt = math.floor((user.max_hp or 100) * (effect.heal_percent / 100))
        if user.heal then
          user:heal(heal_amt)
        end
      end

      -- Entry Hazards
      if effect.hazard and ctx.battle then
        if ctx.battle.set_hazard then
          ctx.battle:set_hazard(target.side or "enemy", effect.hazard)
        end
      end

      -- Weather
      if effect.weather and ctx.battle then
        if ctx.battle.set_weather then
          ctx.battle:set_weather(effect.weather)
        end
      end

      return true
    end

    -- Attacking Move Handler (Call Original Damage Calculation First)
    local result = orig_fn(ctx)

    if not user or not target then
      return result
    end

    -- Recoil Damage
    if effect.recoil_percent and ctx.damage_dealt and ctx.damage_dealt > 0 then
      local recoil = math.floor(ctx.damage_dealt * (effect.recoil_percent / 100))
      if user.take_damage then
        user:take_damage(recoil)
      end
    end

    -- Drain Healing
    if effect.drain_percent and ctx.damage_dealt and ctx.damage_dealt > 0 then
      local drain = math.floor(ctx.damage_dealt * (effect.drain_percent / 100))
      if user.heal then
        user:heal(drain)
      end
    end

    -- Self Stat Drops (e.g. Close Combat)
    if effect.self_drops then
      for stat, val in pairs(effect.self_drops) do
        if user.modify_stat_stage then
          user:modify_stat_stage(stat, val)
        end
      end
    end

    -- Secondary Status Chance
    if effect.secondary_status and effect.status_chance then
      local roll = math.random(1, 100)
      if roll <= effect.status_chance and target.apply_status then
        target:apply_status(effect.secondary_status)
      end
    end

    -- Secondary Target Drops (e.g. Acid Spray)
    if effect.target_drops and effect.target_drop_chance then
      local roll = math.random(1, 100)
      if roll <= effect.target_drop_chance then
        for stat, val in pairs(effect.target_drops) do
          if target.modify_stat_stage then
            target:modify_stat_stage(stat, val)
          end
        end
      end
    end

    -- Self Boosts on Attacking Moves (e.g. Flame Charge, Steel Wing)
    if effect.self_boosts then
      local chance = effect.self_boost_chance or 100
      if math.random(1, 100) <= chance then
        for stat, val in pairs(effect.self_boosts) do
          if user.modify_stat_stage then
            user:modify_stat_stage(stat, val)
          end
        end
      end
    end

    -- Clear Hazards (e.g. Rapid Spin)
    if effect.clear_hazards and ctx.battle and ctx.battle.clear_hazards then
      ctx.battle:clear_hazards(user.side or "player")
    end

    -- Pivot Switch Out (e.g. U-turn, Volt Switch)
    if effect.pivot and ctx.battle and ctx.battle.request_switch then
      ctx.battle:request_switch(user)
    end

    -- Clear Target Stat Boosts (Clear Smog)
    if effect.reset_target_stats and target and target.reset_stat_stages then
      target:reset_stat_stages()
    end

    return result
  end)

  print("Successfully loaded New Moves Effects Engine for 212 moves!")
end
