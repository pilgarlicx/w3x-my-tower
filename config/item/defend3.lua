items_defend3 = {
    {
        Name = "月亮石",
        Description = "月亮光光照落地堂",
        goldcost = 40000,
        lumbercost = 0,
        Art = "ReplaceableTextures\\CommandButtons\\BTNMoonStone.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        ATTR = {
            toughness = "+600",
            natural_dark_oppose = "+50",
            natural_light_oppose = "+50"
        }
    },
    {
        Name = "魔法超能盾",
        Description = "此顿面前，魔法变得无能",
        goldcost = 75000,
        lumbercost = 0,
        Art = "ReplaceableTextures\\CommandButtons\\BTNSpellShieldAmulet.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        ATTR = {
            life = "+14000",
            resistance = "+50"
        }
    },
    {
        Name = "埃苏尼之心",
        Description = "神奇的魔力",
        goldcost = 90000,
        lumbercost = 0,
        Art = "ReplaceableTextures\\CommandButtons\\BTNHeartOfAszune.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        ATTR = {
            toughness = "+1000",
            knocking_oppose = "+50",
            violence_oppose = "+50",
            swim_oppose = "+50",
            broken_oppose = "+50",
            fetter_oppose = "+50"
        }
    },
    {
        Name = "鬼五马六吊坠",
        Description = "此吊坠就是这么叼",
        goldcost = 100000,
        lumbercost = 0,
        Art = "ReplaceableTextures\\CommandButtons\\BTNPendantOfEnergy.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        ATTR = {
            defend = "+567",
            resistance = "+23",
            toughness = "+1234",
            fetter_oppose = "+23",
            avoid = "+12",
            natural_ghost_oppose = "+56",
            natural_god_oppose = "+34"
        }
    },
    {
        Name = "绿宝石",
        Description = "绿色代表忠诚",
        goldcost = 131400,
        lumbercost = 0,
        Art = "ReplaceableTextures\\CommandButtons\\BTNGem.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        ATTR = {
            avoid = "+30",
            toughness = "+2000",
            natural_poison_oppose = "+60",
            natural_thunder_oppose = "+30"
        }
    },
    {
        Name = "红宝石",
        Description = "红色代表热情与专注",
        goldcost = 150000,
        lumbercost = 0,
        Art = "ReplaceableTextures\\CommandButtons\\BTNPhilosophersStone.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        ATTR = {
            aim = "+75",
            attack_damage_type = "+fire",
            natural_fire = "+57.5",
            natural_fire_oppose = "+80"
        }
    },
    {
        Name = "金刚石",
        Description = "由碳组成的骗局石头，自然界中最硬",
        goldcost = 188888,
        lumbercost = 0,
        Art = "ReplaceableTextures\\CommandButtons\\BTNEnchantedGemstone.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        ATTR = {
            defend = "+800",
            attack_damage_type = "+metal",
            natural_metal = "+25",
            natural_metal_oppose = "+50"
        }
    },
    {
        Name = "异体赛瑞石",
        Description = "一种奇妙的宇宙灵石，同时拥有物理及魔法两种力",
        goldcost = 200200,
        lumbercost = 0,
        Art = "ReplaceableTextures\\CommandButtons\\BTNHeartOfSearinox.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        ATTR = {
            aim = "+50",
            attack_damage_type = "+physical,magic",
            attack_effect = {
                {
                    attr = "knocking",
                    odds = 60,
                    percent = 72.5
                },
                {
                    attr = "violence",
                    odds = 60,
                    percent = 72.5
                }
            }
        }
    },
    {
        Name = "海神法杖",
        Description = "大海之主用来定海的法杖，宁静而庄严",
        goldcost = 300000,
        lumbercost = 0,
        Art = "ReplaceableTextures\\CommandButtons\\BTNPriestAdept.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        ATTR = {
            attack_damage_type = "+god,water,wind",
            natural_water = "+45",
            natural_wind = "+35",
            natural_water_oppose = "+70",
            natural_wind_oppose = "+35",
            natural_ice_oppose = "+25"
        }
    },
    {
        Name = "乱神权杖",
        Description = "半神使用的法杖，引起世界的纷争",
        goldcost = 480000,
        lumbercost = 0,
        Art = "ReplaceableTextures\\CommandButtons\\BTNStaffOfSilence.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        ATTR = {
            attack_damage_type = "+god,light,magic",
            natural_god = "+49",
            natural_god_oppose = "+49",
            str_green = "+4949",
            int_green = "+4949"
        }
    },
    {
        Name = "鬼神骨灰瓮",
        Description = "传说无论是神还是鬼，被杀死后灵魂都会收纳进此骨灰瓮，当然也像是假的",
        goldcost = 555555,
        lumbercost = 0,
        Art = "ReplaceableTextures\\CommandButtons\\BTNUrnOfKelThuzad.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        ATTR = {
            attack_damage_type = "+ghost",
            natural_ghost = "+50",
            natural_ghost_oppose = "+75",
            str_green = "+5555",
            agi_green = "+5555",
            int_green = "+5555"
        }
    },
    {
        Name = "毁灭之角",
        Description = "据说可以毁灭世界（当然是假的）",
        goldcost = 666666,
        lumbercost = 0,
        Art = "ReplaceableTextures\\CommandButtons\\BTNHornOfDoom.blp",
        powerup = 0,
        sellable = 1,
        pawnable = 1,
        droppable = 1,
        ATTR = {
            attack_damage_type = "+absolute",
            natural_god_oppose = "+16.66",
            attack_speed = "+66.6",
            damage_extent = "+66.6"
        }
    }
}
