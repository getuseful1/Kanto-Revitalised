-- ============================================================================
-- Kanto Revitalised - Custom Abilities Engine (abilities.lua)
-- Gen1Recomp Mod API v2
-- ============================================================================

return function(mod)
  if not mod or not mod.hooks or not mod.events then
    error("abilities.lua requires a valid gen1recomp mod object!")
  end

  local SPECIES_ABILITIES = {
    BULBASAUR  = { "OVERGROW", "CHLOROPHYLL" },
    IVYSAUR    = { "OVERGROW", "CHLOROPHYLL" },
    VENUSAUR   = { "OVERGROW", "CHLOROPHYLL" },
    CHARMANDER = { "BLAZE", "SOLAR_POWER" },
    CHARMELEON = { "BLAZE", "SOLAR_POWER" },
    CHARIZARD  = { "BLAZE", "SOLAR_POWER" },
    SQUIRTLE   = { "TORRENT", "RAIN_DISH" },
    WARTORTLE  = { "TORRENT", "RAIN_DISH" },
    BLASTOISE  = { "TORRENT", "RAIN_DISH" },
    CATERPIE   = { "SHIELD_DUST", "RUN_AWAY" },
    METAPOD    = { "SHED_SKIN" },
    BUTTERFREE = { "COMPOUND_EYES", "TINTED_LENS" },
    WEEDLE     = { "SHIELD_DUST", "RUN_AWAY" },
    KAKUNA     = { "SHED_SKIN" },
    BEEDRILL   = { "SWARM", "SNIPER" },
    PIDGEY     = { "KEEN_EYE", "TANGLED_FEET", "BIG_PECKS" },
    PIDGEOTTO  = { "KEEN_EYE", "TANGLED_FEET", "BIG_PECKS" },
    PIDGEOT    = { "KEEN_EYE", "TANGLED_FEET", "BIG_PECKS" },
    RATTATA    = { "RUN_AWAY", "GUTS", "HUSTLE" },
    RATICATE   = { "RUN_AWAY", "GUTS", "HUSTLE" },
    SPEAROW    = { "KEEN_EYE", "SNIPER" },
    FEAROW     = { "KEEN_EYE", "SNIPER" },
    EKANS      = { "INTIMIDATE", "SHED_SKIN", "UNNERVE" },
    ARBOK      = { "INTIMIDATE", "SHED_SKIN", "UNNERVE" },
    PIKACHU    = { "STATIC", "LIGHTNING_ROD" },
    RAICHU     = { "STATIC", "LIGHTNING_ROD" },
    SANDSHREW  = { "SAND_VEIL", "SAND_RUSH" },
    SANDSLASH  = { "SAND_VEIL", "SAND_RUSH" },
    NIDORANF   = { "POISON_POINT", "RIVALRY", "HUSTLE" },
    NIDORINA   = { "POISON_POINT", "RIVALRY", "HUSTLE" },
    NIDOQUEEN  = { "POISON_POINT", "RIVALRY", "SHEER_FORCE" },
    NIDORANM   = { "POISON_POINT", "RIVALRY", "HUSTLE" },
    NIDORINO   = { "POISON_POINT", "RIVALRY", "HUSTLE" },
    NIDOKING   = { "POISON_POINT", "RIVALRY", "SHEER_FORCE" },
    CLEFAIRY   = { "CUTE_CHARM", "MAGIC_GUARD", "FRIEND_GUARD" },
    CLEFABLE   = { "CUTE_CHARM", "MAGIC_GUARD", "UNAWARE" },
    VULPIX     = { "FLASH_FIRE", "DROUGHT" },
    NINETALES  = { "FLASH_FIRE", "DROUGHT" },
    JIGGLYPUFF = { "CUTE_CHARM", "COMPETITIVE", "FRIEND_GUARD" },
    WIGGLYTUFF = { "CUTE_CHARM", "COMPETITIVE", "FRISK" },
    ZUBAT      = { "INNER_FOCUS", "INFILTRATOR" },
    GOLBAT     = { "INNER_FOCUS", "INFILTRATOR" },
    ODDISH     = { "CHLOROPHYLL", "RUN_AWAY" },
    GLOOM      = { "CHLOROPHYLL", "STENCH" },
    VILEPLUME  = { "CHLOROPHYLL", "EFFECT_SPORE" },
    PARAS      = { "EFFECT_SPORE", "DRY_SKIN", "DAMP" },
    PARASECT   = { "EFFECT_SPORE", "DRY_SKIN", "DAMP" },
    VENONAT    = { "COMPOUND_EYES", "TINTED_LENS", "RUN_AWAY" },
    VENOMOTH   = { "SHIELD_DUST", "TINTED_LENS", "WONDER_SKIN" },
    DIGLETT    = { "SAND_VEIL", "ARENA_TRAP", "SAND_FORCE" },
    DUGTRIO    = { "SAND_VEIL", "ARENA_TRAP", "SAND_FORCE" },
    MEOWTH     = { "PICKUP", "TECHNICIAN", "UNNERVE" },
    PERSIAN    = { "LIMBER", "TECHNICIAN", "UNNERVE" },
    PSYDUCK    = { "DAMP", "CLOUD_NINE", "SWIFT_SWIM" },
    GOLDUCK    = { "DAMP", "CLOUD_NINE", "SWIFT_SWIM" },
    MANKEY     = { "VITAL_SPIRIT", "ANGER_POINT", "DEFIANT" },
    PRIMEAPE   = { "VITAL_SPIRIT", "ANGER_POINT", "DEFIANT" },
    GROWLITHE  = { "INTIMIDATE", "FLASH_FIRE", "JUSTIFIED" },
    ARCANINE   = { "INTIMIDATE", "FLASH_FIRE", "JUSTIFIED" },
    POLIWAG    = { "WATER_ABSORB", "DAMP", "SWIFT_SWIM" },
    POLIWHIRL  = { "WATER_ABSORB", "DAMP", "SWIFT_SWIM" },
    POLIWRATH  = { "WATER_ABSORB", "DAMP", "SWIFT_SWIM" },
    ABRA       = { "SYNCHRONIZE", "INNER_FOCUS", "MAGIC_GUARD" },
    KADABRA    = { "SYNCHRONIZE", "INNER_FOCUS", "MAGIC_GUARD" },
    ALAKAZAM   = { "SYNCHRONIZE", "INNER_FOCUS", "MAGIC_GUARD" },
    MACHOP     = { "GUTS", "NO_GUARD", "STEADFAST" },
    MACHOKE    = { "GUTS", "NO_GUARD", "STEADFAST" },
    MACHAMP    = { "GUTS", "NO_GUARD", "STEADFAST" },
    BELLSPROUT = { "CHLOROPHYLL", "GLUTTONY" },
    WEEPINBELL = { "CHLOROPHYLL", "GLUTTONY" },
    VICTREEBEL = { "CHLOROPHYLL", "GLUTTONY" },
    TENTACOOL  = { "CLEAR_BODY", "LIQUID_OOZE", "RAIN_DISH" },
    TENTACRUEL = { "CLEAR_BODY", "LIQUID_OOZE", "RAIN_DISH" },
    GEODUDE    = { "ROCK_HEAD", "STURDY", "SAND_VEIL" },
    GRAVELER   = { "ROCK_HEAD", "STURDY", "SAND_VEIL" },
    GOLEM      = { "ROCK_HEAD", "STURDY", "SAND_VEIL" },
    PONYTA     = { "RUN_AWAY", "FLASH_FIRE", "FLAME_BODY" },
    RAPIDASH   = { "RUN_AWAY", "FLASH_FIRE", "FLAME_BODY" },
    SLOWPOKE   = { "OBLIVIOUS", "OWN_TEMPO", "REGENERATOR" },
    SLOWBRO    = { "OBLIVIOUS", "OWN_TEMPO", "REGENERATOR" },
    MAGNEMITE  = { "MAGNET_PULL", "STURDY", "ANALYTIC" },
    MAGNETON   = { "MAGNET_PULL", "STURDY", "ANALYTIC" },
    FARFETCHD  = { "KEEN_EYE", "INNER_FOCUS", "DEFIANT" },
    DODUO      = { "RUN_AWAY", "EARLY_BIRD", "TANGLED_FEET" },
    DODRIO     = { "RUN_AWAY", "EARLY_BIRD", "TANGLED_FEET" },
    SEEL       = { "THICK_FAT", "HYDRATION", "ICE_BODY" },
    DEWGONG    = { "THICK_FAT", "HYDRATION", "ICE_BODY" },
    GRIMER     = { "STENCH", "STICKY_HOLD", "POISON_TOUCH" },
    MUK        = { "STENCH", "STICKY_HOLD", "POISON_TOUCH" },
    SHELLDER   = { "SHELL_ARMOR", "SKILL_LINK", "OVERCOAT" },
    CLOYSTER   = { "SHELL_ARMOR", "SKILL_LINK", "OVERCOAT" },
    GASTLY     = { "LEVITATE" },
    HAUNTER    = { "LEVITATE" },
    GENGAR     = { "CURSED_BODY" },
    ONIX       = { "ROCK_HEAD", "STURDY", "WEAK_ARMOR" },
    DROWZEE    = { "INSOMNIA", "FOREWARN", "INNER_FOCUS" },
    HYPNO      = { "INSOMNIA", "FOREWARN", "INNER_FOCUS" },
    KRABBY     = { "HYPER_CUTTER", "SHELL_ARMOR", "SHEER_FORCE" },
    KINGLER    = { "HYPER_CUTTER", "SHELL_ARMOR", "SHEER_FORCE" },
    VOLTORB    = { "SOUNDPROOF", "STATIC", "AFTERMATH" },
    ELECTRODE  = { "SOUNDPROOF", "STATIC", "AFTERMATH" },
    EXEGGCUTE  = { "CHLOROPHYLL", "HARVEST" },
    EXEGGUTOR  = { "CHLOROPHYLL", "HARVEST" },
    CUBONE     = { "ROCK_HEAD", "LIGHTNING_ROD", "BATTLE_ARMOR" },
    MAROWAK    = { "ROCK_HEAD", "LIGHTNING_ROD", "BATTLE_ARMOR" },
    HITMONLEE  = { "LIMBER", "RECKLESS", "UNBURDEN" },
    HITMONCHAN = { "KEEN_EYE", "IRON_FIST", "INNER_FOCUS" },
    LICKITUNG  = { "OWN_TEMPO", "OBLIVIOUS", "CLOUD_NINE" },
    KOFFING    = { "LEVITATE" },
    WEEZING    = { "LEVITATE" },
    RHYHORN    = { "LIGHTNING_ROD", "ROCK_HEAD", "RECKLESS" },
    RHYDON     = { "LIGHTNING_ROD", "ROCK_HEAD", "RECKLESS" },
    CHANSEY    = { "NATURAL_CURE", "SERENE_GRACE", "HEALER" },
    TANGELA    = { "CHLOROPHYLL", "LEAF_GUARD", "REGENERATOR" },
    KANGASKHAN = { "EARLY_BIRD", "SCRAPPY", "INNER_FOCUS" },
    HORSEA     = { "SWIFT_SWIM", "SNIPER", "DAMP" },
    SEADRA     = { "POISON_POINT", "SNIPER", "DAMP" },
    GOLDEEN    = { "SWIFT_SWIM", "WATER_VEIL", "LIGHTNING_ROD" },
    SEAKING    = { "SWIFT_SWIM", "WATER_VEIL", "LIGHTNING_ROD" },
    STARYU     = { "ILLUMINATE", "NATURAL_CURE", "ANALYTIC" },
    STARMIE    = { "ILLUMINATE", "NATURAL_CURE", "ANALYTIC" },
    MR_MIME    = { "SOUNDPROOF", "FILTER", "TECHNICIAN" },
    SCYTHER    = { "SWARM", "TECHNICIAN", "STEADFAST" },
    JYNX       = { "OBLIVIOUS", "FOREWARN", "DRY_SKIN" },
    ELECTABUZZ = { "STATIC", "VITAL_SPIRIT" },
    MAGMAR     = { "FLAME_BODY", "VITAL_SPIRIT" },
    PINSIR     = { "HYPER_CUTTER", "MOLD_BREAKER", "MOXIE" },
    TAUROS     = { "INTIMIDATE", "ANGER_POINT", "SHEER_FORCE" },
    MAGIKARP   = { "SWIFT_SWIM", "RATTLED" },
    GYARADOS   = { "INTIMIDATE", "MOXIE" },
    LAPRAS     = { "WATER_ABSORB", "SHELL_ARMOR", "HYDRATION" },
    DITTO      = { "LIMBER", "IMPOSTER" },
    EEVEE      = { "RUN_AWAY", "ADAPTABILITY", "ANTICIPATION" },
    VAPOREON   = { "WATER_ABSORB", "HYDRATION" },
    JOLTEON    = { "VOLT_ABSORB", "QUICK_FEET" },
    FLAREON    = { "FLASH_FIRE", "GUTS" },
    PORYGON    = { "TRACE", "DOWNLOAD", "ANALYTIC" },
    OMANYTE    = { "SWIFT_SWIM", "SHELL_ARMOR", "WEAK_ARMOR" },
    OMASTAR    = { "SWIFT_SWIM", "SHELL_ARMOR", "WEAK_ARMOR" },
    KABUTO     = { "SWIFT_SWIM", "BATTLE_ARMOR", "WEAK_ARMOR" },
    KABUTOPS   = { "SWIFT_SWIM", "BATTLE_ARMOR", "WEAK_ARMOR" },
    AERODACTYL = { "ROCK_HEAD", "PRESSURE", "UNNERVE" },
    SNORLAX    = { "IMMUNITY", "THICK_FAT", "GLUTTONY" },
    ARTICUNO   = { "PRESSURE", "SNOW_CLOAK" },
    ZAPDOS     = { "PRESSURE", "STATIC" },
    MOLTRES    = { "PRESSURE", "FLAME_BODY" },
    DRATINI    = { "SHED_SKIN", "MARVEL_SCALE" },
    DRAGONAIR  = { "SHED_SKIN", "MARVEL_SCALE" },
    DRAGONITE  = { "INNER_FOCUS", "MULTISCALE" },
    MEWTWO     = { "PRESSURE", "UNNERVE" },
    MEW        = { "SYNCHRONIZE" }
  }

  local function getMonAbility(mon)
    if not mon then return "NONE" end
    if mon.ability and type(mon.ability) == "string" then return mon.ability:upper() end

    local species = (mon.species and tostring(mon.species):upper()) or "BULBASAUR"
    local pool = nil

    if mod.CUSTOM_ABILITIES and mod.CUSTOM_ABILITIES[species] then
      pool = mod.CUSTOM_ABILITIES[species]
    end

    if not pool then
      pool = SPECIES_ABILITIES[species] or { "ADAPTABILITY" }
    end

    local hash = 0
    if mon.dvs then
      hash = (mon.dvs.attack or 0) + (mon.dvs.defense or 0)*3 + (mon.dvs.speed or 0)*7 + (mon.dvs.special or 0)*11
    else
      hash = math.random(1, 100)
    end

    local sel = (hash % #pool) + 1
    mon.ability = pool[sel]
    return mon.ability:upper()
  end

  local function hasAbility(battler, abId)
    if not battler or not battler.mon then return false end
    local monAb = getMonAbility(battler.mon)
    return monAb == abId:upper()
  end

  local ABILITY_DESCRIPTIONS = {
    OVERGROW = "Boosts Grass-type moves when HP is low.",
    CHLOROPHYLL = "Boosts Speed in sunshine.",
    BLAZE = "Boosts Fire-type moves when HP is low.",
    SOLAR_POWER = "Boosts Sp. Atk in sun, but loses HP.",
    TORRENT = "Boosts Water-type moves when HP is low.",
    RAIN_DISH = "Gradually regains HP in rain.",
    STATIC = "May paralyze attackers on contact.",
    LIGHTNING_ROD = "Draws in Electric moves to raise Sp. Atk.",
    CURSED_BODY = "May disable a move used on the Pokémon.",
    LEVITATE = "Gives immunity to Ground-type moves.",
    INNER_FOCUS = "Protects the Pokémon from flinching.",
    MULTISCALE = "Reduces damage taken at full HP.",
    PRESSURE = "Raises opposing Pokémon's PP usage.",
    UNNERVE = "Makes opposing Pokémon unable to eat Berries.",
    SYNCHRONIZE = "Passes poison, paralyze, or burn to the foe.",
    ADAPTABILITY = "Powers up moves of the same type.",
    INTIMIDATE = "Lowers opposing Pokémon's Attack stat.",
    CLEAR_BODY = "Prevents stats from being lowered.",
    HYPER_CUTTER = "Prevents Attack stat from being lowered.",
    SHEER_FORCE = "Removes additional effects to increase move power.",
    TECHNICIAN = "Powers up weaker moves.",
    SPEED_BOOST = "Its Speed stat is gradually boosted.",
    AIR_LOCK = "Eliminates the effects of weather."
  }

  -- Export API for ui-enhancements
  mod.getMonAbility = getMonAbility
  mod.hasAbility = hasAbility
  mod.ABILITY_DESCRIPTIONS = ABILITY_DESCRIPTIONS
  mod.exports = {
    getMonAbility = getMonAbility,
    hasAbility = hasAbility,
    ABILITY_DESCRIPTIONS = ABILITY_DESCRIPTIONS
  }

  -- Battle Start & Weather Init
  mod.events:on("battle.started", function(ev)
    if ev and ev.battle then
      ev.battle.weather = "CLEAR"
      ev.battle.weather_turns = 0
    end
  end)

  -- Switch-In Abilities (Intimidate, Weather, Trace)
  mod.events:on("battle.battler_switched", function(ev)
    if not ev or not ev.battler or not ev.battle then return end
    local b = ev.battler
    local opp = (ev.side == "player") and ev.battle.enemy or ev.battle.player

    if hasAbility(b, "INTIMIDATE") and opp then
      if not hasAbility(opp, "CLEAR_BODY") and not hasAbility(opp, "HYPER_CUTTER") then
        if opp.modify_stat_stage then opp:modify_stat_stage("attack", -1) end
      end
    end

    if hasAbility(b, "DROUGHT") then
      ev.battle.weather = "SUN"
      ev.battle.weather_turns = 5
    elseif hasAbility(b, "DRIZZLE") then
      ev.battle.weather = "RAIN"
      ev.battle.weather_turns = 5
    elseif hasAbility(b, "SAND_STREAM") then
      ev.battle.weather = "SANDSTORM"
      ev.battle.weather_turns = 5
    end
  end)

  -- Overworld Encounter Rate Hooks
  mod.hooks:wrap("encounter.roll", function(next, encDef, ctx)
    local result = next(encDef, ctx)
    local gameObj = mod.game or game or (ctx and ctx.game)
    if not gameObj or not gameObj.save or not gameObj.save.party then return result end
    local leader = gameObj.save.party[1]
    if not leader then return result end

    local ab = getMonAbility(leader)
    if ab == "ARENA_TRAP" or ab == "ILLUMINATE" or ab == "NO_GUARD" then
      if result == nil and ctx and ctx.rng and ctx.rng(1, 100) <= 50 then
        return next(encDef, ctx)
      end
    elseif ab == "STENCH" or ab == "QUICK_FEET" or ab == "WHITE_SMOKE" then
      if result and ctx and ctx.rng and ctx.rng(1, 100) <= 50 then
        return nil
      end
    end

    return result
  end)

  -- Overworld Fishing Hook
  mod.hooks:wrap("encounter.fishing", function(next, rod, mapId, candidates, ctx)
    local result = next(rod, mapId, candidates)
    if result then return result end
    local gameObj = mod.game or game or (ctx and ctx.game)
    if not gameObj or not gameObj.save or not gameObj.save.party then return nil end
    local leader = gameObj.save.party[1]
    if leader then
      local ab = getMonAbility(leader)
      if ab == "SWIFT_SWIM" or ab == "WATER_VEIL" or ab == "SUCTION_CUPS" then
        return next(rod, mapId, candidates, ctx)
      end
    end
    return nil
  end)

  -- Lock Ability on Catch & Give
  mod.events:on("pokemon.caught", function(ev)
    if ev and ev.mon then getMonAbility(ev.mon) end
  end)

  mod.events:on("pokemon.before_give", function(ev)
    if ev and ev.mon then getMonAbility(ev.mon) end
  end)

  mod.log:info("Loaded custom abilities engine!")
end
