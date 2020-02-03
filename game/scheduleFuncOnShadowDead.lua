-- 死亡
towerShadowDead = function(evtData)
    local shadow = evtData.triggerUnit
    local u = evtData.killer
    local shadowName = hunit.getName(shadow)
    local shadowPName = cj.GetPlayerName(hplayer.players[hunit.getUserData(shadow)])
    if (u ~= nil) then
        local killerName = cj.GetPlayerName(cj.GetOwningPlayer(u))
        if (shadowPName ~= nil and shadowName ~= nil and killerName ~= nil) then
            hmsg.echo(
                hColor.sky(shadowPName) .. "的" .. hColor.yellow(shadowName) .. "被" .. hColor.green(killerName) .. "干掉了~"
            )
        end
    else
        if (shadowPName ~= nil and shadowName ~= nil) then
            hmsg.echo(hColor.sky(shadowPName) .. "的" .. hColor.yellow(shadowName) .. "被干掉了~")
        end
    end
    hunit.del(shadow, 3)
    --死亡技能
    local playerIndex = hunit.getUserData(shadow)
    local tower = game.playerTower[playerIndex]
    for ABILITY_ID, v in pairs(hslk_global.abilitiesKV) do
        if (hskill.has(tower, ABILITY_ID)) then
            local Name = v.Name
            local level = v.ABILITY_LEVEL or 1
            level = level * 2 - 1
            local val = v.Val or {}
            if (Name ~= nil) then
                if (Name == "复仇" and u ~= nil) then
                    local p = cj.GetOwningPlayer(u)
                    local pindex = hplayer.index(p)
                    local killerName = cj.GetPlayerName(p)
                    local blood = level * val[1]
                    if (shadowPName ~= nil and shadowName ~= nil) then
                        hmsg.echo(
                            hColor.green(shadowPName) ..
                                "的" ..
                                    hColor.yellow(shadowName) ..
                                        "对" .. hColor.sky(killerName) .. "施展了复仇扣了" .. hColor.red(blood) .. "点血"
                        )
                    end
                    hunit.subCurLife(game.playerTower[pindex], blood)
                end
            end
        end
    end
end
