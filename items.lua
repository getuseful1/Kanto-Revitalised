-- ============================================================================
-- Kanto Revitalised - Items & Held Items Registration Module (items.lua)
-- Gen1Recomp Mod API v2
-- Registers modern held items and defines item use callbacks
-- ============================================================================

return function(mod)
  if not mod or not mod.content or not mod.content.items or not mod.content.item_effects then
    error('items.lua requires a valid gen1recomp mod object!')
  end

  mod.log:info('Kanto Revitalised: Registering Custom Held Items & Berries...')

  -- Dummy usage function for passive held items
  local function passiveHeldUse(ctx)
    if mod.ui and mod.ui.TextBox and mod.ui.TextBox.show and ctx and ctx.game then
      mod.ui.TextBox.show(ctx.game, {
        title = "Held Item",
        text = "This item produces its effect automatically when held in battle."
      })
    end
    return false
  end

  -- Item Effects
  mod.content.item_effects:register("EFFECT_LEFTOVERS", { use = passiveHeldUse, battle = true, field = false })
  mod.content.item_effects:register("EFFECT_CHOICE_BAND", { use = passiveHeldUse, battle = true, field = false })
  mod.content.item_effects:register("EFFECT_CHOICE_SPECS", { use = passiveHeldUse, battle = true, field = false })
  mod.content.item_effects:register("EFFECT_CHOICE_SCARF", { use = passiveHeldUse, battle = true, field = false })
  mod.content.item_effects:register("EFFECT_LIFE_ORB", { use = passiveHeldUse, battle = true, field = false })
  mod.content.item_effects:register("EFFECT_EVIOLITE", { use = passiveHeldUse, battle = true, field = false })
  mod.content.item_effects:register("EFFECT_FOCUS_SASH", { use = passiveHeldUse, battle = true, field = false })
  mod.content.item_effects:register("EFFECT_SITRUS_BERRY", { use = passiveHeldUse, battle = true, field = false })
  mod.content.item_effects:register("EFFECT_LUM_BERRY", { use = passiveHeldUse, battle = true, field = false })
  mod.content.item_effects:register("EFFECT_EXPERT_BELT", { use = passiveHeldUse, battle = true, field = false })
  mod.content.item_effects:register("EFFECT_ASSAULT_VEST", { use = passiveHeldUse, battle = true, field = false })

  -- Items Registration
  mod.content.items:register("LEFTOVERS", {
    id = "LEFTOVERS",
    name = "LEFTOVERS",
    price = 4000,
    tossable = true,
    effect = "EFFECT_LEFTOVERS"
  })

  mod.content.items:register("CHOICE_BAND", {
    id = "CHOICE_BAND",
    name = "CHOICE BAND",
    price = 5000,
    tossable = true,
    effect = "EFFECT_CHOICE_BAND"
  })

  mod.content.items:register("CHOICE_SPECS", {
    id = "CHOICE_SPECS",
    name = "CHOICE SPECS",
    price = 5000,
    tossable = true,
    effect = "EFFECT_CHOICE_SPECS"
  })

  mod.content.items:register("CHOICE_SCARF", {
    id = "CHOICE_SCARF",
    name = "CHOICE SCARF",
    price = 5000,
    tossable = true,
    effect = "EFFECT_CHOICE_SCARF"
  })

  mod.content.items:register("LIFE_ORB", {
    id = "LIFE_ORB",
    name = "LIFE ORB",
    price = 4000,
    tossable = true,
    effect = "EFFECT_LIFE_ORB"
  })

  mod.content.items:register("EVIOLITE", {
    id = "EVIOLITE",
    name = "EVIOLITE",
    price = 3000,
    tossable = true,
    effect = "EFFECT_EVIOLITE"
  })

  mod.content.items:register("FOCUS_SASH", {
    id = "FOCUS_SASH",
    name = "FOCUS SASH",
    price = 3000,
    tossable = true,
    effect = "EFFECT_FOCUS_SASH"
  })

  mod.content.items:register("SITRUS_BERRY", {
    id = "SITRUS_BERRY",
    name = "SITRUS BERRY",
    price = 800,
    tossable = true,
    effect = "EFFECT_SITRUS_BERRY"
  })

  mod.content.items:register("LUM_BERRY", {
    id = "LUM_BERRY",
    name = "LUM BERRY",
    price = 1000,
    tossable = true,
    effect = "EFFECT_LUM_BERRY"
  })

  mod.content.items:register("EXPERT_BELT", {
    id = "EXPERT_BELT",
    name = "EXPERT BELT",
    price = 4000,
    tossable = true,
    effect = "EFFECT_EXPERT_BELT"
  })

  mod.content.items:register("ASSAULT_VEST", {
    id = "ASSAULT_VEST",
    name = "ASSAULT VEST",
    price = 4500,
    tossable = true,
    effect = "EFFECT_ASSAULT_VEST"
  })

  -- Held Item Battle Mechanics Hooks
  -- Helper to get held item ID from mon
  local function getHeldItem(mon)
    if not mon then return nil end
    return mon.heldItem or mon.item or mon.held_item
  end

  -- Leftovers & Sitrus Berry HP restore at end of turn
  mod.events:on("battle.turn_ended", function(ev)
    if not ev or not ev.battle then return end
    local battlers = { ev.battle.player, ev.battle.enemy }
    for _, b in ipairs(battlers) do
      if b and b.mon and b.mon.hp and b.mon.hp > 0 and b.mon.stats then
        local item = getHeldItem(b.mon)
        -- Leftovers (Restores 1/16th max HP)
        if item == "LEFTOVERS" and b.mon.hp < (b.mon.max_hp or b.mon.maxHp or (b.mon.stats and b.mon.stats.hp) or 100) then
          local heal = math.max(1, math.floor((b.mon.max_hp or b.mon.maxHp or (b.mon.stats and b.mon.stats.hp) or 100) / 16))
          b.mon.hp = math.min((b.mon.max_hp or b.mon.maxHp or (b.mon.stats and b.mon.stats.hp) or 100), b.mon.hp + heal)
          mod.log:info("%s restored HP using Leftovers!", tostring(b.name or "Pokémon"))
        end
        -- Sitrus Berry (Restores 25% max HP when HP < 50%)
        if item == "SITRUS_BERRY" and (b.mon.hp / (b.mon.max_hp or b.mon.maxHp or (b.mon.stats and b.mon.stats.hp) or 100)) <= 0.5 then
          local heal = math.max(1, math.floor((b.mon.max_hp or b.mon.maxHp or (b.mon.stats and b.mon.stats.hp) or 100) / 4))
          b.mon.hp = math.min((b.mon.max_hp or b.mon.maxHp or (b.mon.stats and b.mon.stats.hp) or 100), b.mon.hp + heal)
          if b.mon.heldItem then b.mon.heldItem = nil end
          if b.mon.item then b.mon.item = nil end
          mod.log:info("%s ate its Sitrus Berry!", tostring(b.name or "Pokémon"))
        end
        -- Lum Berry (Cures status condition)
        if item == "LUM_BERRY" and b.mon.status and b.mon.status ~= "NONE" then
          b.mon.status = "NONE"
          if b.mon.heldItem then b.mon.heldItem = nil end
          if b.mon.item then b.mon.item = nil end
          mod.log:info("%s ate its Lum Berry and cured its status!", tostring(b.name or "Pokémon"))
        end
      end
    end
  end)

  -- Damage Formula Boosts (Choice Band, Choice Specs, Life Orb, Eviolite, Expert Belt, Assault Vest)
  mod.hooks:wrap("battle.damage", function(next, ctx)
    local damage, info = next(ctx)
    if not ctx or not ctx.user or not ctx.target or not ctx.move then
      return damage, info
    end

    local user = ctx.user
    local target = ctx.target
    local move = ctx.move
    local userItem = (user.mon and getHeldItem(user.mon)) or nil
    local targetItem = (target.mon and getHeldItem(target.mon)) or nil

    local mult = 1.0

    -- Choice Band (1.5x Physical Attacks)
    if userItem == "CHOICE_BAND" and move.category == "PHYSICAL" then
      mult = mult * 1.5
    end

    -- Choice Specs (1.5x Special Attacks)
    if userItem == "CHOICE_SPECS" and move.category == "SPECIAL" then
      mult = mult * 1.5
    end

    -- Life Orb (1.3x Damage)
    if userItem == "LIFE_ORB" then
      mult = mult * 1.3
    end

    -- Expert Belt (1.2x Damage on Super Effective Moves)
    if userItem == "EXPERT_BELT" and info and info.typeMult and info.typeMult > 10 then
      mult = mult * 1.2
    end

    -- Eviolite (0.67x Damage taken / 1.5x Defense if Non-Fully Evolved)
    if targetItem == "EVIOLITE" then
      -- Eviolite damage reduction
      mult = mult * 0.67
    end

    -- Assault Vest (0.67x Special Damage taken)
    if targetItem == "ASSAULT_VEST" and move.category == "SPECIAL" then
      mult = mult * 0.67
    end

    damage = math.max(1, math.floor(damage * mult))

    -- Focus Sash check (Survives fatal hit from 100% HP)
    if targetItem == "FOCUS_SASH" and target.mon and target.mon.stats and target.mon.hp == (target.mon.max_hp or target.mon.maxHp or (target.mon.stats and target.mon.stats.hp) or 100) then
      if damage >= target.mon.hp then
        damage = target.mon.hp - 1
        if target.mon.heldItem then target.mon.heldItem = nil end
        if target.mon.item then target.mon.item = nil end
        mod.log:info("%s hung on using its Focus Sash!", tostring(target.name or "Target"))
      end
    end

    return damage, info
  end)

  -- Choice Scarf Speed Boost & Move Priority in Turn Order
  mod.hooks:wrap("battle.turn_order", function(next, pBattler, pMove, eBattler, eMove, ctx)
    local pPriority = pMove and pMove.priority or 0
    local ePriority = eMove and eMove.priority or 0

    if pPriority ~= ePriority then
      return pPriority > ePriority
    end

    local pSpeed = pBattler.mon and pBattler.mon.stats and (pBattler.mon.stats.speed or pBattler.mon.stats.spe) or 50
    local eSpeed = eBattler.mon and eBattler.mon.stats and (eBattler.mon.stats.speed or eBattler.mon.stats.spe) or 50

    if pBattler.mon and getHeldItem(pBattler.mon) == "CHOICE_SCARF" then
      pSpeed = math.floor(pSpeed * 1.5)
    end
    if eBattler.mon and getHeldItem(eBattler.mon) == "CHOICE_SCARF" then
      eSpeed = math.floor(eSpeed * 1.5)
    end

    if pSpeed > eSpeed then return true end
    if eSpeed > pSpeed then return false end

    return next(pBattler, pMove, eBattler, eMove, ctx)
  end)

  -- Life Orb Recoil Damage
  mod.events:on("battle.damage_dealt", function(ev)
    if not ev or not ev.user or not ev.user.mon or not ev.damage or ev.damage <= 0 then return end
    local user = ev.user
    local item = getHeldItem(user.mon)
    if item == "LIFE_ORB" and user.mon.hp and user.mon.hp > 0 and user.mon.stats then
      local recoil = math.max(1, math.floor(user.mon.stats.hp / 10))
      user.mon.hp = math.max(0, user.mon.hp - recoil)
      mod.log:info("%s lost HP from its Life Orb!", tostring(user.name or "Attacker"))
    end
  end)

  -- Persistent set & get helpers for held items
  local function setHeldItem(mon, itemId)
    if not mon then return end
    if itemId == "NONE" or itemId == "" then itemId = nil end
    mon.heldItem = itemId
    mon.held_item = itemId
    mon.item = itemId
  end

  -- Party Menu "HELD ITEM" Submenu Option with GIVE & TAKE sub-menu
  mod.hooks:wrap("ui.party.submenu", function(next, game, items, mon, ctx)
    items = next(game, items, mon, ctx) or items
    if not mon then return items end

    local held = getHeldItem(mon)
    local heldLabel = (held and held ~= "" and held:upper() ~= "NONE") and ("HELD ITEM: " .. held:upper()) or "HELD ITEM: NONE"

    local heldItemOption = {
      label = "HELD ITEM",
      onSelect = function()
        local currentGame = game or (ctx and ctx.game)
        local currentHeld = getHeldItem(mon)

        local options = {
          {
            label = "GIVE",
            onSelect = function()
              if mod.ui and mod.ui.ItemPicker and mod.ui.ItemPicker.show then
                mod.ui.ItemPicker.show(currentGame, {
                  title = "Give Item",
                  onSelect = function(selectedItem)
                    if selectedItem then
                      setHeldItem(mon, selectedItem)
                      if mod.save and mod.save.set then
                        mod.save:set("heldItem_" .. tostring(mon.id or mon.name), selectedItem)
                      end
                      if mod.ui and mod.ui.TextBox and mod.ui.TextBox.show then
                        mod.ui.TextBox.show(currentGame, {
                          title = "Held Item",
                          text = "Gave " .. tostring(selectedItem) .. " to " .. tostring(mon.name or "Pokémon") .. "."
                        })
                      end
                    end
                  end
                })
              elseif mod.ui and mod.ui.TextBox and mod.ui.TextBox.show then
                mod.ui.TextBox.show(currentGame, {
                  title = "Held Item",
                  text = "Item attached: " .. tostring(currentHeld or "NONE")
                })
              end
            end
          },
          {
            label = "TAKE",
            onSelect = function()
              local itemToTake = getHeldItem(mon)
              if itemToTake and itemToTake ~= "" and itemToTake:upper() ~= "NONE" then
                setHeldItem(mon, nil)
                if mod.save and mod.save.set then
                  mod.save:set("heldItem_" .. tostring(mon.id or mon.name), nil)
                end
                if mod.ui and mod.ui.TextBox and mod.ui.TextBox.show then
                  mod.ui.TextBox.show(currentGame, {
                    title = "Held Item",
                    text = "Took " .. tostring(itemToTake) .. " from " .. tostring(mon.name or "Pokémon") .. "."
                  })
                end
              else
                if mod.ui and mod.ui.TextBox and mod.ui.TextBox.show then
                  mod.ui.TextBox.show(currentGame, {
                    title = "Held Item",
                    text = tostring(mon.name or "Pokémon") .. " is not holding anything!"
                  })
                end
              end
            end
          }
        }

        if mod.ui and mod.ui.Menu and mod.ui.Menu.show then
          mod.ui.Menu.show(currentGame, {
            title = heldLabel,
            items = options
          })
        elseif mod.ui and mod.ui.TextBox and mod.ui.TextBox.show then
          mod.ui.TextBox.show(currentGame, {
            title = heldLabel,
            text = "Holding: " .. tostring(currentHeld or "NONE")
          })
        end
      end
    }

    if mod.ui and mod.ui.insertBefore then
      mod.ui.insertBefore(items, "CANCEL", heldItemOption)
    else
      table.insert(items, heldItemOption)
    end

    return items
  end)

  mod.log:info('Kanto Revitalised: Custom Held Items successfully loaded!')
end
