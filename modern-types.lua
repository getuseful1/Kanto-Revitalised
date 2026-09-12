-- ============================================================================
-- Kanto Revitalised - Modern Types & Effectiveness (modern-types.lua)
-- Gen1Recomp Mod API v2
-- ============================================================================

return function(mod)
  if not mod or not mod.content or not mod.content.type_chart then return end

  -- 1. Register Types to prevent dangling reference errors[cite: 1, 4, 9]
  pcall(function() mod.content.type_chart:register("DARK", { id = "DARK", name = "Dark" }) end)
  pcall(function() mod.content.type_chart:register("STEEL", { id = "STEEL", name = "Steel" }) end)
  pcall(function() mod.content.type_chart:register("FAIRY", { id = "FAIRY", name = "Fairy" }) end)

  -- 2. Define Modern Interactions (Attacker Type -> Defender Type -> Multiplier)
  local TYPE_MODIFIERS = {
    FAIRY = { FIGHTING = 2.0, DRAGON = 2.0, DARK = 2.0, POISON = 0.5, STEEL = 0.5, FIRE = 0.5 },
    DARK  = { GHOST = 2.0, PSYCHIC = 2.0, FIGHTING = 0.5, DARK = 0.5, FAIRY = 0.5 },
    STEEL = { ICE = 2.0, ROCK = 2.0, FAIRY = 2.0, FIRE = 0.5, WATER = 0.5, ELECTRIC = 0.5, STEEL = 0.5 },
    GHOST = { DARK = 0.5, STEEL = 1.0 }, -- Neutral hitting steel update
    POISON = { FAIRY = 2.0 },
    FIGHTING = { FAIRY = 0.5 },
    BUG = { FAIRY = 0.5 },
    DRAGON = { FAIRY = 0.0 }
  }

  local DEFENSE_IMMUNITIES = {
    FAIRY = "DRAGON",
    DARK = "PSYCHIC",
    STEEL = "POISON"
  }

  -- 3. Apply Modifiers via Hook[cite: 5]
  mod.hooks:wrap("battle.damage", function(next, ctx)
    local damage, info = next(ctx)
    if not ctx or not ctx.move or not ctx.target or not ctx.target.mon then return damage, info end

    local atkType = ctx.move.type or ctx.move.type1
    local targetTypes = ctx.target.mon.types or ctx.target.mon.type
    if type(targetTypes) == "string" then targetTypes = { targetTypes } end
    if not targetTypes then targetTypes = { ctx.target.mon.type1, ctx.target.mon.type2 } end

    if atkType and targetTypes then
      for _, defType in pairs(targetTypes) do
        if defType then
          if DEFENSE_IMMUNITIES[defType] == atkType then
            damage = 0
            if info then info.typeMult = 0 end
            return damage, info
          end
          
          if TYPE_MODIFIERS[atkType] and TYPE_MODIFIERS[atkType][defType] then
            damage = math.floor(damage * TYPE_MODIFIERS[atkType][defType])
            if info and info.typeMult then
              info.typeMult = math.floor(info.typeMult * TYPE_MODIFIERS[atkType][defType])
            end
          end
        end
      end
    end

    return damage, info
  end)
end
