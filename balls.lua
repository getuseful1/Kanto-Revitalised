-- ============================================================================
-- Kanto Revitalised - Custom Poké Balls Module (balls.lua)
-- Gen1Recomp Mod API v2
-- Registers Dusk, Quick, Net, Repeat, Luxury, and Timer Balls with custom catch math
-- ============================================================================

return function(mod)
  if not mod or not mod.content or not mod.content.items or not mod.content.balls then
    error('balls.lua requires a valid gen1recomp mod object!')
  end

  mod.log:info('Kanto Revitalised: Registering Custom Poké Balls...')

  -- ==========================================================================
  -- 1. BALL ITEMS & BEHAVIORS REGISTRATION
  -- ==========================================================================

  -- Dusk Ball
  mod.content.items:register("DUSK_BALL", {
    id = "DUSK_BALL", name = "DUSK BALL", price = 1000, tossable = true, ball = "DUSK_BALL"
  })
  mod.content.balls:register("DUSK_BALL", {
    randMax = 100, hpFactor = 12, wobbleFactor = 120, tossAnim = "ULTRATOSS_ANIM", flicker = true
  })

  -- Quick Ball
  mod.content.items:register("QUICK_BALL", {
    id = "QUICK_BALL", name = "QUICK BALL", price = 1000, tossable = true, ball = "QUICK_BALL"
  })
  mod.content.balls:register("QUICK_BALL", {
    randMax = 80, hpFactor = 12, wobbleFactor = 120, tossAnim = "ULTRATOSS_ANIM", flicker = true
  })

  -- Net Ball
  mod.content.items:register("NET_BALL", {
    id = "NET_BALL", name = "NET BALL", price = 1000, tossable = true, ball = "NET_BALL"
  })
  mod.content.balls:register("NET_BALL", {
    randMax = 100, hpFactor = 12, wobbleFactor = 120, tossAnim = "GREAT_BALL", flicker = true
  })

  -- Repeat Ball
  mod.content.items:register("REPEAT_BALL", {
    id = "REPEAT_BALL", name = "REPEAT BALL", price = 1000, tossable = true, ball = "REPEAT_BALL"
  })
  mod.content.balls:register("REPEAT_BALL", {
    randMax = 100, hpFactor = 12, wobbleFactor = 120, tossAnim = "GREAT_BALL", flicker = true
  })

  -- Luxury Ball
  mod.content.items:register("LUXURY_BALL", {
    id = "LUXURY_BALL", name = "LUXURY BALL", price = 1000, tossable = true, ball = "LUXURY_BALL"
  })
  mod.content.balls:register("LUXURY_BALL", {
    randMax = 150, hpFactor = 10, wobbleFactor = 100, tossAnim = "ULTRATOSS_ANIM", flicker = true
  })

  -- Timer Ball
  mod.content.items:register("TIMER_BALL", {
    id = "TIMER_BALL", name = "TIMER BALL", price = 1000, tossable = true, ball = "TIMER_BALL"
  })
  mod.content.balls:register("TIMER_BALL", {
    randMax = 120, hpFactor = 12, wobbleFactor = 120, tossAnim = "ULTRATOSS_ANIM", flicker = true
  })

  -- ==========================================================================
  -- 2. CATCH RATE MATH HOOK (catch.rate)
  -- ==========================================================================
  mod.hooks:wrap("catch.rate", function(next, ball, mon, def, opts)
    if not ball then return next(ball, mon, def, opts) end

    local ballId = (type(ball) == "table" and (ball.id or ball.name)) or tostring(ball)
    ballId = ballId:upper()

    opts = opts or {}
    local battle = opts.battle or (mod.game and mod.game.battle)
    local mapId = (mod.game and mod.game.mapId and mod.game.mapId:upper()) or ""
    local turn = (battle and battle.turn) or 1
    local species = (mon and mon.species and mon.species:upper()) or ""

    local mult = 1.0

    -- Dusk Ball (3.0x catch rate in caves, tunnels, dungeons, victory road, power plant)
    if ballId == "DUSK_BALL" then
      if mapId:find("CAVE") or mapId:find("TUNNEL") or mapId:find("DUNGEON") or
         mapId:find("MOON") or mapId:find("PLANT") or mapId:find("MANSION") or
         mapId:find("VICTORY") then
        mult = 3.0
      end
    end

    -- Quick Ball (5.0x catch rate on Turn 1)
    if ballId == "QUICK_BALL" and turn == 1 then
      mult = 5.0
    end

    -- Net Ball (3.5x catch rate on Water or Bug species)
    if ballId == "NET_BALL" and def and def.types then
      for _, t in ipairs(def.types) do
        local typeName = t:upper()
        if typeName == "WATER" or typeName == "BUG" then
          mult = 3.5
          break
        end
      end
    end

    -- Repeat Ball (3.5x catch rate if species is already owned in Pokédex)
    if ballId == "REPEAT_BALL" and (battle and battle.caughtMarkerVisible) then
      mult = 3.5
    end

    -- Timer Ball (Scales up to 4.0x catch rate at turn 10+)
    if ballId == "TIMER_BALL" then
      mult = math.min(4.0, 1.0 + ((turn - 1) * 0.3))
    end

    -- Luxury Ball (1.5x catch rate)
    if ballId == "LUXURY_BALL" then
      mult = 1.5
    end

    if mult > 1.0 then
      local baseRate = (def and def.catchRate) or 45
      opts.rateOverride = math.min(255, math.floor(baseRate * mult))
      mod.log:info("Custom Ball (%s) applied %.1fx catch multiplier! Effective rate: %d", ballId, mult, opts.rateOverride)
    end

    return next(ball, mon, def, opts)
  end)

  -- ==========================================================================
  -- 3. MART INVENTORY PATCHES (including Saffron & Celadon Shopping Center)
  -- ==========================================================================

  -- Viridian, Pewter, Cerulean, Vermilion, Lavender, Fuchsia, Cinnabar Marts
  local kantoMarts = {
    "ViridianMart", "PewterMart", "CeruleanMart", "VermilionMart",
    "LavenderMart", "FuchsiaMart", "CinnabarMart", "SaffronMart"
  }

  if mod.content and mod.content.text_pointers and mod.content.text_pointers.patch then
    for _, mart in ipairs(kantoMarts) do
      mod.content.text_pointers:patch(mart, {
        ["TEXT_" .. mart:upper() .. "_CLERK"] = {
          mart = { __append = { "DUSK_BALL", "QUICK_BALL", "SITRUS_BERRY", "LUM_BERRY" } }
        }
      })
    end

    -- Celadon & Saffron Shopping Center / Department Store
    mod.content.text_pointers:patch("CeladonMart2F", {
      TEXT_CELADONMART2F_CLERK1 = {
        mart = { __append = { "DUSK_BALL", "QUICK_BALL", "NET_BALL", "REPEAT_BALL", "LUXURY_BALL", "TIMER_BALL" } }
      },
      TEXT_CELADONMART2F_CLERK2 = {
        mart = { __append = { "LEFTOVERS", "CHOICE_BAND", "CHOICE_SPECS", "CHOICE_SCARF", "LIFE_ORB", "EVIOLITE", "FOCUS_SASH" } }
      }
    })
  end

  mod.log:info('Kanto Revitalised: Custom Poké Balls & Mart stock patches successfully loaded!')
end
