items_combo = {}
items_combo_pre = "升华"
for ilv = 1, 9 do
    local clv = ilv * 3 - 2
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "空瓶[提炼" .. ilv .. "次]",
            Description = "没什么用的空瓶",
            Art = "ReplaceableTextures\\CommandButtons\\BTNVialEmpty.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = clv,
            ATTR = {
                luck = "+" .. ilv
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "勇气勋章[提炼" .. ilv .. "次]",
            Description = "做人是需要勇气的！",
            Art = "ReplaceableTextures\\CommandButtons\\BTNMedalionOfCourage.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 1 + clv,
            ATTR = {
                defend = "+" .. (7 * ilv)
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "水瓶[提炼" .. ilv .. "次]",
            Description = "没什么用的有水的瓶子",
            Art = "ReplaceableTextures\\CommandButtons\\BTNVialFull.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 2 + clv,
            ATTR = {
                invincible = "+" .. (0.05 * ilv)
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "能量垂饰[提炼" .. ilv .. "次]",
            Description = "古老种族的玩具",
            Art = "ReplaceableTextures\\CommandButtons\\BTNPendantOfMana.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 3 + clv,
            ATTR = {
                life = "+" .. (220 * ilv)
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "水晶球[提炼" .. ilv .. "次]",
            Description = "用于占卜是不可能的",
            Art = "ReplaceableTextures\\CommandButtons\\BTNCrystalBall.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 4 + clv,
            ATTR = {
                aim = "+" .. (11 * ilv)
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "古尔丹之颅[提炼" .. ilv .. "次]",
            Description = "假的古尔丹的假的头颅",
            Art = "ReplaceableTextures\\CommandButtons\\BTNGuldanSkull.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 5 + clv,
            ATTR = {
                attack_green = "+" .. (30 * ilv),
                toughness = "+" .. (10 * ilv)
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "回避鞋子[提炼" .. ilv .. "次]",
            Description = "穿上鞋子逃得快",
            Art = "ReplaceableTextures\\CommandButtons\\BTNBootsOfSpeed.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 6 + clv,
            ATTR = {
                avoid = "+" .. (5 * ilv)
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "神秘腰带[提炼" .. ilv .. "次]",
            Description = "魔法学徒的腰带！",
            Art = "ReplaceableTextures\\CommandButtons\\BTNRunedBracers.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 7 + clv,
            ATTR = {
                resistance = "+" .. (3 * ilv)
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "艺人面具[提炼" .. ilv .. "次]",
            Description = "滑稽树下你和我",
            Art = "ReplaceableTextures\\CommandButtons\\BTNSobiMask.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 8 + clv,
            ATTR = {
                agi_green = "+" .. (26 * ilv),
                int_green = "+" .. (31 * ilv)
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "卡嘉长萧[提炼" .. ilv .. "次]",
            Description = "来点斯莫克",
            Art = "ReplaceableTextures\\CommandButtons\\BTNPipeOfInsight.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 9 + clv,
            ATTR = {
                defend = "+" .. (13 * ilv),
                resistance = "+" .. (4.5 * ilv)
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "英勇面具[提炼" .. ilv .. "次]",
            Description = "戴上的基本都是胆小鬼",
            Art = "ReplaceableTextures\\CommandButtons\\BTNHelmOfValor.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 10 + clv,
            ATTR = {
                life = "+" .. (260 * ilv),
                str_green = "+" .. (27 * ilv)
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "天灾骨钟[提炼" .. ilv .. "次]",
            Description = "叮....咚.....",
            Art = "ReplaceableTextures\\CommandButtons\\BTNBoneChimes.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 11 + clv,
            ATTR = {
                attack_green = "+" .. (156 * ilv),
                attack_speed = "+" .. (5 * ilv)
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "影子风衣[提炼" .. ilv .. "次]",
            Description = "你看不到我",
            Art = "ReplaceableTextures\\CommandButtons\\BTNCloak.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 12 + clv,
            PASSIVE = "被攻击时有10%几率隐身3秒",
            ATTR = {
                avoid = "+" .. (8.5 * ilv)
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "勉强之页[提炼" .. ilv .. "次]",
            Description = "肯定都在背着我学习",
            Art = "ReplaceableTextures\\CommandButtons\\BTNSnazzyScroll.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 13 + clv,
            ATTR = {
                exp_ratio = "+" .. (15 * ilv)
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "风暴狮角[提炼" .. ilv .. "次]",
            Description = "号召风暴卷袭的呼啸狮子号角",
            Art = "ReplaceableTextures\\CommandButtons\\BTNLionHorn.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 14 + clv,
            ATTR = {
                attack_damage_type = "+wind",
                natural_wind = "+" .. (3.3 * ilv),
                attack_speed = "+" .. (7 * ilv)
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "乌云号角[提炼" .. ilv .. "次]",
            Description = "落雨啦~收衫啦~",
            Art = "ReplaceableTextures\\CommandButtons\\BTNHornOfFog.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 15 + clv,
            ATTR = {
                attack_damage_type = "+wind,thunder",
                natural_wind = "+" .. (2.8 * ilv),
                natural_thunder = "+" .. (2.8 * ilv),
                attack_speed = "+" .. (7.5 * ilv)
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "冰冻碎片[提炼" .. ilv .. "次]",
            Description = "冰冻幽灵被冰冻而死的裂痕",
            Art = "ReplaceableTextures\\CommandButtons\\BTNIceShard.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 18 + clv,
            ATTR = {
                attack_damage_type = "+ice,ghost",
                natural_ice = "+" .. (4.8 * ilv),
                natural_ghost = "+" .. (3.2 * ilv),
                attack_effect = {
                    {
                        attr = "violence",
                        odds = 14 + ilv,
                        percent = 22 + ilv
                    }
                }
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "幻想法杖[提炼" .. ilv .. "次]",
            Description = "幻想的意思就是意淫",
            Art = "ReplaceableTextures\\CommandButtons\\BTNWand.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 20 + clv,
            ATTR = {
                attack_green = "+" .. (129 * ilv),
                int_green = "+" .. (88 * ilv)
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "白丁灯[提炼" .. ilv .. "次]",
            Description = "简单，直接，明亮",
            Art = "ReplaceableTextures\\CommandButtons\\BTNPotionOfRestoration.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 23 + clv,
            ATTR = {
                attack_damage_type = "+light",
                aim = "+" .. (10 * ilv),
                str_green = "+" .. (195 * ilv),
                int_green = "+" .. (75 * ilv)
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "刁钻魔法钥匙[提炼" .. ilv .. "次]",
            Description = "蛮狠无理的魔法钥匙",
            Art = "ReplaceableTextures\\CommandButtons\\BTNWandOfManaSteal.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 25 + clv,
            ATTR = {
                attack_damage_type = "+physical",
                attack_effect = {
                    {
                        attr = "violence",
                        odds = 14 + ilv,
                        percent = 64 + ilv
                    },
                    {
                        attr = "violence",
                        odds = 24 + ilv,
                        percent = 54 + ilv
                    }
                }
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "出其不意龙卵石[提炼" .. ilv .. "次]",
            Description = "一个很普通的龙卵石",
            Art = "ReplaceableTextures\\CommandButtons\\BTNManaStone.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 26 + clv,
            ATTR = {
                attack_damage_type = "+magic,dragon",
                natural_dragon = "+" .. (7 * ilv),
                attack_effect = {
                    {
                        attr = "violence",
                        odds = 20 + ilv,
                        percent = 45 + ilv
                    }
                }
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "其貌不扬怪兽石[提炼" .. ilv .. "次]",
            Description = "一个很平凡的怪兽石",
            Art = "ReplaceableTextures\\CommandButtons\\BTNHealthStone.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 27 + clv,
            ATTR = {
                attack_damage_type = "+magic,poison",
                natural_poison = "+" .. (5 * ilv),
                life = "+" .. (200 * ilv),
                life_back = "+" .. (0.02 * ilv)
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "泥水[提炼" .. ilv .. "次]",
            Description = "真的是用泥泡出来的水，异常美味",
            Art = "ReplaceableTextures\\CommandButtons\\BTNPotionOfDivinity.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 29 + clv,
            ATTR = {
                attack_damage_type = "+soil",
                natural_soil = "+" .. (6 * ilv),
                natural_soil_oppose = "+" .. (8.5 * ilv),
                defend = "+" .. (20 * ilv)
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "影子权杖[提炼" .. ilv .. "次]",
            Description = "长得像个弯曲的树藤",
            Art = "ReplaceableTextures\\CommandButtons\\BTNWandOfShadowSight.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 31 + clv,
            ATTR = {
                attack_damage_type = "+dark,wind",
                natural_dark_oppose = "+" .. (9 * ilv),
                natural_wind_oppose = "+" .. (9 * ilv),
                toughness = "+" .. (43 * ilv)
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "国王之冠[提炼" .. ilv .. "次]",
            Description = "硬！很硬！",
            Art = "ReplaceableTextures\\CommandButtons\\BTNHelmutPurple.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 33 + clv,
            ATTR = {
                defend = "+" .. (30 * ilv),
                toughness = "+" .. (20 * ilv),
                resistance = "+" .. (5 * ilv)
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "奶酪[提炼" .. ilv .. "次]",
            Description = "发臭的玩意",
            Art = "ReplaceableTextures\\CommandButtons\\BTNCheese.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 36 + clv,
            ATTR = {
                life = "+" .. (800 * ilv),
                life_back = "+" .. (0.03 * ilv)
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "盗贼匕首[提炼" .. ilv .. "次]",
            Description = "砍杀不骑马",
            Art = "ReplaceableTextures\\CommandButtons\\BTNDaggerOfEscape.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 40 + clv,
            ATTR = {
                attack_green = "+" .. (400 * ilv),
                agi_green = "+" .. (55 * ilv),
                avoid = "+" .. (2 * ilv)
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "咒环印[提炼" .. ilv .. "次]",
            Description = "写满符文的奇异颈环",
            Art = "war3mapImported\\icon_item_Jewelry_Ring_35.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 43 + clv,
            ATTR = {
                attack_damage_type = "+magic",
                resistance = "+" .. (8 * ilv),
                toughness = "+" .. (40 * ilv)
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "否决权杖[提炼" .. ilv .. "次]",
            Description = "我否决你否决我",
            Art = "ReplaceableTextures\\CommandButtons\\BTNWandSkull.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 46 + clv,
            ATTR = {
                attack_green = "+" .. (500 * ilv),
                int_green = "+" .. (60 * ilv),
                attack_debuff = {
                    {
                        attr = "defend",
                        odds = 40 + ilv,
                        val = 5 + ilv,
                        during = 3
                    },
                    {
                        attr = "move",
                        odds = 40 + ilv,
                        val = 30 + ilv * 5,
                        during = 3
                    }
                }
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "海王权杖[提炼" .. ilv .. "次]",
            Description = "海水不可以斗量",
            Art = "ReplaceableTextures\\CommandButtons\\BTNStaffOfNegation.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 50 + clv,
            ATTR = {
                attack_damage_type = "+water",
                natural_water = "+" .. (10 * ilv),
                natural_water_oppose = "+" .. (7.5 * ilv),
                int_green = "+" .. (140 * ilv)
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "魔法免疫项链[提炼" .. ilv .. "次]",
            Description = "免疫魔法的项链",
            Art = "ReplaceableTextures\\CommandButtons\\BTNNecklace.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 52 + clv,
            ATTR = {
                int_green = "+" .. (110 * ilv),
                resistance = "+" .. (11 * ilv)
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "速水手环[提炼" .. ilv .. "次]",
            Description = "手环如水中鱼般灵动",
            Art = "war3mapImported\\icon_item_Jewelry_Ring_57.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 54 + clv,
            ATTR = {
                attack_damage_type = "+water,magic",
                attack_speed = "+" .. (15 * ilv)
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "恶魔之钥[提炼" .. ilv .. "次]",
            Description = "恶魔的召唤",
            Art = "ReplaceableTextures\\CommandButtons\\BTNGhostKey.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 57 + clv,
            ATTR = {
                damage_extent = "+" .. (10 * ilv)
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "太阳之钥[提炼" .. ilv .. "次]",
            Description = "sunshine",
            Art = "ReplaceableTextures\\CommandButtons\\BTNSunKey.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 63 + clv,
            ATTR = {
                attack_damage_type = "+light",
                natural_light = "+" .. (12 * ilv),
                natural_light_oppose = "+" .. (8 * ilv),
                str_green = "+" .. (180 * ilv)
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "爆裂手套[提炼" .. ilv .. "次]",
            Description = "承载着烈焰的力量",
            Art = "ReplaceableTextures\\CommandButtons\\BTNAdvancedUnholyStrength.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 66 + clv,
            ATTR = {
                attack_damage_type = "+fire",
                natural_fire = "+" .. (13 * ilv),
                attack_speed = "+" .. (10 * ilv),
                attack_effect = {
                    {
                        attr = "knocking",
                        odds = 20 + ilv,
                        percent = 39 * ilv
                    }
                }
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "三珍宝戒[提炼" .. ilv .. "次]",
            Description = "三颗每秒宝石的混合精戒",
            Art = "war3mapImported\\icon_item_Jewelry_Ring_02.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 68 + clv,
            ATTR = {
                str_green = "+" .. (190 * ilv),
                agi_green = "+" .. (190 * ilv),
                int_green = "+" .. (190 * ilv)
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "黄金剑[提炼" .. ilv .. "次]",
            Description = "用99纯金铸造的大剑",
            Art = "war3mapImported\\icon_item_Sword_25.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 71 + clv,
            ATTR = {
                attack_green = "+" .. (1000 * ilv)
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "将军戒[提炼" .. ilv .. "次]",
            Description = "赐予将军的象征",
            Art = "war3mapImported\\icon_item_Jewelry_Ring_54.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 73 + clv,
            ATTR = {
                aim = "+" .. (5 * ilv),
                defend = "+" .. (40 * ilv)
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "帝王戒[提炼" .. ilv .. "次]",
            Description = "王权的象征",
            Art = "war3mapImported\\icon_item_Jewelry_Ring_55.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 75 + clv,
            ATTR = {
                attack_damage_type = "+metal",
                aim = "+" .. (5.5 * ilv),
                defend = "+" .. (50 * ilv)
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "疾风之刃[提炼" .. ilv .. "次]",
            Description = "与风同舞",
            Art = "war3mapImported\\icon_item_Sword_11.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 77 + clv,
            ATTR = {
                attack_green = "+" .. (917 * ilv),
                attack_speed = "+" .. (17 * ilv),
                natural_wind = "+" .. (7 * ilv)
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "妙道火源[提炼" .. ilv .. "次]",
            Description = "只有与火有缘人才能得到增强",
            Art = "war3mapImported\\icon_item_SummerFest_FirePotion.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 85 + clv,
            ATTR = {
                natural_fire = "+" .. (25 * ilv)
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "魔神双头战刃[提炼" .. ilv .. "次]",
            Description = "我说左，你说右，死",
            Art = "war3mapImported\\icon_item_Axe_84.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 100 + clv,
            ATTR = {
                attack_green = "+" .. (1333 * ilv),
                damage_extent = "+" .. (13 * ilv)
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "激爆狂狮斧[提炼" .. ilv .. "次]",
            Description = "力拔山河气盖世",
            Art = "war3mapImported\\icon_item_Axe_1H_BlackSmithing_03.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 130 + clv,
            ATTR = {
                attack_green = "+" .. (1666 * ilv),
                attack_effect = {
                    {
                        attr = "split",
                        odds = 90,
                        range = 600,
                        percent = 30 + ilv
                    }
                }
            }
        }
    )
    table.insert(
        items_combo,
        {
            Name = items_combo_pre .. "破坏神赤炼碎片[提炼" .. ilv .. "次]",
            Description = "被破坏到如此地步",
            Art = "war3mapImported\\icon_item_Weapon_Hand_20.blp",
            powerup = 0,
            sellable = 1,
            pawnable = 1,
            droppable = 1,
            lv = 477 + clv,
            ATTR = {
                aim = "+100",
                attack_green = "+" .. (7777 * ilv)
            }
        }
    )
end
