-- ============================================================================
-- Kanto Revitalised - UI & HUD Enhancements Module (ui-enhancements.lua)
-- Gen1Recomp Mod API v2
-- Voxel & Transparent UI Mod Compatibility + Dynamic Sprite Source Selector
-- ============================================================================

return function(mod)
  if not mod or not mod.hooks or not mod.events then
    error("ui-enhancements.lua requires a valid gen1recomp mod object!")
  end

  mod.log:info("Kanto Revitalised: Initializing UI & Sprite Selection Enhancements...")

  -- 1. Mod Options for UI Customization
  mod.options:define({
    { key = "show_party_ability_menu", type = "toggle", label = "SHOW ABILITY IN PARTY MENU", default = true },
    { key = "show_battle_weather_hud", type = "toggle", label = "SHOW BATTLE WEATHER HUD", default = true },
    { key = "show_ability_popups", type = "toggle", label = "SHOW BATTLE ABILITY LOGS", default = true }
  })

  local function getHeldItem(mon)
    if not mon then return nil end
    return mon.heldItem or mon.item or mon.held_item
  end

  -- =========================================================================
  -- 2. Party Menu Submenu Hook (Combines Ability & Held Item Injection)
  -- =========================================================================
  mod.hooks:wrap("ui.party.submenu", function(next, game, items, mon, ctx)
    items = next(game, items, mon, ctx) or items
    if not items or not mon then return items end

    -- INJECT ABILITY BUTTON
    if mod.options:get("show_party_ability_menu") then
      local rawAbility = mod.getMonAbility and mod.getMonAbility(mon)
      local hasAbilityVal = rawAbility and rawAbility ~= "" and rawAbility:upper() ~= "NONE"
      local abilityName = hasAbilityVal and rawAbility:upper() or "N/A"
      local desc = hasAbilityVal and ((mod.ABILITY_DESCRIPTIONS and mod.ABILITY_DESCRIPTIONS[abilityName]) or ("Special Ability: " .. abilityName)) or "This Pokémon has no special ability."

      local abilityItem = {
        label = "ABILITY: " .. (hasAbilityVal and abilityName:sub(1, 2) or "N/A"),
        onSelect = function()
          if mod.ui and mod.ui.TextBox and mod.ui.TextBox.show then
            mod.ui.TextBox.show(game or (ctx and ctx.game), {
              title = tostring(mon.name or "Pokémon") .. "'s Ability",
              text = abilityName .. "\n\n" .. desc
            })
          end
        end
      }

      if mod.ui and mod.ui.insertBefore then
        mod.ui.insertBefore(items, "CANCEL", abilityItem)
      else
        table.insert(items, abilityItem)
      end
    end

    -- INJECT HELD ITEM BUTTON
    local heldItemOption = {
      label = "HELD ITEM",
      onSelect = function()
        local currentGame = game or (ctx and ctx.game)
        if currentGame and currentGame.stack and currentGame.stack.push and mod.content.screens then
          -- Push the custom action screen defined below[cite: 5, 10]
          local screen = mod.content.screens:get("HeldItemActionScreen", currentGame, mon)
          if screen then
            currentGame.stack:push(screen)
          end
        end
      end
    }

    if mod.ui and mod.ui.insertBefore then
      mod.ui.insertBefore(items, "CANCEL", heldItemOption)
    else
      table.insert(items, heldItemOption)
    end

    return items
  end, 100)

  -- =========================================================================
  -- 3. Battle Overlay Hook (Compatible with Voxel Viewports)
  -- =========================================================================
  mod.hooks:wrap("battle.overlay", function(next, battle)
    next(battle)
    if not battle or not mod.options:get("show_battle_weather_hud") then return end
    if battle.status_hud_visible == false or battle.bottom_ui_visible == false then return end

    local weather = battle.weather or "CLEAR"
    if weather ~= "CLEAR" then
      local turns = battle.weather_turns or 0
      local weatherText = weather .. " [" .. tostring(turns) .. "t]"
      if mod.ui and mod.ui.Font and mod.ui.Font.draw then
        mod.ui.Font.draw(weatherText, 108, 4)
      end
    end
  end, 100)

  -- =========================================================================
  -- 4. Dynamic Pokémon Sprite Selection Hook
  -- =========================================================================
  mod.hooks:wrap("pokemon.sprite", function(next, path, ctx)
    local spriteSource = mod.options and mod.options:get("sprite_source") or "mod"
    if spriteSource == "rom" then
      if ctx and ctx.species then
        local spLower = ctx.species:lower()
        local side = ctx.side or "front"
        local romPath = (side == "back") and ("battle/back/" .. spLower .. "b.png") or ("battle/front/" .. spLower .. ".png")
        if love and love.filesystem and love.filesystem.getInfo and (love.filesystem.getInfo("assets/generated/" .. romPath) or love.filesystem.getInfo(romPath)) then
          ctx.trueColor = false
          return romPath
        end
      end
      local baseRes = next(path, ctx)
      return (not baseRes or baseRes == "") and "assets/sprites/000.png" or baseRes
    end

    if ctx and ctx.species then
      local speciesId = ctx.species:upper()
      local dexNum = nil
      if mod.content and mod.content.pokemon then
        local rec = mod.content.pokemon:get(speciesId)
        if rec and rec.dex then dexNum = rec.dex end
      end
      if dexNum then
        local numStr = string.format("%03d", dexNum)
        local isShiny = (ctx.shiny == true) or (ctx.mon and ctx.mon.dvs and mod.isMonShiny and mod.isMonShiny(ctx.mon.dvs))
        local suffix = (ctx.side == "back") and (isShiny and "sb" or "b") or (isShiny and "s" or "")
        local filename = numStr .. suffix .. ".png"
        local candidatePaths = { "assets/sprites/front/" .. filename, "assets/sprites/back/" .. filename, "assets/sprites/" .. filename }

        for _, cPath in ipairs(candidatePaths) do
          if love and love.filesystem and love.filesystem.getInfo and love.filesystem.getInfo(cPath) then
            ctx.trueColor = true
            return (mod.assets and mod.assets.path) and mod.assets:path(cPath) or cPath
          end
        end
      end
    end
    local resolved = next(path, ctx)
    return (not resolved or resolved == "") and "assets/sprites/000.png" or resolved
  end, 100)

  -- =========================================================================
  -- 5. Custom UI Screens (Registered to Engine Stack)[cite: 5, 10]
  -- =========================================================================
  if mod.content and mod.content.screens then
    
    -- Held Item Action Menu Screen
    mod.content.screens:register("HeldItemActionScreen", {
      new = function(game, mon)
        local state = {
          isOpaque = false,
          cursor = 1,
          mon = mon,
          options = { "GIVE", "TAKE", "BACK" }
        }
        function state:update(dt)
          if not game or not game.input then return end
          
          if game.input:wasPressed("up") then
            self.cursor = self.cursor - 1
            if self.cursor < 1 then self.cursor = #self.options end
          elseif game.input:wasPressed("down") then
            self.cursor = self.cursor + 1
            if self.cursor > #self.options then self.cursor = 1 end
          elseif game.input:wasPressed("b") then
            if game.stack and game.stack.pop then game.stack:pop() end
          elseif game.input:wasPressed("a") then
            local sel = self.options[self.cursor]
            
            if sel == "BACK" then
              if game.stack and game.stack.pop then game.stack:pop() end
              
            elseif sel == "TAKE" then
              if self.mon then
                self.mon.heldItem = nil
                self.mon.item = nil
                self.mon.held_item = nil
              end
              mod.log:info("Took held item from " .. tostring(self.mon and self.mon.name or "Pokémon"))
              if game.stack and game.stack.pop then game.stack:pop() end
              
            elseif sel == "GIVE" then
              mod.log:info("Opening item bag for " .. tostring(self.mon and self.mon.name or "Pokémon"))
              if game.stack and game.stack.pop then game.stack:pop() end
              -- Attempt to push the native item bag list menu
              pcall(function() game:pushScreen("items", { selectMode = true }) end)
            end
          end
        end
        function state:draw()
          if mod.ui and mod.ui.Font then
            -- Renders the blue action box with white borders over the party menu
            mod.ui.Font.drawBox(10, 8, 19, 16)
            mod.ui.Font.draw("ITEM ACTION", 11 * 8, 9 * 8)
            for i, opt in ipairs(self.options) do
              local prefix = (i == self.cursor) and "▶" or " "
              mod.ui.Font.draw(prefix .. opt, 11 * 8, (10 + i * 2) * 8)
            end
          end
        end
        return state
      end
    })

    -- Party Abilities Screen
    mod.content.screens:register("PartyAbilitiesScreen", {
      new = function(game)
        local state = { isOpaque = false }
        function state:update(dt)
          if game and game.input and (game.input:wasPressed("b") or game.input:wasPressed("a")) then
            if game.stack and game.stack.pop then game.stack:pop() end
          end
        end
        function state:draw()
          if mod.ui and mod.ui.Font then
            mod.ui.Font.drawBox(0, 0, 20, 18)
            mod.ui.Font.draw("PARTY ABILITIES", 16, 12)
            if game and game.save and game.save.party then
              for i, mon in ipairs(game.save.party) do
                if i <= 6 then
                  local ab = (mod.getMonAbility and mod.getMonAbility(mon)) or "NONE"
                  local name = tostring(mon.name or ("MON " .. i))
                  mod.ui.Font.draw(string.format("%d.%-10s %s", i, name:sub(1,10), ab), 16, 24 + (i * 18))
                end
              end
            end
            mod.ui.Font.draw("PRESS B TO EXIT", 16, 152)
          end
        end
        return state
      end
    })
  end

  mod.log:info("Kanto Revitalised: Voxel & Transparent UI-Compatible Enhancements loaded!")
end
