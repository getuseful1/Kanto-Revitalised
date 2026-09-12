-- ============================================================================
-- Kanto Revitalised - NPCs & Story Dialogue Module (npcs_dialogue.lua)
-- Gen1Recomp Mod API v2
-- Defines story NPCs, Gym Leaders, Rocket Admins, and Dialogue Trees
-- ============================================================================

return function(mod)
  if not mod or not mod.content or not mod.content.map_scripts then
    error("npcs_dialogue.lua requires a valid gen1recomp mod object!")
  end

  mod.log:info("Kanto Revitalised: Registering Story Dialogue & Characters...")

  -- 1. PALLET TOWN - PROFESSOR MAHOGANY'S LAB
  mod.content.map_scripts:register("OAKS_LAB", {
    talk = {
      TEXT_OAKSLAB_OAK = {
        { "face_player" },
        { "show_text", "MAHOGANY: Welcome to\nthe Pallet Research Lab!\n\nI am Prof. Mahogany,\nOak's successor." },
        { "show_text", "15 years ago, Red and\nBlue explored Kanto.\n\nSince then, ecosystems\nhave shifted dramatically!" },
        { "show_text", "Invasive species from\nJohto and Hoenn are\nflooding our routes." },
        { "show_text", "Take this POKéDEX and\nhelp us document\nthese adaptations!" }
      },
      TEXT_OAKSLAB_RIVAL = {
        { "face_player" },
        { "show_text", "RIVAL: My uncle Blue\nwas a Gym Leader!\n\nI won't let Red's kid\nshadow my legacy!" }
      }
    }
  })

  -- 2. PALLET TOWN - RED'S HOUSE 1F & OVERWORLD
  mod.content.map_scripts:register("REDS_HOUSE_1F", {
    talk = {
      TEXT_PALLETTOWN_OAKSMOM = {
        { "face_player" },
        { "show_text", "GRANDMA: Welcome home,\ndear! You look just\nlike your father Red." },
        { "show_text", "Rest a while before\nheading out on\nyour journey." },
        { "heal_party" },
        { "show_text", "Your POKéMON are\nfully restored!\n\nBe careful out there!" }
      }
    }
  })

  mod.content.map_scripts:register("PALLET_TOWN", {
    talk = {
      TEXT_RETIRED_OAK = {
        { "face_player" },
        { "show_text", "OAK: Ah, Red's child!\nIt brings back memories." },
        { "show_text", "I'm retired now,\nresting in Pallet Town." },
        { "show_text", "Prof. Mahogany is\ndoing fine work.\n\nRemember: trust in your\nPOKéMON's abilities!" }
      }
    }
  })

  -- 3. PEWTER CITY & MT. MOON
  mod.content.map_scripts:register("PEWTER_GYM", {
    talk = {
      TEXT_PEWTERGYM_BROCK = {
        { "face_player" },
        { "show_text", "FLINT JR: I'm Flint Jr!\nMy brother Brock left\nto pursue medicine." },
        { "show_text", "I inherited Pewter Gym!\nOur Sandstorm defense\nis rock-solid!" }
      }
    }
  })

  mod.content.map_scripts:register("MT_MOON_B2F", {
    talk = {
      TEXT_MT_MOON_PETREL = {
        { "face_player" },
        { "show_text", "PETREL: Hahaha! I am\nRocket Admin Petrel!" },
        { "show_text", "Executive Vance has us\nexcavating Moon Stones\nand ancient fossils!" },
        { "show_text", "You think Red's kid\ncan stop Team Rocket?\nShow me what you've got!" }
      },
      TEXT_MT_MOON_ENGINEER = {
        { "face_player" },
        { "show_text", "MINER: Thank you for\nsaving our excavation!" },
        { "show_text", "Team Rocket was forcing\nus to dig out rare\nunderground Pokémon." },
        { "show_text", "Take this HEAVY BALL\nas a token of thanks!" }
      }
    }
  })

  -- 4. CERULEAN CITY & CERULEAN CAPE
  mod.content.map_scripts:register("CERULEAN_GYM", {
    talk = {
      TEXT_CERULEANGYM_MISTY = {
        { "face_player" },
        { "show_text", "DAISY: Welcome to\nCerulean Gym!" },
        { "show_text", "Misty is at Bill's Sea\nCottage studying coastal\necosystem shifts." },
        { "show_text", "I'm standing in as Gym\nLeader! Taste our\nrefreshing rain team!" }
      }
    }
  })

  mod.content.map_scripts:register("BILLS_HOUSE", {
    talk = {
      TEXT_BILL_SEA_COTTAGE = {
        { "face_player" },
        { "show_text", "BILL: Thanks for driving\noff Admin Proton's cargo\nsmuggling barge!" },
        { "show_text", "They were dumping exotic\nCarvanha and Houndour\ninto Cerulean Bay!" },
        { "show_text", "Take this CHOICE SPECS\nfor your trouble!" }
      },
      TEXT_CERULEAN_PROTON = {
        { "face_player" },
        { "show_text", "PROTON: Tch! Interrupted\nby a pesky brat!" },
        { "show_text", "Our cargo barge was\nimporting prime Johto\nspecimens for Vance!" },
        { "show_text", "Team Rocket will not be\nstopped by a child!" }
      }
    }
  })

  -- 5. CHAPTER 3: VERMILION CITY, DOCKS & S.S. ANNE (SGT. SPARKS & ADMIN ARIANA)
  mod.content.map_scripts:register("VERMILION_GYM", {
    talk = {
      TEXT_VERMILIONGYM_LTSURGE = {
        { "face_player" },
        { "show_text", "SGT SPARKS: Attention!\nI am Sergeant Sparks!" },
        { "show_text", "Lt. Surge promoted me to\nhead Vermilion Gym!" },
        { "show_text", "Our Electric-type team\nruns at maximum voltage\nand military speed!" },
        { "show_text", "Win the THUNDER BADGE\nto earn maritime clearance\nfor Vermilion Docks!" }
      }
    }
  })

  mod.content.map_scripts:register("SS_ANNE_DECK", {
    talk = {
      TEXT_SS_ANNE_ARIANA = {
        { "face_player" },
        { "show_text", "ARIANA: Welcome aboard\nthe Cargo Terminal!" },
        { "show_text", "I am Rocket Admin\nAriana. This freighter\nis Team Rocket's lifeline." },
        { "show_text", "We import exotic Johto\nand Hoenn Pokémon to\nfinance Executive Vance!" },
        { "show_text", "You won't ruin our\ninternational trade!" }
      }
    }
  })

  -- 6. CHAPTER 3: LAVENDER TOWN & POKÉMON TOWER (ADMIN ARCHER)
  mod.content.map_scripts:register("LAVENDER_TOWN", {
    talk = {
      TEXT_LAVENDER_FUJI = {
        { "face_player" },
        { "show_text", "MR. FUJI: Bless you,\nyoung trainer!" },
        { "show_text", "Team Rocket converted\nour sacred Pokémon Tower\ninto a Broadcast Station." },
        { "show_text", "Admin Archer used high\nfrequency signals to\ncontrol invasive packs." },
        { "show_text", "Now that you freed the\ntower, take this SILPH\nSCOPE to reveal secrets!" }
      }
    }
  })

  mod.content.map_scripts:register("POKEMONTOWER_7F", {
    talk = {
      TEXT_POKEMONTOWER_ARCHER = {
        { "face_player" },
        { "show_text", "ARCHER: Impressive...\nyou climbed all the way\nto the 7th floor broadcast room." },
        { "show_text", "I am Rocket Admin\nArcher. This radio array\ncontrols invasive packs\nacross Kanto!" },
        { "show_text", "Executive Vance's grand\nvision will not be silenced\nby Red's offspring!" }
      }
    }
  })
end
