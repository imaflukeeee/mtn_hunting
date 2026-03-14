local VorpCore = exports.vorp_core:GetCore()

local function giveReward(context, data, skipfinal)
    local _source = source
    local Character = VorpCore.getUser(_source).getUsedCharacter

    if Config.joblocked then -- security check
        for index, value in ipairs(Config.Butchers) do
            if Character.job == value.butcherjob then
                TriggerClientEvent("vorp_hunting:lock", _source)
                -- [MODIFIED] เปลี่ยนเป็น mtn_notify
                TriggerClientEvent("mtn_notify:send", _source, { 
                    title = "", 
                    description = "is job locked", 
                    placement = "middle-right", 
                    duration = 4000, 
                    progress = { enabled = true, type = 'bar', color = '#FFFFFF' } 
                })
                break
            end
        end
    end

    local money, gold, rolPoints, xp = 0, 0, 0, 0
    local givenItem, givenAmount, givenDisplay, givenChance = {}, {}, {}, {}
    local animal, found
    if context == "skinned" then
        animal = Config.SkinnableAnimals[data.model]
        if animal then
            found = true
            givenItem = animal.givenItem or {}
            givenAmount = animal.givenAmount or {}
            givenDisplay = animal.givenDisplay or {}
            givenChance = animal.givenChance or {} 
            money = animal.money or 0
            gold = animal.gold or 0
            rolPoints = animal.rolPoints or 0
            xp = animal.xp or 0
        end
    elseif context == "pelt" then
        animal = Config.Animals[data.model]
        if animal then
            found = true
            money = animal.money or 0
            gold = animal.gold or 0
            rolPoints = animal.rolPoints or 0
            xp = animal.xp or 0

            local multiplier = 1.0
            if (animal.poorQualityMultiplier and animal.poor) and (data.quality == animal.poor) then
                multiplier = animal.poorQualityMultiplier
            elseif (animal.goodQualityMultiplier and animal.good) and (data.quality == animal.good) then
                multiplier = animal.goodQualityMultiplier
            elseif (animal.perfectQualityMultiplier and animal.perfect) and (data.quality == animal.perfect) then
                multiplier = animal.perfectQualityMultiplier
            end

            money = money * multiplier
            gold = gold * multiplier
            rolPoints = rolPoints * multiplier
            xp = xp * multiplier
        end
    elseif context == "carcass" then
        animal = Config.Animals[data.model]
        if animal then
            found = true
            givenItem = animal.givenItem or {}
            givenAmount = animal.givenAmount or {}
            givenDisplay = animal.givenDisplay or {}
            givenChance = animal.givenChance or {} 
            money = animal.money or 0
            gold = animal.gold or 0
            rolPoints = animal.rolPoints or 0
            xp = animal.xp or 0
        end
    end

    if found then
        local monies = {}
        local moneylinux = (math.floor(money * 100) / 100)
        if Config.Linux == true then
            if money ~= 0 then
                table.insert(monies, Config.Language.dollar .. moneylinux)
                Character.addCurrency(0, money)
            end
        else
            if money ~= 0 then
                table.insert(monies, Config.Language.dollar .. money)
                Character.addCurrency(0, money)
            end
        end

        if gold ~= 0 then
            table.insert(monies, gold .. " gold")
            Character.addCurrency(1, gold)
        end

        if rolPoints ~= 0 then
            table.insert(monies, rolPoints .. " rolPoints")
            Character.addCurrency(2, rolPoints)
        end

        if xp ~= 0 then
            Character.addXp(xp)
        end

        local Webhook = ""  -- Set your webhook URL here


        if #monies > 0 then
            VorpCore.AddWebhook("Hunting", Webhook,
                GetPlayerName(_source) .. " " .. "player received" .. table.concat(monies, ", "), nil, nil, nil, nil, nil)
            
            -- [MODIFIED] แจ้งเตือนเวลาขายของได้เงิน
            TriggerClientEvent("mtn_notify:send", _source, { 
                title = "", 
                description = Config.Language.AnimalSold .. table.concat(monies, ", "), 
                placement = "middle-right", 
                duration = 4000, 
                progress = { enabled = true, type = 'bar', color = '#FFFFFF' } 
            })
        end

        if not skipfinal then
            local entity1 = NetworkGetEntityFromNetworkId(data.netid)
            DeleteEntity(entity1)
            TriggerClientEvent("vorp_hunting:finalizeReward", _source, data.entity, data.horse)
        end

        if #givenItem ~= #givenAmount then
            print('Error: Please ensure givenItem and givenAmount have the same length in the items config.')
        elseif (givenItem ~= nil) and (#givenItem > 0) then
            local formattedGivenItems = {}
            local total = 0

            for k, v in ipairs(givenItem) do
                local chance = givenChance[k] or 100

                if math.random(1, 100) <= chance then
                    local nmb = 0

                    if type(givenAmount[k]) == "table" then
                        nmb = math.random(tonumber(givenAmount[k][1]) or 0, tonumber(givenAmount[k][2]) or 1)
                    else
                        if givenAmount[k] > 0 then
                            nmb = givenAmount[k]
                        else
                            nmb = math.random(Config.ItemQuantity.Min, Config.ItemQuantity.Max)
                        end
                    end

                    formattedGivenItems[k] = {
                        nmb = nmb,
                        item = v
                    }

                    total = total + nmb

                    -- Check if there is enough to add, if not send message
                    local canCarryInv = exports.vorp_inventory:canCarryItem(_source, v, nmb)
                    if not canCarryInv then
                        -- [MODIFIED] แจ้งเตือนกระเป๋าเต็ม
                        TriggerClientEvent("mtn_notify:send", _source, { 
                            title = "", 
                            description = Config.Language.FullInventory, 
                            placement = "middle-right", 
                            duration = 4000, 
                            progress = { enabled = true, type = 'bar', color = '#FF0000' } 
                        })
                        TriggerClientEvent("vorp_hunting:unlock", _source)
                        return
                    end
                end 
            end

            -- Give items
            local givenMsg = ""

            for k, v in pairs(formattedGivenItems) do
                -- [MODIFIED] ดึงชื่อจาก givenDisplay มาใช้ตรงนี้ (ถ้าไม่มีให้ใช้ v.item แทน)
                local itemName = givenDisplay[k] or v.item
                
                exports.vorp_inventory:addItem(_source, v.item, v.nmb)
                
                -- [MODIFIED] เด้งแจ้งเตือนเป็นไอเทมทีละชิ้นเข้ากระเป๋า แบบเดียวกับตกปลา
                TriggerClientEvent("mtn_notify:sendItem", _source, {
                    title = "Added",
                    description = v.nmb .. "x " .. itemName,
                    icon = "nui://vorp_inventory/html/img/items/" .. v.item .. ".png",
                    placement = "bottom-right",
                    titleColor = "#009900",
                    duration = 3500
                })
                
                -- เก็บ string ไว้ส่ง Webhook อย่างเดียว
                if givenMsg == "" then
                    givenMsg = itemName .. ((v.nmb > 1) and "s" or "")
                else
                    givenMsg = givenMsg .. Config.Language.join .. itemName .. ((v.nmb > 1) and "s" or "")
                end
            end

            if givenMsg ~= "" and #formattedGivenItems > 0 then
                VorpCore.AddWebhook("Hunting", Webhook, GetPlayerName(_source) .. " player received: " .. givenMsg)
            end
        end
    end
    TriggerClientEvent("vorp_hunting:unlock", _source)
end

RegisterServerEvent("vorp_hunting:giveReward", giveReward)