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
    {
      key = "show_party_ability_menu",
      type = "toggle",
      label = "SHOW ABILITY IN PARTY MENU",
      default = true
    },
    {
      key = "show_battle_weather_hud",
      type = "toggle",
      label = "SHOW BATTLE WEATHER HUD",
      default = true
    },
    {
      key = "show_ability_popups",
      type = "toggle",
      label = "SHOW BATTLE ABILITY LOGS",
      default = true
    }
  })

  -- =========================================================================
  -- 2. Party Menu Submenu Hook (Composable with Transparent & Custom UI Mods)
  -- =========================================================================
  mod.hooks:wrap("ui.party.submenu", function(next, game, items, mon, ctx)
    items = next(game, items, mon, ctx) or items
    if not items or not mod.options:get("show_party_ability_menu") then
      return items
    end

    if mon then
      local rawAbility = mod.getMonAbility and mod.getMonAbility(mon)
      local hasAbilityVal = rawAbility and rawAbility ~= "" and rawAbility:upper() ~= "NONE" and rawAbility:upper() ~= "N/A"
      local abilityName = hasAbilityVal and rawAbility:upper() or "N/A"
      local desc = hasAbilityVal and ((mod.ABILITY_DESCRIPTIONS and mod.ABILITY_DESCRIPTIONS[abilityName]) or ("Special Ability: " .. abilityName)) or "This Pokémon has no special ability."

      local abilityLabel = hasAbilityVal and ("ABILITY: " .. abilityName) or "ABILITY: N/A"

      local abilityItem = {
        label = abilityLabel,
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

    return items
  end, 100)

  -- =========================================================================
  -- 3. Battle Overlay Hook (Compatible with Voxel Viewports & Transparent HUDs)
  -- =========================================================================
  mod.hooks:wrap("battle.overlay", function(next, battle)
    next(battle)

    if not battle or not mod.options:get("show_battle_weather_hud") then
      return
    end

    if battle.status_hud_visible == false or battle.bottom_ui_visible == false then
      return
    end

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
  -- 4. Dynamic Pokémon Sprite Selection Hook (ROM Sprites vs Mod Sprites)
  -- =========================================================================
  mod.hooks:wrap("pokemon.sprite", function(next, path, ctx)
    local spriteSource = mod.options and mod.options:get("sprite_source") or "mod"

    -- If user chose Vanilla ROM Sprites:
    if spriteSource == "rom" then
      if ctx and ctx.species then
        local spLower = ctx.species:lower()
        local side = ctx.side or "front"
        local romPath = (side == "back") and ("battle/back/" .. spLower .. "b.png") or ("battle/front/" .. spLower .. ".png")

        if love and love.filesystem and love.filesystem.getInfo then
          if love.filesystem.getInfo("assets/generated/" .. romPath) or love.filesystem.getInfo(romPath) then
            ctx.trueColor = false
            return romPath
          end
        end
      end
      local baseRes = next(path, ctx)
      if not baseRes or baseRes == "" then return "assets/sprites/000.png" end
      return baseRes
    end

    -- If user chose Mod Sprites (GSC Essentials V1.3.2):
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
        local side = ctx.side or "front"

        local suffix = ""
        if side == "back" then
          suffix = isShiny and "sb" or "b"
        else
          suffix = isShiny and "s" or ""
        end

        local filename = numStr .. suffix .. ".png"
        local candidatePaths = {
          "assets/sprites/front/" .. filename,
          "assets/sprites/back/" .. filename,
          "assets/sprites/" .. filename,
          "Graphics/Battlers/" .. filename,
          "Graphics/Pokemon/" .. filename,
          "assets/" .. filename
        }

        for _, cPath in ipairs(candidatePaths) do
          if love and love.filesystem and love.filesystem.getInfo then
            if love.filesystem.getInfo(cPath) then
              ctx.trueColor = true
              if mod.assets and mod.assets.path then
                return mod.assets:path(cPath)
              end
              return cPath
            end
          end
        end
      end
    end

    local resolved = next(path, ctx)
    if not resolved or resolved == "" then
      return "assets/sprites/000.png"
    end
    return resolved
  end, 100)

  -- =========================================================================
  -- 5. Full Party Ability Screen (isOpaque = false for Voxel/3D Pass-Through)
  -- =========================================================================
  if mod.content and mod.content.screens then
    mod.content.screens:register("PartyAbilitiesScreen", {
      new = function(game)
        local state = {
          isOpaque = false
        }
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
