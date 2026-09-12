-- ============================================================================
-- Kanto Revitalised - Overworld Icons Registry (overworld_icons.lua)
-- Gen1Recomp Mod API v2
-- Registers GSC Essentials 16x32 party menu icons as stationary overworld sprites
-- ============================================================================

return function(mod)
  if not mod or not mod.content or not mod.content.sprites then
    error("overworld_icons.lua requires a valid gen1recomp mod object!")
  end

  mod.log:info("Kanto Revitalised: Registering Overworld Pokémon Icon Sprites...")

  local icons = {
    SPRITE_ICON_ARTICUNO = "assets/sprites/icons/144.png",
    SPRITE_ICON_ZAPDOS   = "assets/sprites/icons/145.png",
    SPRITE_ICON_MOLTRES  = "assets/sprites/icons/146.png",
    SPRITE_ICON_MAGCARGO = "assets/sprites/icons/219.png",
    SPRITE_ICON_CAMERUPT = "assets/sprites/icons/323.png",
    SPRITE_ICON_CARVANHA = "assets/sprites/icons/318.png",
    SPRITE_ICON_HOUNDOUR = "assets/sprites/icons/228.png",
    SPRITE_ICON_HOUNDOOM = "assets/sprites/icons/229.png"
  }

  for spriteId, relPath in pairs(icons) do
    local fullPath = mod.assets and mod.assets:path(relPath) or relPath
    mod.content.sprites:register(spriteId, {
      image = fullPath,
      frames = 2,
      trueColor = true
    })
  end

  mod.log:info("Kanto Revitalised: Overworld Icon Sprites successfully registered!")
end
