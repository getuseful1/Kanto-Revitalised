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
    PIKACHU    = { "STATIC", "LIGHTNING_ROD" },
    RAICHU     = { "STATIC", "LIGHTNING_ROD" },
    GENGAR     = { "CURSED_BODY", "LEVITATE" },
    DRAGONITE  = { "INNER_FOCUS", "MULTISCALE" },
    MEWTWO     = { "PRESSURE", "UNNERVE" },
    MEW        = { "SYNCHRONIZE" },
    CHIKORITA  = { "OVERGROW", "LEAF_GUARD" },
    CYNDAQUIL  = { "BLAZE", "FLASH_FIRE" },
    TOTODILE   = { "TORRENT", "SHEER_FORCE" },
    SCIZOR     = { "SWARM", "TECHNICIAN", "LIGHT_METAL" },
    TYRANITAR  = { "SAND_STREAM", "UNNERVE" },
    TREECKO    = { "OVERGROW", "UNBURDEN" },
    TORCHIC    = { "BLAZE", "SPEED_BOOST" },
    MUDKIP     = { "TORRENT", "DAMP" },
    GARDEVOIR  = { "SYNCHRONIZE", "TRACE", "TELEPATHY" },
    METAGROSS  = { "CLEAR_BODY", "LIGHT_METAL" },
    RAYQUAZA   = { "AIR_LOCK" }
  }

  local function getMonAbility(mon)
    if not mon then return "NONE" end
    if mon.ability and type(mon.ability) == "string" then return mon.ability:upper() end

    local species = (mon.species and tostring(mon.species):upper()) or "BULBASAUR"
    local pool = nil

    if mod.content and mod.content.pokemon and mod.content.pokemon.get then
      local rec = mod.content.pokemon:get(species)
      if rec and rec.abilities and #rec.abilities > 0 then
        pool = rec.abilities
      end
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

  -- Export API for ui-enhancements
  mod.exports = {
    getMonAbility = getMonAbility,
    hasAbility = hasAbility
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
