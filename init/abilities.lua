local AB_HOTKEY_KV = {
    Q = { 0, 0 },
    W = { 1, 0 },
    E = { 2, 0 },
    R = { 3, 0 },
    T = { 0, 1 },
    Y = { 1, 1 },
    U = { 2, 1 },
    I = { 3, 1 },
}

local red = {
    "Q", "W", "E", "R",
}
local yellow = {
    "T", "Y", "U", "I",
}

-- abilities
-- 处理空技能槽
for _, v in ipairs(red) do
    local obj = slk.ability.Aamk:new("abilities_empty_" .. v)
    local Name = "红技能槽 - [" .. hColor.red(v) .. "]"
    local Tip = "红技能槽 - [" .. hColor.red(v) .. "]"
    obj.Name = Name
    obj.Tip = Tip
    obj.Ubertip = "使用技能书可以习得新的红点技能"
    obj.Buttonpos1 = AB_HOTKEY_KV[v][1]
    obj.Buttonpos2 = AB_HOTKEY_KV[v][2]
    obj.hero = 0
    obj.levels = 1
    obj.DataA1 = 0
    obj.DataB1 = 0
    obj.DataC1 = 0
    obj.Art = "war3mapImported\\icon_pas_Skillz.blp"
    local ab = {
        abilityID = obj:get_id(),
        abilityST = v,
    }
    ?>
call SaveStr(hash_myslk, StringHash("abilities_empty"), StringHash("<?=v?>"), "<?=hSys.addslashes(json.stringify(ab))?>")
<?
end
for _, v in ipairs(yellow) do
    local obj = slk.ability.Aamk:new("abilities_empty_" .. v)
    local Name = "黄技能槽 - [" .. hColor.yellow(v) .. "]"
    local Tip = "黄技能槽 - [" .. hColor.yellow(v) .. "]"
    obj.Name = Name
    obj.Tip = Tip
    obj.Ubertip = "使用技能书可以习得新的黄点技能"
    obj.Buttonpos1 = AB_HOTKEY_KV[v][1]
    obj.Buttonpos2 = AB_HOTKEY_KV[v][2]
    obj.hero = 0
    obj.levels = 1
    obj.DataA1 = 0
    obj.DataB1 = 0
    obj.DataC1 = 0
    obj.Art = "ReplaceableTextures\\PassiveButtons\\PASBTNStatUp.blp"
    local ab = {
        abilityID = obj:get_id(),
        abilityST = v,
    }
    ?>
call SaveStr(hash_myslk, StringHash("abilities_empty"), StringHash("<?=v?>"), "<?=hSys.addslashes(json.stringify(ab))?>")
<?
end

-- 处理技能(书)数据
for _, v in ipairs(abilities) do
    -- 这一轮是技能等级的
    for level = 1, 20, 1 do
        -- 这一轮是处理类型的
        local AbSite = red
        if (v.AbSite == "yellow") then
            AbSite = yellow
        elseif (v.AbSite == "all") then
            AbSite = hSys.mergeTable(red, yellow)
        end
        local Ubertip = v.Ubertip or ""
        v.Val = v.Val or {}
        if (Ubertip ~= "") then
            for vali = 1, 5, 1 do
                local valmatch = "{val#" .. vali .. "}"
                if (v.Val[vali] == nil) then
                    v.Val[vali] = 0
                end
                if (string.find(Ubertip, valmatch) ~= nil) then
                    Ubertip = string.gsub(Ubertip, valmatch, "|cffffcc00" .. v.Val[vali] .. "|r")
                else
                    vali = 99
                end
            end
        end
        for _, s in ipairs(AbSite) do
            local obj = slk.ability.Aamk:new("abilities_" .. v.Name .. "_" .. level .. "_" .. s)
            local Name = v.Name .. "[Lv" .. level .. "]" .. "[" .. s .. "]"
            local Tip = v.Name .. " - [|cffffcc00等级 " .. level .. "|r]" .. " - [|cffffcc00" .. s .. "|r]"
            obj.Name = Name
            obj.Tip = Tip
            obj.Ubertip = Ubertip
            obj.Buttonpos1 = AB_HOTKEY_KV[s][1]
            obj.Buttonpos2 = AB_HOTKEY_KV[s][2]
            obj.hero = 0
            obj.levels = 1
            obj.DataA1 = 0
            obj.DataB1 = 0
            obj.DataC1 = 0
            obj.Art = v.Art
            v.abilityID = obj:get_id()
            v.abilityST = s
            ?>
        call SaveStr(hash_myslk, StringHash("abilities"), StringHash("<?=v.Name?>"), "<?=hSys.addslashes(json.stringify(v))?>")
        <?
        end
        if (v.AbSite ~= "all") then
            -- 物品
            local iobj = slk.item.gold:new("abilities_items_" .. v.Name .. "_" .. level)
            local goldcost = level * 100
            iobj.abilList = ""
            if (v.AbSite == 'red') then
                iobj.Name = "[技能书·红]《等级" .. level .. "的" .. v.Name .. "》"
                iobj.Tip = "点击学习红技能书：|cffffcc00《等级" .. level .. "的" .. v.Name .. "》|r"
                iobj.file = "Objects\\InventoryItems\\tomeRed\\tomeRed.mdl"
            elseif (v.AbSite == 'yellow') then
                iobj.Name = "[技能书·黄]《等级" .. level .. "的" .. v.Name .. "》"
                iobj.Tip = "点击学习黄技能书：|cffffcc00《等级" .. level .. "的" .. v.Name .. "》|r"
                iobj.file = "Objects\\InventoryItems\\tome\\tome.mdl"
            end
            iobj.UberTip = "使用技能书学习技能：|n" .. Ubertip
            iobj.Description = "技能书：" .. Ubertip
            iobj.Art = v.Art
            iobj.scale = 1.00
            iobj.goldcost = goldcost
            iobj.lumbercost = 0
            iobj.sellable = 1
            iobj.cooldownID = ""
            iobj.class = "Charged"
            iobj.powerup = 0
            local hitem = {
                Name = v.Name,
                Art = v.Art,
                goldcost = goldcost,
                lumbercost = 0,
                itemID = iobj:get_id(),
                abilityID = v.abilityID,
                abilityLV = level,
            }
            ?>
        call SaveStr(hash_myslk, StringHash("abilitiesItems"), StringHash("<?=v.Name?>"), "<?=hSys.addslashes(json.stringify(hitem))?>")
        <?
        end
    end
end