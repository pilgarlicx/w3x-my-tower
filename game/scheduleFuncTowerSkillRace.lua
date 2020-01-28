addTowerSkillsRaceAbility = {}
addTowerSkillsRaceAttr = {}
addTowerSkillsRaceAttrPlayer = {}

handleTowerSkillsRaceAttr = function(options, cale)
    if (options == nil) then
        return
    end
    local caleChar = "sub"
    if (cale == "+") then
        caleChar = "add"
    end
    local temp = {}
    for k, v in pairs(options) do
        if (k == "attack_damage_type") then
            if (#v > 0) then
                temp[k] = cale .. string.implode(",", v)
            end
        elseif (k == "attack_debuff" or k == "attack_effect") then
            if (#v > 0) then
                temp[k] = {[caleChar] = v}
            end
        else
            if (v > 0) then
                temp[k] = cale .. v
            end
        end
    end
    return temp
end

addTowerSkillsRace = function(u)
    local currentId = hunit.getId(u)
    local slk = hslk_global.unitsKV[currentId]
    local race = slk.RACE
    if (race == "人类") then
        local val = 0.03
        hattr.set(
            u,
            0,
            {
                str_green = "+" .. (val * slk.STR),
                agi_green = "+" .. (val * slk.AGI),
                int_green = "+" .. (val * slk.INT)
            }
        )
    elseif (race == "人王") then
        local val = 0.05
        hattr.set(
            u,
            0,
            {
                str_green = "+" .. (val * slk.STR),
                agi_green = "+" .. (val * slk.AGI),
                int_green = "+" .. (val * slk.INT)
            }
        )
    elseif (race == "矮人") then
        hattr.set(
            u,
            0,
            {
                aim = "+40"
            }
        )
    elseif (race == "血精灵") then
        hattr.set(
            u,
            0,
            {
                attack_effect = {
                    add = {
                        {
                            attr = "violence",
                            odds = 15,
                            percent = 12
                        }
                    }
                }
            }
        )
    elseif (race == "兽人") then
        hattr.set(
            u,
            0,
            {
                attack_white = "+" .. (0.075 * slk.ATTACK_WHITE)
            }
        )
    elseif (race == "巨魔") then
        hattr.set(
            u,
            0,
            {
                attack_buff = {
                    add = {
                        {attr = "attack_speed", odds = 100, val = 7.5, during = 5}
                    }
                }
            }
        )
    elseif (race == "牛头人") then
        hattr.set(
            u,
            0,
            {
                attack_effect = {
                    add = {
                        {
                            attr = "knocking",
                            odds = 10,
                            percent = 25
                        }
                    }
                }
            }
        )
    elseif (race == "暗夜精灵") then
        hattr.set(
            u,
            0,
            {
                attack_damage_type = "+dark"
            }
        )
    elseif (race == "德鲁伊") then
        hattr.set(
            u,
            0,
            {
                attack_damage_type = "+wood"
            }
        )
    elseif (race == "亡灵") then
        hattr.set(
            u,
            0,
            {
                attack_damage_type = "+ice",
                attack_debuff = {
                    add = {
                        {
                            attr = "move",
                            odds = 100,
                            val = 30,
                            during = 3.0,
                            effect = "Abilities\\Spells\\Other\\FrostDamage\\FrostDamage.mdl"
                        }
                    }
                }
            }
        )
    elseif (race == "娜迦") then
        hattr.set(
            u,
            0,
            {
                attack_damage_type = "+water",
                natural_fire_oppose = "+30"
            }
        )
    elseif (race == "元素") then
        local vv = "+10"
        hattr.set(
            u,
            0,
            {
                natural_fire_oppose = vv,
                natural_soil_oppose = vv,
                natural_water_oppose = vv,
                natural_ice_oppose = vv,
                natural_wind_oppose = vv,
                natural_light_oppose = vv,
                natural_dark_oppose = vv,
                natural_wood_oppose = vv,
                natural_thunder_oppose = vv,
                natural_poison_oppose = vv,
                natural_ghost_oppose = vv,
                natural_metal_oppose = vv,
                natural_dragon_oppose = vv,
                natural_insect_oppose = vv,
                natural_god_oppose = vv
            }
        )
    elseif (race == "恶魔") then
        hattr.set(
            u,
            0,
            {
                damage_extent = "+6.66",
                attack_speed = "+6.66",
                natural_god_oppose = "-66.66"
            }
        )
    elseif (race == "神族") then
        hattr.set(
            u,
            0,
            {
                attack_damage_type = "+god"
            }
        )
    elseif (race == "昆虫") then
        hattr.set(
            u,
            0,
            {
                attack_damage_type = "+insect"
            }
        )
    elseif (race == "异兽") then
        hattr.set(
            u,
            0,
            {
                resistance = "+10",
                toughness = "+100"
            }
        )
    elseif (race == "幽魂") then
        hattr.set(
            u,
            0,
            {
                attack_damage_type = "+ghost"
            }
        )
    elseif (race == "食人魔") then
        hattr.set(
            u,
            0,
            {
                attack_effect = {
                    add = {
                        {attr = "swim", odds = 10, val = 0, during = 0.3}
                    }
                }
            }
        )
    elseif (race == "地精") then
        hattr.set(
            u,
            0,
            {
                int_green = "+" .. (0.12 * slk.INT)
            }
        )
    elseif (race == "龙人") then
        hattr.set(
            u,
            0,
            {
                attack_damage_type = "+dragon"
            }
        )
    elseif (race == "熊猫") then
        hattr.set(
            u,
            0,
            {
                life_back = "+0.05",
                str_green = "+" .. (0.08 * slk.STR)
            }
        )
    end
    --全体判定
    local playerIndex = hplayer.index(cj.GetOwningPlayer(u))
    local towers = {
        game.playerTower[playerIndex]
    }
    for i = 1, 4 do
        if
            (game.playerTowerLink[playerIndex] ~= nil and game.playerTowerLink[playerIndex][i] ~= nil and
                game.playerTowerLink[playerIndex][i].tower_level ~= nil)
         then
            table.insert(towers, game.playerTowerLink[playerIndex][i].unit)
        end
    end
    local qtys = {}
    local races = {}
    local attr = {
        life = 0,
        attack_green = 0,
        attack_speed = 0,
        aim = 0,
        defend = 0,
        resistance = 0,
        toughness = 0,
        avoid = 0,
        damage_extent = 0,
        natural_dark = 0,
        natural_god = 0,
        natural_fire_oppose = 0,
        natural_soil_oppose = 0,
        natural_water_oppose = 0,
        natural_ice_oppose = 0,
        natural_wind_oppose = 0,
        natural_light_oppose = 0,
        natural_dark_oppose = 0,
        natural_wood_oppose = 0,
        natural_thunder_oppose = 0,
        natural_poison_oppose = 0,
        natural_ghost_oppose = 0,
        natural_metal_oppose = 0,
        natural_dragon_oppose = 0,
        natural_insect_oppose = 0,
        natural_god_oppose = 0,
        attack_damage_type = {},
        attack_debuff = {},
        attack_effect = {}
    }
    local attrPlayer = {
        gold_ratio = 0,
        exp_ratio = 0
    }
    for k, v in pairs(towers) do
        local cid = hunit.getId(v)
        local r = hslk_global.unitsKV[cid].RACE
        if (qtys[r] == nil) then
            qtys[r] = 0
        end
        qtys[r] = qtys[r] + 1
        races[v] = r
        if (r == "人类") then
            if (qtys[r] == 2) then
                attr.defend = attr.defend + 5
            elseif (qtys[r] == 3) then
                attr.defend = attr.defend + 10
            elseif (qtys[r] == 4) then
                attr.defend = attr.defend + 20
            elseif (qtys[r] == 5) then
                attr.defend = attr.defend + 30
            end
        elseif (r == "人王") then
            if (qtys[r] == 1) then
                attr.defend = attr.defend + 35
            elseif (qtys[r] == 5) then
                attr.attack_green = attr.attack_green + 300
            end
        elseif (r == "矮人") then
            if (qtys[r] == 1) then
                attrPlayer.exp_ratio = attrPlayer.exp_ratio + 5
            elseif (qtys[r] == 2) then
                attrPlayer.exp_ratio = attrPlayer.exp_ratio + 7
            elseif (qtys[r] == 4) then
                attrPlayer.exp_ratio = attrPlayer.exp_ratio + 11
            end
        elseif (r == "血精灵") then
            if (qtys[r] == 2) then
                table.insert(
                    attr.attack_effect,
                    {
                        attr = "violence",
                        odds = 7,
                        percent = 15
                    }
                )
            elseif (qtys[r] == 4) then
                table.insert(
                    attr.attack_effect,
                    {
                        attr = "violence",
                        odds = 10,
                        percent = 18
                    }
                )
            elseif (qtys[r] == 5) then
                table.insert(
                    attr.attack_effect,
                    {
                        attr = "violence",
                        odds = 14,
                        percent = 23
                    }
                )
            end
        elseif (r == "兽人") then
            if (qtys[r] == 2) then
                attr.attack_green = attr.attack_green + 35
            elseif (qtys[r] == 3) then
                attr.attack_green = attr.attack_green + 85
            elseif (qtys[r] == 4) then
                attr.attack_green = attr.attack_green + 180
            elseif (qtys[r] == 5) then
                table.insert(attr.attack_damage_type, "fire")
            end
        elseif (r == "巨魔") then
            if (qtys[r] == 2) then
                attr.attack_speed = attr.attack_speed + 7.5
            elseif (qtys[r] == 3) then
                attr.attack_speed = attr.attack_speed + 10
            elseif (qtys[r] == 4) then
                attr.attack_speed = attr.attack_speed + 12
            elseif (qtys[r] == 5) then
                attr.attack_speed = attr.attack_speed + 15
            end
        elseif (r == "牛头人") then
            if (qtys[r] == 2) then
                table.insert(
                    attr.attack_effect,
                    {
                        attr = "knocking",
                        odds = 9,
                        percent = 17
                    }
                )
            elseif (qtys[r] == 3) then
                table.insert(
                    attr.attack_effect,
                    {
                        attr = "knocking",
                        odds = 13,
                        percent = 21
                    }
                )
            elseif (qtys[r] == 5) then
                table.insert(
                    attr.attack_effect,
                    {
                        attr = "knocking",
                        odds = 20,
                        percent = 33
                    }
                )
            end
        elseif (r == "暗夜精灵") then
            if (qtys[r] == 2) then
                attr.natural_dark = attr.natural_dark + 16
            elseif (qtys[r] == 3) then
                table.insert(attr.attack_damage_type, "dark")
            end
        elseif (r == "德鲁伊") then
            if (qtys[r] == 2) then
                attr.attack_speed = attr.attack_speed + 25
            elseif (qtys[r] == 4) then
                attr.attack_speed = attr.attack_speed + 10
                attr.natural_wind_oppose = attr.natural_wind_oppose + 70
            end
        elseif (r == "亡灵") then
            if (qtys[r] == 2) then
                table.insert(
                    attr.attack_debuff,
                    {
                        attr = "move",
                        odds = 100,
                        val = 4,
                        during = 2.5,
                        effect = "Abilities\\Spells\\Other\\FrostDamage\\FrostDamage.mdl"
                    }
                )
            elseif (qtys[r] == 3) then
                table.insert(
                    attr.attack_debuff,
                    {
                        attr = "move",
                        odds = 100,
                        val = 5,
                        during = 3,
                        effect = "Abilities\\Spells\\Other\\FrostDamage\\FrostDamage.mdl"
                    }
                )
            elseif (qtys[r] == 4) then
                table.insert(
                    attr.attack_debuff,
                    {
                        attr = "move",
                        odds = 100,
                        val = 6,
                        during = 3.5,
                        effect = "Abilities\\Spells\\Other\\FrostDamage\\FrostDamage.mdl"
                    }
                )
            end
        elseif (r == "娜迦") then
            if (qtys[r] == 1) then
                attr.natural_water_oppose = attr.natural_water_oppose + 5
                attr.natural_ice_oppose = attr.natural_ice_oppose + 5
            elseif (qtys[r] == 3) then
                attr.natural_water_oppose = attr.natural_water_oppose + 10
                attr.natural_ice_oppose = attr.natural_ice_oppose + 10
            elseif (qtys[r] == 4) then
                attr.natural_water_oppose = attr.natural_water_oppose + 15
                attr.natural_ice_oppose = attr.natural_ice_oppose + 15
            end
        elseif (r == "元素") then
            if (qtys[r] == 5) then
                local vv = 6.5
                attr.natural_fire_oppose = attr.natural_fire_oppose + vv
                attr.natural_soil_oppose = attr.natural_soil_oppose + vv
                attr.natural_water_oppose = attr.natural_water_oppose + vv
                attr.natural_ice_oppose = attr.natural_ice_oppose + vv
                attr.natural_wind_oppose = attr.natural_wind_oppose + vv
                attr.natural_light_oppose = attr.natural_light_oppose + vv
                attr.natural_dark_oppose = attr.natural_dark_oppose + vv
                attr.natural_wood_oppose = attr.natural_wood_oppose + vv
                attr.natural_thunder_oppose = attr.natural_thunder_oppose + vv
                attr.natural_poison_oppose = attr.natural_poison_oppose + vv
                attr.natural_ghost_oppose = attr.natural_ghost_oppose + vv
                attr.natural_metal_oppose = attr.natural_metal_oppose + vv
                attr.natural_dragon_oppose = attr.natural_dragon_oppose + vv
                attr.natural_insect_oppose = attr.natural_insect_oppose + vv
                attr.natural_god_oppose = attr.natural_god_oppose + vv
            elseif (qtys[r] == 3) then
                table.insert(attr.attack_damage_type, "dark")
                table.insert(attr.attack_damage_type, "light")
            elseif (qtys[r] == 4) then
                table.insert(attr.attack_damage_type, "fire")
                table.insert(attr.attack_damage_type, "soil")
            elseif (qtys[r] == 5) then
                local vv = 18
                attr.natural_fire_oppose = attr.natural_fire_oppose + vv
                attr.natural_soil_oppose = attr.natural_soil_oppose + vv
                attr.natural_water_oppose = attr.natural_water_oppose + vv
                attr.natural_ice_oppose = attr.natural_ice_oppose + vv
                attr.natural_wind_oppose = attr.natural_wind_oppose + vv
                attr.natural_light_oppose = attr.natural_light_oppose + vv
                attr.natural_dark_oppose = attr.natural_dark_oppose + vv
                attr.natural_wood_oppose = attr.natural_wood_oppose + vv
                attr.natural_thunder_oppose = attr.natural_thunder_oppose + vv
                attr.natural_poison_oppose = attr.natural_poison_oppose + vv
                attr.natural_ghost_oppose = attr.natural_ghost_oppose + vv
                attr.natural_metal_oppose = attr.natural_metal_oppose + vv
                attr.natural_dragon_oppose = attr.natural_dragon_oppose + vv
                attr.natural_insect_oppose = attr.natural_insect_oppose + vv
                attr.natural_god_oppose = attr.natural_god_oppose + vv
            end
        elseif (r == "恶魔") then
            if (qtys[r] == 1) then
                attr.damage_extent = attr.damage_extent + 6.66
            elseif (qtys[r] == 2) then
                attr.damage_extent = attr.damage_extent + 6.66
            elseif (qtys[r] == 3) then
                attr.damage_extent = attr.damage_extent + 6.66
            elseif (qtys[r] == 4) then
                attr.damage_extent = attr.damage_extent + 6.66
            elseif (qtys[r] == 5) then
                attr.damage_extent = attr.damage_extent + 6.66
            end
        elseif (r == "神族") then
            if (qtys[r] == 1) then
                attr.attack_speed = attr.attack_speed + 20
            elseif (qtys[r] == 2) then
                attr.natural_god = attr.natural_god + 20
            elseif (qtys[r] == 3) then
                table.insert(attr.attack_damage_type, "god")
            end
        elseif (r == "昆虫") then
            if (qtys[r] == 1) then
                attr.resistance = attr.resistance + 10
            elseif (qtys[r] == 2) then
                attr.resistance = attr.resistance + 25
            elseif (qtys[r] == 3) then
                attr.toughness = attr.toughness + 300
            end
        elseif (r == "异兽") then
            if (qtys[r] == 2) then
                table.insert(
                    attr.attack_effect,
                    {
                        attr = "split",
                        odds = 100,
                        range = 350,
                        percent = 10
                    }
                )
            elseif (qtys[r] == 3) then
                table.insert(
                    attr.attack_effect,
                    {
                        attr = "split",
                        odds = 100,
                        range = 400,
                        percent = 15
                    }
                )
            elseif (qtys[r] == 4) then
                table.insert(
                    attr.attack_effect,
                    {
                        attr = "split",
                        odds = 100,
                        range = 500,
                        percent = 20
                    }
                )
            end
        elseif (r == "幽魂") then
            if (qtys[r] == 2) then
                attr.avoid = attr.avoid + 10
            elseif (qtys[r] == 2) then
                attr.avoid = attr.avoid + 20
            elseif (qtys[r] == 3) then
                attr.avoid = attr.avoid + 25
            end
        elseif (r == "食人魔") then
            if (qtys[r] == 2) then
                table.insert(
                    attr.attack_effect,
                    {
                        attr = "swim",
                        odds = 10,
                        during = 0.3
                    }
                )
            elseif (qtys[r] == 5) then
                table.insert(
                    attr.attack_effect,
                    {
                        attr = "swim",
                        odds = 20,
                        during = 1.0
                    }
                )
            end
        elseif (r == "地精") then
            if (qtys[r] == 1) then
                attrPlayer.gold_ratio = attrPlayer.gold_ratio + 5
            elseif (qtys[r] == 2) then
                attrPlayer.gold_ratio = attrPlayer.gold_ratio + 8
            elseif (qtys[r] == 3) then
                attrPlayer.gold_ratio = attrPlayer.gold_ratio + 11
            end
        elseif (r == "龙人") then
            if (qtys[r] == 1) then
                attr.attack_green = attr.attack_green + 40
            elseif (qtys[r] == 2) then
                table.insert(attr.attack_damage_type, "thunder")
            elseif (qtys[r] == 3) then
                table.insert(attr.attack_damage_type, "wind")
            end
        elseif (r == "熊猫") then
            if (qtys[r] == 1) then
                attr.life = attr.life + 150
            elseif (qtys[r] == 2) then
                attr.life = attr.life + 250
            elseif (qtys[r] == 3) then
                attr.life = attr.life + 300
            elseif (qtys[r] == 4) then
                attr.life = attr.life + 350
            end
        end
    end
    if (addTowerSkillsRaceAttr[playerIndex] == nil) then
        addTowerSkillsRaceAttr[playerIndex] = {}
        addTowerSkillsRaceAttrPlayer[playerIndex] = {}
    else
        --玩家扣除
        if (addTowerSkillsRaceAttrPlayer[playerIndex].gold_ratio > 0) then
            hplayer.subGoldRatio(hplayer.players[playerIndex], addTowerSkillsRaceAttrPlayer[playerIndex].gold_ratio, 0)
        end
        if (addTowerSkillsRaceAttrPlayer[playerIndex].exp_ratio > 0) then
            hplayer.subExpRatio(hplayer.players[playerIndex], addTowerSkillsRaceAttrPlayer[playerIndex].exp_ratio, 0)
        end
    end
    --整理旧属性
    local oldAttrs, newAttrs
    if (addTowerSkillsRaceAttr[playerIndex] ~= nil) then
        oldAttrs = handleTowerSkillsRaceAttr(addTowerSkillsRaceAttr[playerIndex], "-")
    end
    --整理新属性
    newAttrs = handleTowerSkillsRaceAttr(attr, "+")
    --新旧交替
    addTowerSkillsRaceAttr[playerIndex] = attr
    addTowerSkillsRaceAttrPlayer[playerIndex] = attrPlayer
    --玩家增加
    if (attrPlayer.gold_ratio > 0) then
        hplayer.addGoldRatio(hplayer.players[playerIndex], attrPlayer.gold_ratio, 0)
    end
    if (attrPlayer.exp_ratio > 0) then
        hplayer.addExpRatio(hplayer.players[playerIndex], attrPlayer.exp_ratio, 0)
    end
    for k, v in pairs(towers) do
        if (addTowerSkillsRaceAbility[v] ~= nil) then
            hskill.del(v, addTowerSkillsRaceAbility[v], 0)
        end
        if (v ~= u and table.len(oldAttrs) > 0) then
            hattr.set(v, 0, oldAttrs)
        end
        local index = races[v] .. qtys[races[v]]
        local ab = game.thisUnitRaceAbilities[index].ABILITY_ID
        addTowerSkillsRaceAbility[v] = ab
        hskill.add(v, ab, 0)
        if (table.len(newAttrs) > 0) then
            hattr.set(v, 0, newAttrs)
        end
    end
end
