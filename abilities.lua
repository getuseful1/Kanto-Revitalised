-- ============================================================================
-- Kanto Revitalised - Custom Abilities Engine (abilities.lua)
-- Gen1Recomp Mod API v2
-- ============================================================================

return function(mod)
  if not mod or not mod.hooks or not mod.events then
    error("abilities.lua requires a valid gen1recomp mod object!")
  end

  -- Global variables to track battle pop-ups
  mod.BATTLE_POPUP_TEXT = nil
  mod.BATTLE_POPUP_TIMER = 0

  local function triggerAbilityPopup(text)
    if mod.options and mod.options:get("show_ability_popups") then
      mod.BATTLE_POPUP_TEXT = text
      mod.BATTLE_POPUP_TIMER = 120 -- Display for approx 2 seconds at 60fps
    end
    if mod.log and mod.log.info then
      mod.log:info("Ability Triggered: " .. tostring(text))
    end
  end
  mod.triggerAbilityPopup = triggerAbilityPopup

  local SPECIES_ABILITIES = {
    -- GEN 1
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
    NIDORAN_F  = { "POISON_POINT", "RIVALRY", "HUSTLE" },
    NIDORINA   = { "POISON_POINT", "RIVALRY", "HUSTLE" },
    NIDOQUEEN  = { "POISON_POINT", "RIVALRY", "SHEER_FORCE" },
    NIDORAN_M  = { "POISON_POINT", "RIVALRY", "HUSTLE" },
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
    MEW        = { "SYNCHRONIZE" },

    -- GEN 2
    CHIKORITA  = { "OVERGROW", "LEAF_GUARD" },
    BAYLEEF    = { "OVERGROW", "LEAF_GUARD" },
    MEGANIUM   = { "OVERGROW", "LEAF_GUARD" },
    CYNDAQUIL  = { "BLAZE", "FLASH_FIRE" },
    QUILAVA    = { "BLAZE", "FLASH_FIRE" },
    TYPHLOSION = { "BLAZE", "FLASH_FIRE" },
    TOTODILE   = { "TORRENT", "SHEER_FORCE" },
    CROCONAW   = { "TORRENT", "SHEER_FORCE" },
    FERALIGATR = { "TORRENT", "SHEER_FORCE" },
    SENTRET    = { "RUN_AWAY", "KEEN_EYE", "FRISK" },
    FURRET     = { "RUN_AWAY", "KEEN_EYE", "FRISK" },
    HOOTHOOT   = { "INSOMNIA", "KEEN_EYE", "TINTED_LENS" },
    NOCTOWL    = { "INSOMNIA", "KEEN_EYE", "TINTED_LENS" },
    LEDYBA     = { "SWARM", "EARLY_BIRD", "RATTLED" },
    LEDIAN     = { "SWARM", "EARLY_BIRD", "IRON_FIST" },
    SPINARAK   = { "SWARM", "INSOMNIA", "SNIPER" },
    ARIADOS    = { "SWARM", "INSOMNIA", "SNIPER" },
    CROBAT     = { "INNER_FOCUS", "INFILTRATOR" },
    CHINCHOU   = { "VOLT_ABSORB", "ILLUMINATE", "WATER_ABSORB" },
    LANTURN    = { "VOLT_ABSORB", "ILLUMINATE", "WATER_ABSORB" },
    PICHU      = { "STATIC", "LIGHTNING_ROD" },
    CLEFFA     = { "CUTE_CHARM", "MAGIC_GUARD", "FRIEND_GUARD" },
    IGGLYBUFF  = { "CUTE_CHARM", "COMPETITIVE", "FRIEND_GUARD" },
    TOGEPI     = { "HUSTLE", "SERENE_GRACE" },
    TOGETIC    = { "HUSTLE", "SERENE_GRACE" },
    NATU       = { "SYNCHRONIZE", "EARLY_BIRD", "MAGIC_GUARD" },
    XATU       = { "SYNCHRONIZE", "EARLY_BIRD", "MAGIC_GUARD" },
    MAREEP     = { "STATIC" },
    FLAAFFY    = { "STATIC" },
    AMPHAROS   = { "STATIC" },
    BELLOSSOM  = { "CHLOROPHYLL", "HEALER" },
    MARILL     = { "THICK_FAT", "WATER_ABSORB" },
    AZUMARILL  = { "THICK_FAT", "WATER_ABSORB" },
    SUDOWOODO  = { "STURDY", "ROCK_HEAD", "RATTLED" },
    POLITOED   = { "WATER_ABSORB", "DAMP", "DRIZZLE" },
    HOPPIP     = { "CHLOROPHYLL", "LEAF_GUARD", "INFILTRATOR" },
    SKIPLOOM   = { "CHLOROPHYLL", "LEAF_GUARD", "INFILTRATOR" },
    JUMPLUFF   = { "CHLOROPHYLL", "LEAF_GUARD", "INFILTRATOR" },
    AIPOM      = { "RUN_AWAY", "PICKUP", "SKILL_LINK" },
    SUNKERN    = { "CHLOROPHYLL", "SOLAR_POWER", "EARLY_BIRD" },
    SUNFLORA   = { "CHLOROPHYLL", "SOLAR_POWER", "EARLY_BIRD" },
    YANMA      = { "SPEED_BOOST", "COMPOUND_EYES", "FRISK" },
    WOOPER     = { "DAMP", "WATER_ABSORB", "UNAWARE" },
    QUAGSIRE   = { "DAMP", "WATER_ABSORB", "UNAWARE" },
    ESPEON     = { "SYNCHRONIZE", "MAGIC_GUARD" },
    UMBREON    = { "SYNCHRONIZE", "INNER_FOCUS" },
    MURKROW    = { "INSOMNIA", "SUPER_LUCK", "PRANKSTER" },
    SLOWKING   = { "OBLIVIOUS", "OWN_TEMPO", "REGENERATOR" },
    MISDREAVUS = { "LEVITATE" },
    UNOWN      = { "LEVITATE" },
    WOBBUFFET  = { "SHADOW_TAG", "TELEPATHY" },
    GIRAFARIG  = { "INNER_FOCUS", "EARLY_BIRD", "SAP_SIPPER" },
    PINECO     = { "STURDY", "OVERCOAT" },
    FORRETRESS = { "STURDY", "OVERCOAT" },
    DUNSPARCE  = { "SERENE_GRACE", "RUN_AWAY", "RATTLED" },
    GLIGAR     = { "HYPER_CUTTER", "SAND_VEIL", "IMMUNITY" },
    STEELIX    = { "ROCK_HEAD", "STURDY", "SHEER_FORCE" },
    SNUBBULL   = { "INTIMIDATE", "RUN_AWAY", "RATTLED" },
    GRANBULL   = { "INTIMIDATE", "QUICK_FEET", "RATTLED" },
    QWILFISH   = { "POISON_POINT", "SWIFT_SWIM", "INTIMIDATE" },
    SCIZOR     = { "SWARM", "TECHNICIAN", "LIGHT_METAL" },
    SHUCKLE    = { "STURDY", "GLUTTONY", "CONTRARY" },
    HERACROSS  = { "SWARM", "GUTS", "MOXIE" },
    SNEASEL    = { "INNER_FOCUS", "KEEN_EYE", "PICKUP" },
    TEDDIURSA  = { "PICKUP", "QUICK_FEET", "HONEY_GATHER" },
    URSARING   = { "GUTS", "QUICK_FEET", "UNNERVE" },
    SLUGMA     = { "MAGMA_ARMOR", "FLAME_BODY", "WEAK_ARMOR" },
    MAGCARGO   = { "MAGMA_ARMOR", "FLAME_BODY", "WEAK_ARMOR" },
    SWINUB     = { "OBLIVIOUS", "SNOW_CLOAK", "THICK_FAT" },
    PILOSWINE  = { "OBLIVIOUS", "SNOW_CLOAK", "THICK_FAT" },
    CORSOLA    = { "HUSTLE", "NATURAL_CURE", "REGENERATOR" },
    REMORAID   = { "HUSTLE", "SNIPER", "MOODY" },
    OCTILLERY  = { "SUCTION_CUPS", "SNIPER", "MOODY" },
    DELIBIRD   = { "VITAL_SPIRIT", "HUSTLE", "INSOMNIA" },
    MANTINE    = { "SWIFT_SWIM", "WATER_ABSORB", "WATER_VEIL" },
    SKARMORY   = { "KEEN_EYE", "STURDY", "WEAK_ARMOR" },
    HOUNDOUR   = { "EARLY_BIRD", "FLASH_FIRE", "UNNERVE" },
    HOUNDOOM   = { "EARLY_BIRD", "FLASH_FIRE", "UNNERVE" },
    KINGDRA    = { "SWIFT_SWIM", "SNIPER", "DAMP" },
    PHANPY     = { "PICKUP", "SAND_VEIL" },
    DONPHAN    = { "STURDY", "SAND_VEIL" },
    PORYGON2   = { "TRACE", "DOWNLOAD", "ANALYTIC" },
    STANTLER   = { "INTIMIDATE", "FRISK", "SAP_SIPPER" },
    SMEARGLE   = { "OWN_TEMPO", "TECHNICIAN", "MOODY" },
    TYROGUE    = { "GUTS", "STEADFAST", "VITAL_SPIRIT" },
    HITMONTOP  = { "INTIMIDATE", "TECHNICIAN", "STEADFAST" },
    SMOOCHUM   = { "OBLIVIOUS", "FOREWARN", "HYDRATION" },
    ELEKID     = { "STATIC", "VITAL_SPIRIT" },
    MAGBY      = { "FLAME_BODY", "VITAL_SPIRIT" },
    MILTANK    = { "THICK_FAT", "SCRAPPY", "SAP_SIPPER" },
    BLISSEY    = { "NATURAL_CURE", "SERENE_GRACE", "HEALER" },
    RAIKOU     = { "PRESSURE", "INNER_FOCUS" },
    ENTEI      = { "PRESSURE", "INNER_FOCUS" },
    SUICUNE    = { "PRESSURE", "INNER_FOCUS" },
    LARVITAR   = { "GUTS", "SAND_VEIL" },
    PUPITAR    = { "SHED_SKIN" },
    TYRANITAR  = { "SAND_STREAM", "UNNERVE" },
    LUGIA      = { "PRESSURE", "MULTISCALE" },
    HO_OH      = { "PRESSURE", "REGENERATOR" },
    CELEBI     = { "NATURAL_CURE" },

    -- GEN 3
    TREECKO    = { "OVERGROW", "UNBURDEN" },
    GROVYLE    = { "OVERGROW", "UNBURDEN" },
    SCEPTILE   = { "OVERGROW", "UNBURDEN" },
    TORCHIC    = { "BLAZE", "SPEED_BOOST" },
    COMBUSKEN  = { "BLAZE", "SPEED_BOOST" },
    BLAZIKEN   = { "BLAZE", "SPEED_BOOST" },
    MUDKIP     = { "TORRENT", "DAMP" },
    MARSHTOMP  = { "TORRENT", "DAMP" },
    SWAMPERT   = { "TORRENT", "DAMP" },
    POOCHYENA  = { "RUN_AWAY", "QUICK_FEET", "RATTLED" },
    MIGHTYENA  = { "INTIMIDATE", "QUICK_FEET", "MOXIE" },
    ZIGZAGOON  = { "PICKUP", "GLUTTONY", "QUICK_FEET" },
    LINOONE    = { "PICKUP", "GLUTTONY", "QUICK_FEET" },
    WURMPLE    = { "SHIELD_DUST", "RUN_AWAY" },
    SILCOON    = { "SHED_SKIN" },
    BEAUTIFLY  = { "SWARM", "RIVALRY" },
    CASCOON    = { "SHED_SKIN" },
    DUSTOX     = { "SHIELD_DUST", "COMPOUND_EYES" },
    LOTAD      = { "SWIFT_SWIM", "RAIN_DISH", "OWN_TEMPO" },
    LOMBRE     = { "SWIFT_SWIM", "RAIN_DISH", "OWN_TEMPO" },
    LUDICOLO   = { "SWIFT_SWIM", "RAIN_DISH", "OWN_TEMPO" },
    SEEDOT     = { "CHLOROPHYLL", "EARLY_BIRD", "PICKUP" },
    NUZLEAF    = { "CHLOROPHYLL", "EARLY_BIRD", "PICKUP" },
    SHIFTRY    = { "CHLOROPHYLL", "EARLY_BIRD", "PICKUP" },
    TAILLOW    = { "GUTS", "SCRAPPY" },
    SWELLOW    = { "GUTS", "SCRAPPY" },
    WINGULL    = { "KEEN_EYE", "HYDRATION", "RAIN_DISH" },
    PELIPPER   = { "KEEN_EYE", "DRIZZLE", "RAIN_DISH" },
    RALTS      = { "SYNCHRONIZE", "TRACE", "TELEPATHY" },
    KIRLIA     = { "SYNCHRONIZE", "TRACE", "TELEPATHY" },
    GARDEVOIR  = { "SYNCHRONIZE", "TRACE", "TELEPATHY" },
    SURSKIT    = { "SWIFT_SWIM", "RAIN_DISH" },
    MASQUERAIN = { "INTIMIDATE", "UNNERVE" },
    SHROOMISH  = { "EFFECT_SPORE", "POISON_HEAL", "QUICK_FEET" },
    BRELOOM    = { "EFFECT_SPORE", "POISON_HEAL", "TECHNICIAN" },
    SLAKOTH    = { "TRUANT" },
    VIGOROTH   = { "VITAL_SPIRIT" },
    SLAKING    = { "TRUANT" },
    NINCADA    = { "COMPOUND_EYES", "RUN_AWAY" },
    NINJASK    = { "SPEED_BOOST", "INFILTRATOR" },
    SHEDINJA   = { "WONDER_GUARD" },
    WHISMUR    = { "SOUNDPROOF", "RATTLED" },
    LOUDRED    = { "SOUNDPROOF", "SCRAPPY" },
    EXPLOUD    = { "SOUNDPROOF", "SCRAPPY" },
    MAKUHITA   = { "THICK_FAT", "GUTS", "SHEER_FORCE" },
    HARIYAMA   = { "THICK_FAT", "GUTS", "SHEER_FORCE" },
    AZURILL    = { "THICK_FAT", "HUGE_POWER", "SAP_SIPPER" },
    NOSEPASS   = { "STURDY", "MAGNET_PULL", "SAND_FORCE" },
    SKITTY     = { "CUTE_CHARM", "NORMALIZE", "WONDER_SKIN" },
    DELCATTY   = { "CUTE_CHARM", "NORMALIZE", "WONDER_SKIN" },
    SABLEYE    = { "KEEN_EYE", "STALL", "PRANKSTER" },
    MAWILE     = { "HYPER_CUTTER", "INTIMIDATE", "SHEER_FORCE" },
    ARON       = { "STURDY", "ROCK_HEAD", "HEAVY_METAL" },
    LAIRON     = { "STURDY", "ROCK_HEAD", "HEAVY_METAL" },
    AGGRON     = { "STURDY", "ROCK_HEAD", "HEAVY_METAL" },
    MEDITITE   = { "PURE_POWER", "TELEPATHY" },
    MEDICHAM   = { "PURE_POWER", "TELEPATHY" },
    ELECTRIKE  = { "STATIC", "LIGHTNING_ROD", "MINUS" },
    MANECTRIC  = { "STATIC", "LIGHTNING_ROD", "MINUS" },
    PLUSLE     = { "PLUS", "LIGHTNING_ROD" },
    MINUN      = { "MINUS", "VOLT_ABSORB" },
    VOLBEAT    = { "ILLUMINATE", "SWARM", "PRANKSTER" },
    ILLUMISE   = { "OBLIVIOUS", "TINTED_LENS", "PRANKSTER" },
    ROSELIA    = { "NATURAL_CURE", "POISON_POINT", "LEAF_GUARD" },
    GULPIN     = { "LIQUID_OOZE", "STICKY_HOLD", "GLUTTONY" },
    SWALOT     = { "LIQUID_OOZE", "STICKY_HOLD", "GLUTTONY" },
    CARVANHA   = { "ROUGH_SKIN", "SPEED_BOOST" },
    SHARPEDO   = { "ROUGH_SKIN", "SPEED_BOOST" },
    WAILMER    = { "WATER_VEIL", "OBLIVIOUS", "PRESSURE" },
    WAILORD    = { "WATER_VEIL", "OBLIVIOUS", "PRESSURE" },
    NUMEL      = { "OBLIVIOUS", "SIMPLE", "OWN_TEMPO" },
    CAMERUPT   = { "MAGMA_ARMOR", "SOLID_ROCK", "ANGER_POINT" },
    TORKOAL    = { "WHITE_SMOKE", "DROUGHT", "SHELL_ARMOR" },
    SPOINK     = { "THICK_FAT", "OWN_TEMPO", "GLUTTONY" },
    GRUMPIG    = { "THICK_FAT", "OWN_TEMPO", "GLUTTONY" },
    SPINDA     = { "OWN_TEMPO", "TANGLED_FEET", "CONTRARY" },
    TRAPINCH   = { "HYPER_CUTTER", "ARENA_TRAP", "SHEER_FORCE" },
    VIBRAVA    = { "LEVITATE" },
    FLYGON     = { "LEVITATE" },
    CACNEA     = { "SAND_VEIL", "WATER_ABSORB" },
    CACTURNE   = { "SAND_VEIL", "WATER_ABSORB" },
    SWABLU     = { "NATURAL_CURE", "CLOUD_NINE" },
    ALTARIA    = { "NATURAL_CURE", "CLOUD_NINE" },
    ZANGOOSE   = { "IMMUNITY", "TOXIC_BOOST" },
    SEVIPER    = { "SHED_SKIN", "INFILTRATOR" },
    LUNATONE   = { "LEVITATE" },
    SOLROCK    = { "LEVITATE" },
    BARBOACH   = { "OBLIVIOUS", "ANTICIPATION", "HYDRATION" },
    WHISCASH   = { "OBLIVIOUS", "ANTICIPATION", "HYDRATION" },
    CORPHISH   = { "HYPER_CUTTER", "SHELL_ARMOR", "ADAPTABILITY" },
    CRAWDAUNT  = { "HYPER_CUTTER", "SHELL_ARMOR", "ADAPTABILITY" },
    BALTOY     = { "LEVITATE" },
    CLAYDOL    = { "LEVITATE" },
    LILEEP     = { "SUCTION_CUPS", "STORM_DRAIN" },
    CRADILY    = { "SUCTION_CUPS", "STORM_DRAIN" },
    ANORITH    = { "BATTLE_ARMOR", "SWIFT_SWIM" },
    ARMALDO    = { "BATTLE_ARMOR", "SWIFT_SWIM" },
    FEEBAS     = { "SWIFT_SWIM", "OBLIVIOUS", "ADAPTABILITY" },
    MILOTIC    = { "MARVEL_SCALE", "COMPETITIVE", "CUTE_CHARM" },
    CASTFORM   = { "FORECAST" },
    KECLEON    = { "COLOR_CHANGE", "PROTEAN" },
    SHUPPET    = { "INSOMNIA", "FRISK", "CURSED_BODY" },
    BANETTE    = { "INSOMNIA", "FRISK", "CURSED_BODY" },
    DUSKULL    = { "LEVITATE", "FRISK" },
    DUSCLOPS   = { "PRESSURE", "FRISK" },
    TROPIUS    = { "CHLOROPHYLL", "SOLAR_POWER", "HARVEST" },
    CHIMECHO   = { "LEVITATE" },
    ABSOL      = { "PRESSURE", "SUPER_LUCK", "JUSTIFIED" },
    WYNAUT     = { "SHADOW_TAG", "TELEPATHY" },
    SNORUNT    = { "INNER_FOCUS", "ICE_BODY", "MOODY" },
    GLALIE     = { "INNER_FOCUS", "ICE_BODY", "MOODY" },
    SPHEAL     = { "THICK_FAT", "ICE_BODY", "OBLIVIOUS" },
    SEALEO     = { "THICK_FAT", "ICE_BODY", "OBLIVIOUS" },
    WALREIN    = { "THICK_FAT", "ICE_BODY", "OBLIVIOUS" },
    CLAMPERL   = { "SHELL_ARMOR", "RATTLED" },
    HUNTAIL    = { "SWIFT_SWIM", "WATER_VEIL" },
    GOREBYSS   = { "SWIFT_SWIM", "HYDRATION" },
    RELICANTH  = { "SWIFT_SWIM", "ROCK_HEAD", "STURDY" },
    LUVDISC    = { "SWIFT_SWIM", "HYDRATION" },
    BAGON      = { "ROCK_HEAD", "SHEER_FORCE" },
    SHELGON    = { "ROCK_HEAD", "OVERCOAT" },
    SALAMENCE  = { "INTIMIDATE", "MOXIE" },
    BELDUM     = { "CLEAR_BODY", "LIGHT_METAL" },
    METANG     = { "CLEAR_BODY", "LIGHT_METAL" },
    METAGROSS  = { "CLEAR_BODY", "LIGHT_METAL" },
    REGIROCK   = { "CLEAR_BODY", "STURDY" },
    REGICE     = { "CLEAR_BODY", "ICE_BODY" },
    REGISTEEL  = { "CLEAR_BODY", "LIGHT_METAL" },
    LATIAS     = { "LEVITATE" },
    LATIOS     = { "LEVITATE" },
    KYOGRE     = { "DRIZZLE" },
    GROUDON    = { "DROUGHT" },
    RAYQUAZA   = { "AIR_LOCK" },
    JIRACHI    = { "SERENE_GRACE" },
    DEOXYS     = { "PRESSURE" }
  }

  local ABILITY_DESCRIPTIONS = {
    ADAPTABILITY = "Powers up moves of the same type.",
    AFTERMATH = "Damages the attacker if KOed by a contact move.",
    AIR_LOCK = "Eliminates the effects of weather.",
    ANALYTIC = "Boosts move power if moving last in the turn.",
    ANGER_POINT = "Maxes Attack stat if struck by a critical hit.",
    ANTICIPATION = "Senses an opposing Pokémon's dangerous moves.",
    ARENA_TRAP = "Prevents ground-bound opposing Pokémon from escaping.",
    BATTLE_ARMOR = "Protects the Pokémon against critical hits.",
    BIG_PECKS = "Prevents other Pokémon from lowering Defense.",
    BLAZE = "Boosts Fire-type moves when HP is low.",
    CHLOROPHYLL = "Boosts Speed in sunshine.",
    CLEAR_BODY = "Prevents stats from being lowered.",
    CLOUD_NINE = "Eliminates all effects of weather conditions.",
    COLOR_CHANGE = "Changes type to that of the move hit by.",
    COMPETITIVE = "Boosts Sp. Atk when a stat is lowered by a foe.",
    COMPOUND_EYES = "Increases the accuracy of moves.",
    CONTRARY = "Reverses stat changes taken.",
    CURSED_BODY = "May disable a move used on the Pokémon.",
    CUTE_CHARM = "Contact with the Pokémon may cause infatuation.",
    DAMP = "Prevents self-destruct moves and explosive abilities.",
    DEFIANT = "Boosts Attack when a stat is lowered by a foe.",
    DOWNLOAD = "Adjusts Attack or Sp. Atk based on foe's stats.",
    DRIZZLE = "Summons rain upon entering battle.",
    DROUGHT = "Summons harsh sunlight upon entering battle.",
    DRY_SKIN = "Restores HP in rain or from Water; weak to Fire.",
    EARLY_BIRD = "The Pokémon awakens quickly from sleep.",
    EFFECT_SPORE = "Contact may inflict poison, paralysis, or sleep.",
    FILTER = "Reduces damage taken from super-effective attacks.",
    FLAME_BODY = "Contact with the Pokémon may inflict a burn.",
    FLASH_FIRE = "Grants Fire immunity and powers up Fire moves.",
    FORECAST = "Transforms with the weather conditions.",
    FOREWARN = "Reveals the opposing Pokémon's strongest move.",
    FRIEND_GUARD = "Reduces damage taken by allies in battle.",
    FRISK = "Identifies the held item of opposing Pokémon.",
    GLUTTONY = "Makes the Pokémon eat a held Berry earlier.",
    GUTS = "Boosts Attack when afflicted with a status condition.",
    HARVEST = "May restore a consumed Berry, especially in sun.",
    HEALER = "May heal an ally's status condition each turn.",
    HEAVY_METAL = "Doubles the Pokémon's weight.",
    HONEY_GATHER = "May gather Honey after a battle.",
    HUGE_POWER = "Doubles the Pokémon's Attack stat.",
    HUSTLE = "Boosts Attack but lowers physical move accuracy.",
    HYDRATION = "Cures status conditions in rain at turn end.",
    HYPER_CUTTER = "Prevents Attack stat from being lowered.",
    ICE_BODY = "Restores HP each turn in Hail; immune to Hail.",
    ILLUMINATE = "Increases wild Pokémon encounter frequency.",
    IMMUNITY = "Prevents the Pokémon from being poisoned.",
    IMPOSTER = "Transforms into the opposing Pokémon on switch-in.",
    INFILTRATOR = "Bypasses barriers, light screen, and substitutes.",
    INNER_FOCUS = "Protects the Pokémon from flinching.",
    INSOMNIA = "Prevents the Pokémon from falling asleep.",
    INTIMIDATE = "Lowers opposing Pokémon's Attack stat.",
    IRON_FIST = "Boosts the power of punching moves.",
    JUSTIFIED = "Raises Attack when hit by a Dark-type move.",
    KEEN_EYE = "Prevents accuracy loss and ignores evasion.",
    LEAF_GUARD = "Prevents status conditions in harsh sunlight.",
    LEVITATE = "Gives immunity to Ground-type moves.",
    LIGHTNING_ROD = "Draws in Electric moves to raise Sp. Atk.",
    LIGHT_METAL = "Halves the Pokémon's weight.",
    LIMBER = "Protects the Pokémon from paralysis.",
    LIQUID_OOZE = "Damages opponents that attempt to drain HP.",
    MAGIC_GUARD = "Only takes damage from direct attacks.",
    MAGMA_ARMOR = "Prevents the Pokémon from being frozen.",
    MAGNET_PULL = "Prevents Steel-type Pokémon from escaping.",
    MARVEL_SCALE = "Boosts Defense when afflicted with status.",
    MINUS = "Boosts Sp. Atk if an ally has Plus or Minus.",
    MOLD_BREAKER = "Moves ignore defensive abilities of targets.",
    MOODY = "Raises one stat sharply and lowers another every turn.",
    MOXIE = "Raises Attack after knocking out a target.",
    MULTISCALE = "Reduces damage taken at full HP.",
    NATURAL_CURE = "Cures status conditions upon switching out.",
    NO_GUARD = "Ensures all moves used by or against it hit.",
    NORMALIZE = "All moves used become Normal-type.",
    OBLIVIOUS = "Protects from infatuation, taunts, and charm.",
    OVERCOAT = "Immune to weather damage and powder moves.",
    OVERGROW = "Boosts Grass-type moves when HP is low.",
    OWN_TEMPO = "Protects the Pokémon from confusion.",
    PICKUP = "May find items after battle or pick up used items.",
    PLUS = "Boosts Sp. Atk if an ally has Plus or Minus.",
    POISON_HEAL = "Restores HP instead of taking poison damage.",
    POISON_POINT = "Contact with the Pokémon may inflict poison.",
    POISON_TOUCH = "Contact moves have a chance to poison the foe.",
    PRANKSTER = "Gives priority to status moves.",
    PRESSURE = "Raises opposing Pokémon's PP usage.",
    PROTEAN = "Changes type to match the move used.",
    PURE_POWER = "Doubles the Pokémon's Attack stat.",
    QUICK_FEET = "Boosts Speed when afflicted with a status condition.",
    RAIN_DISH = "Gradually regains HP in rain.",
    RATTLED = "Raises Speed when hit by Bug, Dark, or Ghost moves.",
    RECKLESS = "Powers up moves that cause recoil damage.",
    REGENERATOR = "Restores 1/3 max HP upon switching out.",
    RIVALRY = "Deals extra damage to same-gender targets.",
    ROCK_HEAD = "Protects the Pokémon from recoil damage.",
    ROUGH_SKIN = "Inflicts damage on contact attackers.",
    RUN_AWAY = "Guarantees escape from wild encounters.",
    SAND_FORCE = "Boosts Rock, Ground, and Steel moves in Sandstorm.",
    SAND_RUSH = "Doubles Speed in Sandstorm and grants immunity.",
    SAND_STREAM = "Summons a sandstorm upon entering battle.",
    SAND_VEIL = "Raises evasiveness during a Sandstorm.",
    SAP_SIPPER = "Boosts Attack when hit by Grass moves.",
    SCRAPPY = "Enables Fighting and Normal moves to hit Ghosts.",
    SERENE_GRACE = "Doubles the chance of secondary move effects.",
    SHADOW_TAG = "Prevents opposing Pokémon from escaping.",
    SHED_SKIN = "May cure status conditions at turn end.",
    SHEER_FORCE = "Removes additional effects to increase move power.",
    SHELL_ARMOR = "Protects the Pokémon against critical hits.",
    SHIELD_DUST = "Blocks secondary effects of opposing moves.",
    SIMPLE = "Doubles the effect of stat stage changes.",
    SKILL_LINK = "Multi-hit attacks always hit maximum times.",
    SNIPER = "Powers up critical hits significantly.",
    SNOW_CLOAK = "Raises evasiveness in Hail and grants immunity.",
    SOLAR_POWER = "Boosts Sp. Atk in sun, but loses HP.",
    SOLID_ROCK = "Reduces damage taken from super-effective attacks.",
    SOUNDPROOF = "Grants full immunity to sound-based moves.",
    SPEED_BOOST = "Its Speed stat is gradually boosted.",
    STALL = "The Pokémon always moves last in its turn.",
    STATIC = "May paralyze attackers on contact.",
    STEADFAST = "Raises Speed stat whenever flinched.",
    STENCH = "Attacks have a chance to cause the target to flinch.",
    STICKY_HOLD = "Prevents item theft by opposing moves or abilities.",
    STORM_DRAIN = "Draws in Water moves to raise Sp. Atk.",
    STURDY = "Survives fatal hits from full HP and blocks OHKO.",
    SUCTION_CUPS = "Prevents forced switching or item theft.",
    SUPER_LUCK = "Heightens the critical-hit ratio of moves.",
    SWARM = "Powers up Bug-type moves when HP is low.",
    SWIFT_SWIM = "Doubles the Pokémon's Speed in rain.",
    SYNCHRONIZE = "Passes poison, paralyze, or burn to the foe.",
    TANGLED_FEET = "Raises evasiveness when confused.",
    TECHNICIAN = "Powers up weaker moves.",
    TELEPATHY = "Anticipates and dodges ally attacks.",
    THICK_FAT = "Halves damage from Fire and Ice attacks.",
    TINTED_LENS = "Powers up moves that are not very effective.",
    TORRENT = "Boosts Water-type moves when HP is low.",
    TOXIC_BOOST = "Powers up physical attacks when poisoned.",
    TRACE = "Copies a random opposing Pokémon's ability on entry.",
    TRUANT = "The Pokémon can't attack on consecutive turns.",
    UNAWARE = "Ignores foe's stat changes when calculating damage.",
    UNBURDEN = "Doubles Speed upon losing or consuming held item.",
    UNNERVE = "Makes opposing Pokémon unable to eat Berries.",
    VITAL_SPIRIT = "Protects the Pokémon from falling asleep.",
    VOLT_ABSORB = "Restores HP when hit by Electric-type moves.",
    WATER_ABSORB = "Restores HP when hit by Water-type moves.",
    WATER_VEIL = "Protects the Pokémon from burns.",
    WEAK_ARMOR = "Physical hits lower Defense and double Speed.",
    WHITE_SMOKE = "Prevents stats from being lowered.",
    WONDER_GUARD = "Only super-effective moves will hit.",
    WONDER_SKIN = "Status moves are 50% less accurate against it."
  }

  local function getMonAbility(mon, battler)
    if battler and type(battler) == "table" and (battler._traced_ability or battler._temp_ability) then
      return (battler._traced_ability or battler._temp_ability):upper()
    end
    if not mon then return "NONE" end
    if type(mon) == "string" then return mon:upper() end
    if mon.ability and type(mon.ability) == "string" then return mon.ability:upper() end

    local species = (mon.species and tostring(mon.species):upper()) or "BULBASAUR"
    local pool = (mod.CUSTOM_ABILITIES and mod.CUSTOM_ABILITIES[species]) or SPECIES_ABILITIES[species] or { "ADAPTABILITY" }

    local hash = 0
    if mon.dvs then
      hash = (mon.dvs.attack or 0) + (mon.dvs.defense or 0)*3 + (mon.dvs.speed or 0)*7 + (mon.dvs.special or 0)*11
    else
      hash = math.random(1, 100)
    end

    mon.ability = pool[(hash % #pool) + 1]
    return mon.ability:upper()
  end

  local function hasAbility(battler, abId)
    if not battler then return false end
    if type(battler) == "string" then return battler:upper() == abId:upper() end
    local mon = (type(battler) == "table" and battler.mon) or battler
    return getMonAbility(mon, (type(battler) == "table" and battler or nil)) == abId:upper()
  end

  local function isWeatherActive(battle, weatherType)
    if not battle then return false end
    if hasAbility(battle.player, "AIR_LOCK") or hasAbility(battle.enemy, "AIR_LOCK") or
       hasAbility(battle.player, "CLOUD_NINE") or hasAbility(battle.enemy, "CLOUD_NINE") then
      return false
    end
    return (battle.weather == weatherType:upper())
  end

  local function getPokemonWeight(mon, battler)
    if not mon then return 10.0 end
    local baseWeight = mon.weight or 10.0
    local ab = getMonAbility(mon, battler)
    if ab == "HEAVY_METAL" then return baseWeight * 2.0 end
    if ab == "LIGHT_METAL" then return baseWeight * 0.5 end
    return baseWeight
  end

  mod.getMonAbility = getMonAbility
  mod.hasAbility = hasAbility
  mod.isWeatherActive = isWeatherActive
  mod.getPokemonWeight = getPokemonWeight
  mod.ABILITY_DESCRIPTIONS = ABILITY_DESCRIPTIONS
  mod.SPECIES_ABILITIES = SPECIES_ABILITIES
  mod.exports = {
    getMonAbility = getMonAbility,
    hasAbility = hasAbility,
    isWeatherActive = isWeatherActive,
    getPokemonWeight = getPokemonWeight,
    ABILITY_DESCRIPTIONS = ABILITY_DESCRIPTIONS,
    SPECIES_ABILITIES = SPECIES_ABILITIES
  }

  local function processEntryAbilities(b, opp, battle)
    if not b or not opp or not battle then return end

    if b.modify_stat_stage and not b._stat_wrapped then
      local origModify = b.modify_stat_stage
      b.modify_stat_stage = function(self, stat, val, sourceIsFoe, ...)
        local bName = tostring(self.name or (self.mon and self.mon.species) or "Pokémon")
        local currentAb = getMonAbility(self.mon or self, self)

        if currentAb == "CONTRARY" then val = -val end
        if currentAb == "SIMPLE" then val = val * 2 end

        if val < 0 and sourceIsFoe then
          if currentAb == "CLEAR_BODY" or currentAb == "WHITE_SMOKE" then
            triggerAbilityPopup(bName .. "'s " .. currentAb .. " prevents stat loss!")
            return false
          end
          if stat == "attack" and currentAb == "HYPER_CUTTER" then
            triggerAbilityPopup(bName .. "'s HYPER CUTTER prevents Attack loss!")
            return false
          end
          if stat == "defense" and currentAb == "BIG_PECKS" then
            triggerAbilityPopup(bName .. "'s BIG PECKS prevents Defense loss!")
            return false
          end
          if stat == "accuracy" and currentAb == "KEEN_EYE" then
            triggerAbilityPopup(bName .. "'s KEEN EYE prevents Accuracy loss!")
            return false
          end

          local res = origModify(self, stat, val, sourceIsFoe, ...)
          if currentAb == "DEFIANT" then
            triggerAbilityPopup(bName .. "'s DEFIANT!")
            origModify(self, "attack", 2, false)
          elseif currentAb == "COMPETITIVE" then
            triggerAbilityPopup(bName .. "'s COMPETITIVE!")
            origModify(self, "spAtk", 2, false)
          end
          return res
        end

        return origModify(self, stat, val, sourceIsFoe, ...)
      end
      b._stat_wrapped = true
    end

    local bName = tostring(b.name or (b.mon and b.mon.species) or "Pokémon")
    local oppName = tostring(opp.name or (opp.mon and opp.mon.species) or "Enemy")

    if hasAbility(b, "FORECAST") then
      if isWeatherActive(battle, "SUN") then b.temp_type1 = "FIRE"
      elseif isWeatherActive(battle, "RAIN") then b.temp_type1 = "WATER"
      elseif isWeatherActive(battle, "HAIL") then b.temp_type1 = "ICE"
      else b.temp_type1 = "NORMAL" end
    end

    if hasAbility(b, "INTIMIDATE") then
      triggerAbilityPopup(bName .. "'s INTIMIDATE!")
      if opp.modify_stat_stage then
        opp:modify_stat_stage("attack", -1, true)
      end
    end

    if hasAbility(b, "TRACE") then
      local oppAb = getMonAbility(opp.mon or opp, opp)
      if oppAb ~= "NONE" and oppAb ~= "TRACE" then
        triggerAbilityPopup(bName .. " TRACED " .. oppAb .. "!")
        b._traced_ability = oppAb
      end
    end

    if hasAbility(b, "DOWNLOAD") and opp.mon and opp.mon.stats then
      triggerAbilityPopup(bName .. "'s DOWNLOAD!")
      local def = opp.mon.stats.defense or 50
      local spDef = opp.mon.stats.specialDefense or opp.mon.stats.special or 50
      if def < spDef then
        if b.modify_stat_stage then b:modify_stat_stage("attack", 1, false) end
      else
        if b.modify_stat_stage then b:modify_stat_stage("spAtk", 1, false) end
      end
    end

    if hasAbility(b, "IMPOSTER") and opp.mon then
      triggerAbilityPopup(bName .. "'s IMPOSTER transformed into " .. oppName .. "!")
      b.transformed = true
      b.transformed_species = opp.mon.species
    end

    if hasAbility(b, "FOREWARN") and opp.mon and opp.mon.moves then triggerAbilityPopup(bName .. "'s FOREWARN sensed a threat!") end
    if hasAbility(b, "FRISK") and opp.mon and opp.mon.item then triggerAbilityPopup(bName .. " FRISKED opponent's " .. tostring(opp.mon.item) .. "!") end
    if hasAbility(b, "ANTICIPATION") then triggerAbilityPopup(bName .. " shuddered with ANTICIPATION!") end
    if hasAbility(b, "MOLD_BREAKER") then triggerAbilityPopup(bName .. " breaks the mold!") end
    if hasAbility(b, "PRESSURE") then triggerAbilityPopup(bName .. " is exerting its PRESSURE!") end
    if hasAbility(b, "UNNERVE") then triggerAbilityPopup(bName .. "'s UNNERVE makes the foe nervous!") end
    if hasAbility(b, "SHADOW_TAG") or hasAbility(b, "MAGNET_PULL") or hasAbility(b, "ARENA_TRAP") then
      triggerAbilityPopup(bName .. "'s trapping ability is active!")
    end

    if hasAbility(b, "DROUGHT") then
      triggerAbilityPopup(bName .. "'s DROUGHT brought harsh sunlight!")
      battle.weather = "SUN"; battle.weather_turns = 5
    elseif hasAbility(b, "DRIZZLE") then
      triggerAbilityPopup(bName .. "'s DRIZZLE brought rain!")
      battle.weather = "RAIN"; battle.weather_turns = 5
    elseif hasAbility(b, "SAND_STREAM") then
      triggerAbilityPopup(bName .. "'s SAND STREAM created a sandstorm!")
      battle.weather = "SANDSTORM"; battle.weather_turns = 5
    end
  end

  -- =========================================================================
  -- BATTLE INITIALIZATION & ENTRY ABILITIES
  -- =========================================================================
  mod.events:on("battle.started", function(ev)
    if ev and ev.battle then
      ev.battle.weather = "CLEAR"
      ev.battle.weather_turns = 0
      if ev.battle.player and ev.battle.enemy then
        processEntryAbilities(ev.battle.player, ev.battle.enemy, ev.battle)
        processEntryAbilities(ev.battle.enemy, ev.battle.player, ev.battle)
      end
    end
  end)

  mod.events:on("battle.battler_switched", function(ev)
    if not ev or not ev.battler or not ev.battle then return end
    local b = ev.battler
    local opp = (ev.side == "player") and ev.battle.enemy or ev.battle.player

    if ev.previous_battler then
      ev.previous_battler._traced_ability = nil
      ev.previous_battler.temp_type1 = nil
      ev.previous_battler.transformed = false

      if hasAbility(ev.previous_battler, "REGENERATOR") and ev.previous_battler.mon then
        if ev.previous_battler.mon.heal then ev.previous_battler.mon:heal(math.floor((ev.previous_battler.mon.max_hp or 100) / 3)) end
      end
      if hasAbility(ev.previous_battler, "NATURAL_CURE") and ev.previous_battler.mon then
        ev.previous_battler.mon.status = "NONE"
      end
    end
    processEntryAbilities(b, opp, ev.battle)
  end)

  -- =========================================================================
  -- TURN ORDER HOOK (Priority & Speed Modifications)
  -- =========================================================================
  mod.hooks:wrap("battle.turn_order", function(next, pBattler, pMove, eBattler, eMove, ctx)
    local pPriority = (pMove and pMove.priority) or 0
    local ePriority = (eMove and eMove.priority) or 0

    if pMove and (pMove.category == "status" or pMove.category == "STATUS") and hasAbility(pBattler, "PRANKSTER") then
      pPriority = pPriority + 1
    end
    if eMove and (eMove.category == "status" or eMove.category == "STATUS") and hasAbility(eBattler, "PRANKSTER") then
      ePriority = ePriority + 1
    end

    if pPriority ~= ePriority then return pPriority > ePriority end

    local pSpeed = pBattler and pBattler.mon and (pBattler.mon.stats and (pBattler.mon.stats.speed or pBattler.mon.stats.spe) or 50) or 50
    local eSpeed = eBattler and eBattler.mon and (eBattler.mon.stats and (eBattler.mon.stats.speed or eBattler.mon.stats.spe) or 50) or 50
    local battle = (ctx and ctx.battle) or (mod.game and mod.game.battle)

    if battle then
      if isWeatherActive(battle, "RAIN") then
        if hasAbility(pBattler, "SWIFT_SWIM") then pSpeed = pSpeed * 2 end
        if hasAbility(eBattler, "SWIFT_SWIM") then eSpeed = eSpeed * 2 end
      elseif isWeatherActive(battle, "SUN") then
        if hasAbility(pBattler, "CHLOROPHYLL") then pSpeed = pSpeed * 2 end
        if hasAbility(eBattler, "CHLOROPHYLL") then eSpeed = eSpeed * 2 end
      elseif isWeatherActive(battle, "SANDSTORM") then
        if hasAbility(pBattler, "SAND_RUSH") then pSpeed = pSpeed * 2 end
        if hasAbility(eBattler, "SAND_RUSH") then eSpeed = eSpeed * 2 end
      end
    end

    if hasAbility(pBattler, "QUICK_FEET") and pBattler.mon and pBattler.mon.status and pBattler.mon.status ~= "NONE" then pSpeed = math.floor(pSpeed * 1.5) end
    if hasAbility(eBattler, "QUICK_FEET") and eBattler.mon and eBattler.mon.status and eBattler.mon.status ~= "NONE" then eSpeed = math.floor(eSpeed * 1.5) end

    if hasAbility(pBattler, "UNBURDEN") and pBattler.mon and pBattler.mon.item_lost then pSpeed = pSpeed * 2 end
    if hasAbility(eBattler, "UNBURDEN") and eBattler.mon and eBattler.mon.item_lost then eSpeed = eSpeed * 2 end

    if hasAbility(pBattler, "STALL") then pSpeed = -9999 end
    if hasAbility(eBattler, "STALL") then eSpeed = -9999 end

    if ctx then ctx.pSpeed = pSpeed; ctx.eSpeed = eSpeed end
    if pSpeed ~= eSpeed then return pSpeed > eSpeed end
    return next(pBattler, pMove, eBattler, eMove, ctx)
  end)

  -- =========================================================================
  -- DAMAGE CALCULATION HOOK (Immunities, Offenses, Defenses, and Multipliers)[cite: 4, 9]
  -- =========================================================================
  mod.hooks:wrap("battle.damage", function(next, ctx)
    if not ctx or not ctx.move or not ctx.target or not ctx.user then return next(ctx) end

    local attacker = ctx.user
    local defender = ctx.target
    local move = ctx.move
    local battle = (ctx.battle) or (mod.game and mod.game.battle)
    local moveType = move.type or move.type1 or "NORMAL"
    local isPhysical = (move.category and move.category:upper() == "PHYSICAL") or false

    if hasAbility(attacker, "PROTEAN") and moveType then attacker.temp_type1 = moveType end
    if hasAbility(attacker, "NORMALIZE") then moveType = "NORMAL"; ctx.move.type = "NORMAL" end

    if hasAbility(attacker, "COMPOUND_EYES") and ctx.accuracy then ctx.accuracy = math.floor(ctx.accuracy * 1.3) end
    if hasAbility(attacker, "SERENE_GRACE") and ctx.effectChance then ctx.effectChance = ctx.effectChance * 2 end
    if hasAbility(attacker, "SKILL_LINK") and move.isMultiHit then ctx.hitCount = 5 end

    local ignoreDefensiveAbilities = hasAbility(attacker, "MOLD_BREAKER")

    if not ignoreDefensiveAbilities then
      if hasAbility(defender, "WONDER_SKIN") and (move.category == "status" or move.category == "STATUS") and ctx.accuracy then
        ctx.accuracy = math.floor(ctx.accuracy * 0.5)
      end
      if battle then
        if isWeatherActive(battle, "SANDSTORM") and hasAbility(defender, "SAND_VEIL") and ctx.accuracy then ctx.accuracy = math.floor(ctx.accuracy * 0.8)
        elseif isWeatherActive(battle, "HAIL") and hasAbility(defender, "SNOW_CLOAK") and ctx.accuracy then ctx.accuracy = math.floor(ctx.accuracy * 0.8) end
      end
      if hasAbility(defender, "TANGLED_FEET") and defender.mon and defender.mon.status == "CONFUSION" and ctx.accuracy then
        ctx.accuracy = math.floor(ctx.accuracy * 0.8)
      end
    end

    if hasAbility(attacker, "UNAWARE") or (not ignoreDefensiveAbilities and hasAbility(defender, "UNAWARE")) then
      ctx.ignoreStatStages = true
    end

    local damage, info = next(ctx)

    if not ignoreDefensiveAbilities then
      if hasAbility(defender, "WONDER_GUARD") and info and info.typeMult and info.typeMult <= 10 then
        triggerAbilityPopup(defender.name .. "'s WONDER GUARD avoided the attack!")
        if info then info.typeMult = 0 end
        return 0, info
      end
      if hasAbility(defender, "SOUNDPROOF") and (move.isSound or move.id == "HYPER_VOICE" or move.id == "SING" or move.id == "SCREAM") then
        triggerAbilityPopup(defender.name .. "'s SOUNDPROOF blocked the move!")
        if info then info.typeMult = 0 end
        return 0, info
      end
      if hasAbility(defender, "TELEPATHY") and ctx.isAllyAttacker then
        triggerAbilityPopup(defender.name .. "'s TELEPATHY dodged ally move!")
        if info then info.typeMult = 0 end
        return 0, info
      end
      if (hasAbility(attacker, "DAMP") or hasAbility(defender, "DAMP")) and (move.id == "EXPLOSION" or move.id == "SELFDESTRUCT") then
        triggerAbilityPopup("DAMP prevented the explosion!")
        if info then info.typeMult = 0 end
        return 0, info
      end
      if hasAbility(defender, "LEVITATE") and moveType == "GROUND" then
        triggerAbilityPopup(defender.name .. "'s LEVITATE!")
        if info then info.typeMult = 0 end
        return 0, info
      end
      if moveType == "WATER" then
        if hasAbility(defender, "WATER_ABSORB") or hasAbility(defender, "DRY_SKIN") or hasAbility(defender, "STORM_DRAIN") then
          triggerAbilityPopup(defender.name .. " absorbed Water!")
          if defender.mon and defender.mon.heal then defender.mon:heal(math.floor((defender.mon.max_hp or 100) / 4)) end
          if info then info.typeMult = 0 end
          return 0, info
        end
      end
      if moveType == "ELECTRIC" then
        if hasAbility(defender, "VOLT_ABSORB") or hasAbility(defender, "LIGHTNING_ROD") then
          triggerAbilityPopup(defender.name .. "'s Electric immunity!")
          if defender.mon and defender.mon.heal then defender.mon:heal(math.floor((defender.mon.max_hp or 100) / 4)) end
          if info then info.typeMult = 0 end
          return 0, info
        end
      end
      if hasAbility(defender, "FLASH_FIRE") and moveType == "FIRE" then
        triggerAbilityPopup(defender.name .. "'s FLASH FIRE!")
        if info then info.typeMult = 0 end
        return 0, info
      end
      if hasAbility(defender, "SAP_SIPPER") and moveType == "GRASS" then
        triggerAbilityPopup(defender.name .. "'s SAP SIPPER!")
        if info then info.typeMult = 0 end
        return 0, info
      end
      if hasAbility(defender, "MAGIC_GUARD") and move.isIndirect then return 0, info end
      if hasAbility(defender, "OVERCOAT") and (move.isPowder or move.isWeatherDamage) then return 0, info end
      if hasAbility(defender, "SHIELD_DUST") and info then info.secondaryTriggered = false end
    end

    if not ignoreDefensiveAbilities then
      if hasAbility(defender, "THICK_FAT") and (moveType == "FIRE" or moveType == "ICE") then
        triggerAbilityPopup(defender.name .. "'s THICK FAT!")
        damage = math.floor(damage * 0.5)
      end
      if hasAbility(defender, "MULTISCALE") and defender.mon and defender.mon.hp == (defender.mon.max_hp or 100) then
        triggerAbilityPopup(defender.name .. "'s MULTISCALE!")
        damage = math.floor(damage * 0.5)
      end
      if (hasAbility(defender, "FILTER") or hasAbility(defender, "SOLID_ROCK")) and info and info.typeMult and info.typeMult > 10 then
        triggerAbilityPopup(defender.name .. " reduced super-effective damage!")
        damage = math.floor(damage * 0.75)
      end
      if hasAbility(defender, "DRY_SKIN") and moveType == "FIRE" then damage = math.floor(damage * 1.25) end
      if hasAbility(defender, "MARVEL_SCALE") and isPhysical and defender.mon and defender.mon.status and defender.mon.status ~= "NONE" then
        damage = math.floor(damage * 0.67)
      end
      if hasAbility(defender, "FRIEND_GUARD") then damage = math.floor(damage * 0.75) end
    end

    if (hasAbility(attacker, "HUGE_POWER") or hasAbility(attacker, "PURE_POWER")) and isPhysical then damage = math.floor(damage * 2.0) end
    if hasAbility(attacker, "ADAPTABILITY") and info and info.stab then damage = math.floor(damage * 1.33) end
    if hasAbility(attacker, "TECHNICIAN") and (move.power or 0) <= 60 and (move.power or 0) > 0 then
      triggerAbilityPopup(attacker.name .. "'s TECHNICIAN!")
      damage = math.floor(damage * 1.5)
    end
    if hasAbility(attacker, "IRON_FIST") and string.find(move.id or "", "PUNCH") then damage = math.floor(damage * 1.2) end
    if hasAbility(attacker, "RECKLESS") and (move.recoil or move.id == "DOUBLE_EDGE" or move.id == "FLARE_BLITZ" or move.id == "BRAVE_BIRD" or move.id == "WILD_CHARGE" or move.id == "TAKEDOWN") then
      damage = math.floor(damage * 1.2)
    end
    if hasAbility(attacker, "ROCK_HEAD") and move.recoil then move.recoil = 0 end
    if hasAbility(attacker, "TINTED_LENS") and info and info.typeMult and info.typeMult < 10 then
      triggerAbilityPopup(attacker.name .. "'s TINTED LENS!")
      damage = damage * 2
    end
    if hasAbility(attacker, "SNIPER") and info and info.crit then
      triggerAbilityPopup(attacker.name .. "'s SNIPER!")
      damage = math.floor(damage * 1.5)
    end
    if hasAbility(attacker, "SUPER_LUCK") and info then info.critRatio = (info.critRatio or 1) + 1 end
    if hasAbility(attacker, "GUTS") and isPhysical and attacker.mon and attacker.mon.status and attacker.mon.status ~= "NONE" then damage = math.floor(damage * 1.5) end
    if hasAbility(attacker, "TOXIC_BOOST") and isPhysical and attacker.mon and attacker.mon.status == "POISON" then damage = math.floor(damage * 1.5) end
    if hasAbility(attacker, "HUSTLE") and isPhysical then damage = math.floor(damage * 1.5) end
    if battle and isWeatherActive(battle, "SUN") and hasAbility(attacker, "SOLAR_POWER") and not isPhysical then damage = math.floor(damage * 1.5) end
    if battle and isWeatherActive(battle, "SANDSTORM") and hasAbility(attacker, "SAND_FORCE") and (moveType == "ROCK" or moveType == "GROUND" or moveType == "STEEL") then damage = math.floor(damage * 1.3) end
    if hasAbility(attacker, "RIVALRY") then damage = math.floor(damage * 1.25) end
    if hasAbility(attacker, "SHEER_FORCE") and move.hasSecondaryEffect then damage = math.floor(damage * 1.3) end
    if hasAbility(attacker, "SCRAPPY") and (moveType == "NORMAL" or moveType == "FIGHTING") and defender.mon and (defender.mon.type1 == "GHOST" or defender.mon.type2 == "GHOST") then
      if info and info.typeMult and info.typeMult == 0 then info.typeMult = 10 end
    end
    if hasAbility(attacker, "ANALYTIC") and ctx.isMovingLast then
      triggerAbilityPopup(attacker.name .. "'s ANALYTIC!")
      damage = math.floor(damage * 1.3)
    end
    if hasAbility(attacker, "PLUS") or hasAbility(attacker, "MINUS") then damage = math.floor(damage * 1.5) end

    if attacker.mon and attacker.mon.hp and attacker.mon.max_hp then
      local hpPct = attacker.mon.hp / attacker.mon.max_hp
      if hpPct <= 0.33 then
        if hasAbility(attacker, "BLAZE") and moveType == "FIRE" then damage = math.floor(damage * 1.5) end
        if hasAbility(attacker, "TORRENT") and moveType == "WATER" then damage = math.floor(damage * 1.5) end
        if hasAbility(attacker, "OVERGROW") and moveType == "GRASS" then damage = math.floor(damage * 1.5) end
        if hasAbility(attacker, "SWARM") and moveType == "BUG" then damage = math.floor(damage * 1.5) end
      end
    end

    if not ignoreDefensiveAbilities and hasAbility(defender, "STURDY") and defender.mon and defender.mon.hp == (defender.mon.max_hp or 100) then
      if damage >= defender.mon.hp then
        triggerAbilityPopup(defender.name .. "'s STURDY!")
        damage = defender.mon.hp - 1
      end
    end

    if not ignoreDefensiveAbilities and (hasAbility(defender, "BATTLE_ARMOR") or hasAbility(defender, "SHELL_ARMOR")) and info and info.crit then
      info.crit = false
    end

    return damage, info
  end)

  -- =========================================================================
  -- POST-DAMAGE & CONTACT HOOK (Side Effects Execution)[cite: 8, 9]
  -- =========================================================================
  mod.events:on("battle.damage_dealt", function(ev)
    if not ev or not ev.user or not ev.target or not ev.move then return end
    local attacker = ev.user
    local defender = ev.target
    local move = ev.move
    local moveType = move.type or move.type1 or "NORMAL"
    local isPhysical = (move.category and move.category:upper() == "PHYSICAL") or false
    local ignoreDefensiveAbilities = hasAbility(attacker, "MOLD_BREAKER")

    if not ignoreDefensiveAbilities then
      if moveType == "WATER" then
        if hasAbility(defender, "WATER_ABSORB") or hasAbility(defender, "DRY_SKIN") then
          if defender.mon and defender.mon.heal then defender.mon:heal(math.floor((defender.mon.max_hp or 100) / 4)) end
        elseif hasAbility(defender, "STORM_DRAIN") then
          if defender.modify_stat_stage then defender:modify_stat_stage("spAtk", 1, false) end
        end
      elseif moveType == "ELECTRIC" then
        if hasAbility(defender, "VOLT_ABSORB") then
          if defender.mon and defender.mon.heal then defender.mon:heal(math.floor((defender.mon.max_hp or 100) / 4)) end
        elseif hasAbility(defender, "LIGHTNING_ROD") then
          if defender.modify_stat_stage then defender:modify_stat_stage("spAtk", 1, false) end
        end
      elseif moveType == "GRASS" and hasAbility(defender, "SAP_SIPPER") then
        if defender.modify_stat_stage then defender:modify_stat_stage("attack", 1, false) end
      end
    end

    if ev.damage <= 0 then return end

    if hasAbility(attacker, "MOXIE") and defender.mon and defender.mon.hp <= 0 then
      triggerAbilityPopup(attacker.name .. "'s MOXIE raised Attack!")
      if attacker.modify_stat_stage then attacker:modify_stat_stage("attack", 1, false) end
    end

    if hasAbility(defender, "COLOR_CHANGE") and moveType ~= "NORMAL" then
      triggerAbilityPopup(defender.name .. "'s COLOR CHANGE copied " .. moveType .. "!")
      defender.temp_type1 = moveType
    end

    if hasAbility(defender, "CURSED_BODY") and math.random(1, 100) <= 30 then
      triggerAbilityPopup(defender.name .. "'s CURSED BODY disabled the move!")
    end

    if move.isDrain and hasAbility(defender, "LIQUID_OOZE") then
      triggerAbilityPopup(defender.name .. "'s LIQUID OOZE hurt " .. attacker.name .. "!")
      if attacker.mon and attacker.mon.take_damage then attacker.mon:take_damage(math.floor(ev.damage / 2)) end
    end

    if hasAbility(defender, "SYNCHRONIZE") and defender.mon and defender.mon.status and defender.mon.status ~= "NONE" then
      if attacker.mon and attacker.mon.apply_status then
        triggerAbilityPopup(defender.name .. "'s SYNCHRONIZE passed status!")
        attacker.mon:apply_status(defender.mon.status)
      end
    end

    if isPhysical then
      if hasAbility(defender, "AFTERMATH") and defender.mon and defender.mon.hp <= 0 then
        triggerAbilityPopup(defender.name .. "'s AFTERMATH!")
        if attacker.mon and attacker.mon.take_damage then attacker.mon:take_damage(math.floor((attacker.mon.max_hp or 100) / 4)) end
      end
      if hasAbility(defender, "ROUGH_SKIN") or hasAbility(defender, "IRON_BARBS") then
        triggerAbilityPopup(defender.name .. "'s ROUGH SKIN!")
        if attacker.mon and attacker.mon.take_damage then attacker.mon:take_damage(math.floor((attacker.mon.max_hp or 100) / 8)) end
      end
      if hasAbility(attacker, "POISON_TOUCH") and math.random(1, 100) <= 30 then
        triggerAbilityPopup(attacker.name .. "'s POISON TOUCH!")
        if defender.mon and defender.mon.apply_status then defender.mon:apply_status("POISON") end
      end
      if hasAbility(defender, "STATIC") and math.random(1, 100) <= 30 then
        triggerAbilityPopup(defender.name .. "'s STATIC!"); if attacker.mon and attacker.mon.apply_status then attacker.mon:apply_status("PARALYSIS") end
      end
      if hasAbility(defender, "FLAME_BODY") and math.random(1, 100) <= 30 then
        triggerAbilityPopup(defender.name .. "'s FLAME BODY!"); if attacker.mon and attacker.mon.apply_status then attacker.mon:apply_status("BURN") end
      end
      if hasAbility(defender, "POISON_POINT") and math.random(1, 100) <= 30 then
        triggerAbilityPopup(defender.name .. "'s POISON POINT!"); if attacker.mon and attacker.mon.apply_status then attacker.mon:apply_status("POISON") end
      end
      if hasAbility(defender, "CUTE_CHARM") and math.random(1, 100) <= 30 then
        triggerAbilityPopup(defender.name .. "'s CUTE CHARM!")
      end
      if hasAbility(defender, "EFFECT_SPORE") and math.random(1, 100) <= 30 then
        triggerAbilityPopup(defender.name .. "'s EFFECT SPORE!")
        if attacker.mon and attacker.mon.apply_status then
          local roll = math.random(1, 3)
          if roll == 1 then attacker.mon:apply_status("POISON") elseif roll == 2 then attacker.mon:apply_status("PARALYSIS") else attacker.mon:apply_status("SLEEP") end
        end
      end
    end

    if hasAbility(defender, "JUSTIFIED") and moveType == "DARK" then
      triggerAbilityPopup(defender.name .. "'s JUSTIFIED!")
      if defender.modify_stat_stage then defender:modify_stat_stage("attack", 1, false) end
    end
    if hasAbility(defender, "RATTLED") and (moveType == "BUG" or moveType == "DARK" or moveType == "GHOST") then
      triggerAbilityPopup(defender.name .. "'s RATTLED!")
      if defender.modify_stat_stage then defender:modify_stat_stage("speed", 1, false) end
    end
    if hasAbility(defender, "WEAK_ARMOR") and isPhysical then
      triggerAbilityPopup(defender.name .. "'s WEAK ARMOR!")
      if defender.modify_stat_stage then defender:modify_stat_stage("defense", -1, false); defender:modify_stat_stage("speed", 2, false) end
    end
    if hasAbility(defender, "ANGER_POINT") and ev.info and ev.info.crit then
      triggerAbilityPopup(defender.name .. "'s ANGER POINT!")
      if defender.modify_stat_stage then defender:modify_stat_stage("attack", 6, false) end
    end
    if hasAbility(defender, "INNER_FOCUS") and ev.info and ev.info.flinched then
      triggerAbilityPopup(defender.name .. "'s INNER FOCUS prevented flinching!")
      ev.info.flinched = false
    end
    if hasAbility(defender, "STEADFAST") and ev.info and ev.info.flinched then
      triggerAbilityPopup(defender.name .. "'s STEADFAST!")
      if defender.modify_stat_stage then defender:modify_stat_stage("speed", 1, false) end
    end
  end)

  -- =========================================================================
  -- END OF TURN HOOK (Weather Healing/Damage, Speed Boost, Status Clears)[cite: 8, 9]
  -- =========================================================================
  mod.events:on("battle.turn_ended", function(ev)
    if not ev or not ev.battle then return end
    local battle = ev.battle
    local battlers = { battle.player, battle.enemy }

    for _, b in ipairs(battlers) do
      if b and b.mon and b.mon.hp and b.mon.hp > 0 then
        local bName = tostring(b.name or b.mon.species or "Pokémon")

        if hasAbility(b, "SPEED_BOOST") then
          triggerAbilityPopup(bName .. "'s SPEED BOOST!")
          if b.modify_stat_stage then b:modify_stat_stage("speed", 1, false) end
        end

        if hasAbility(b, "MOODY") then
          triggerAbilityPopup(bName .. "'s MOODY!")
          local stats = { "attack", "defense", "speed", "spAtk", "spDef" }
          local s1 = stats[math.random(1, #stats)]
          local s2 = stats[math.random(1, #stats)]
          if b.modify_stat_stage then b:modify_stat_stage(s1, 2, false); b:modify_stat_stage(s2, -1, false) end
        end

        if hasAbility(b, "HARVEST") and b.mon and b.mon.item_used then
          local chance = isWeatherActive(battle, "SUN") and 100 or 50
          if math.random(1, 100) <= chance then
            triggerAbilityPopup(bName .. "'s HARVEST restored its Berry!")
            b.mon.item_used = false
          end
        end

        if hasAbility(b, "GLUTTONY") and b.mon and b.mon.hp <= math.floor((b.mon.max_hp or 100) / 2) and b.mon.item then
          triggerAbilityPopup(bName .. "'s GLUTTONY ate its held item early!")
        end

        if hasAbility(b, "HEALER") and math.random(1, 100) <= 30 then
          triggerAbilityPopup(bName .. "'s HEALER activated!")
        end

        if hasAbility(b, "TRUANT") then
          b.mon.truant_turn = not (b.mon.truant_turn or false)
        end

        if isWeatherActive(battle, "RAIN") then
          if hasAbility(b, "RAIN_DISH") or hasAbility(b, "DRY_SKIN") then
            triggerAbilityPopup(bName .. " restored HP in Rain!")
            if b.mon.heal then b.mon:heal(math.floor((b.mon.max_hp or 100) / 16)) end
          end
          if hasAbility(b, "HYDRATION") and b.mon.status and b.mon.status ~= "NONE" then
            triggerAbilityPopup(bName .. "'s HYDRATION cured status!")
            b.mon.status = "NONE"
          end
        elseif isWeatherActive(battle, "SUN") then
          if hasAbility(b, "DRY_SKIN") or hasAbility(b, "SOLAR_POWER") then
            triggerAbilityPopup(bName .. " is hurt by the sunlight!")
            if b.mon.take_damage then b.mon:take_damage(math.floor((b.mon.max_hp or 100) / 8)) end
          end
        elseif isWeatherActive(battle, "HAIL") then
          if hasAbility(b, "ICE_BODY") then
            triggerAbilityPopup(bName .. "'s ICE BODY restored HP!")
            if b.mon.heal then b.mon:heal(math.floor((b.mon.max_hp or 100) / 16)) end
          end
        end

        if hasAbility(b, "POISON_HEAL") and b.mon.status == "POISON" then
          triggerAbilityPopup(bName .. "'s POISON HEAL restored HP!")
          if b.mon.heal then b.mon:heal(math.floor((b.mon.max_hp or 100) / 8)) end
        end

        if b.mon.status and b.mon.status ~= "NONE" then
          local cure = false
          if hasAbility(b, "SHED_SKIN") and math.random(1, 100) <= 33 then cure = true end
          if hasAbility(b, "LIMBER") and b.mon.status == "PARALYSIS" then cure = true end
          if hasAbility(b, "IMMUNITY") and b.mon.status == "POISON" then cure = true end
          if hasAbility(b, "WATER_VEIL") and b.mon.status == "BURN" then cure = true end
          if (hasAbility(b, "INSOMNIA") or hasAbility(b, "VITAL_SPIRIT") or hasAbility(b, "EARLY_BIRD")) and b.mon.status == "SLEEP" then cure = true end
          if hasAbility(b, "MAGMA_ARMOR") and b.mon.status == "FREEZE" then cure = true end
          if hasAbility(b, "OWN_TEMPO") and b.mon.status == "CONFUSION" then cure = true end
          if hasAbility(b, "OBLIVIOUS") and (b.mon.status == "INFATUATION" or b.mon.status == "TAUNT") then cure = true end
          if hasAbility(b, "LEAF_GUARD") and isWeatherActive(battle, "SUN") then cure = true end

          if cure then
            triggerAbilityPopup(bName .. " cured its status!")
            b.mon.status = "NONE"
          end
        end
      end
    end
  end)

  -- =========================================================================
  -- OVERWORLD & FIELD ENCOUNTERS
  -- =========================================================================
  mod.hooks:wrap("encounter.roll", function(next, encDef, ctx)
    local result = next(encDef, ctx)
    local gameObj = mod.game or (ctx and ctx.game)
    if not gameObj or not gameObj.save or not gameObj.save.party then return result end
    local leader = gameObj.save.party[1]
    if not leader then return result end

    local ab = getMonAbility(leader)
    if ab == "ARENA_TRAP" or ab == "ILLUMINATE" or ab == "NO_GUARD" or ab == "SWARM" then
      if result == nil and ctx and ctx.rng and ctx.rng(1, 100) <= 50 then return next(encDef, ctx) end
    elseif ab == "STENCH" or ab == "QUICK_FEET" or ab == "WHITE_SMOKE" or ab == "INFILTRATOR" or ab == "RUN_AWAY" then
      if result and ctx and ctx.rng and ctx.rng(1, 100) <= 50 then return nil end
    end
    return result
  end)

  mod.hooks:wrap("encounter.fishing", function(next, rod, mapId, candidates, ctx)
    local result = next(rod, mapId, candidates)
    if result then return result end
    local gameObj = mod.game or (ctx and ctx.game)
    if not gameObj or not gameObj.save or not gameObj.save.party then return nil end
    local leader = gameObj.save.party[1]
    if leader then
      local ab = getMonAbility(leader)
      if ab == "SWIFT_SWIM" or ab == "WATER_VEIL" or ab == "SUCTION_CUPS" or ab == "STICKY_HOLD" then
        return next(rod, mapId, candidates, ctx)
      end
    end
    return nil
  end)

  mod.events:on("battle.ended", function(ev)
    if not ev or not ev.winner or ev.winner ~= "player" then return end
    local gameObj = mod.game
    if not gameObj or not gameObj.save or not gameObj.save.party then return end
    for _, mon in ipairs(gameObj.save.party) do
      if mon and mon.hp and mon.hp > 0 then
        local ab = getMonAbility(mon)
        if ab == "PICKUP" and not mon.item and math.random(1, 100) <= 10 then
          triggerAbilityPopup(tostring(mon.species) .. " picked up an item!")
          mon.item = "POTION"
        elseif ab == "HONEY_GATHER" and not mon.item and math.random(1, 100) <= 20 then
          triggerAbilityPopup(tostring(mon.species) .. " gathered Honey!")
          mon.item = "HONEY"
        end
      end
    end
  end)

  mod.events:on("pokemon.caught", function(ev) if ev and ev.mon then getMonAbility(ev.mon) end end)
  mod.events:on("pokemon.before_give", function(ev) if ev and ev.mon then getMonAbility(ev.mon) end end)

  mod.log:info("Loaded custom abilities engine!")
end
