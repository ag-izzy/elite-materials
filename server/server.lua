local QBCore = exports['qb-core']:GetCoreObject()




RegisterServerEvent('elite-chopshop:server:ChopShop', function()
    local scr = source
    local Player = QBCore.Functions.GetPlayer(source)
	local chance = math.random(1,100)
    if chance <= 75 then 
        local item = Config.CommonItems[math.random(1, #Config.CommonItems)]
        local amount = 5
        
        Player.Functions.AddItem(item, amount)
        TriggerClientEvent("qb-inventory:client:ItemBox", src, QBCore.Shared.Items[item], "add")
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Откри нещо интересно!'})
    elseif chance >= 85 then 
        local item = Config.RareItems[math.random(1, #Config.RareItems)]
        local amount = 2
        
        Player.Functions.AddItem(item, amount)
        TriggerClientEvent("qb-inventory:client:ItemBox", src, QBCore.Shared.Items[item], "add")
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Откри нещо интересно!'})
    else
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Не ти даде нищо!'})
    end 
end)


RegisterServerEvent('elite-chopshop:server:givekey', function()
    local scr = source
    local Player = QBCore.Functions.GetPlayer(source)
    local item = "key_scrapyard"
    local amount = 1
        Player.Functions.AddItem(item, amount)
        TriggerClientEvent("qb-inventory:client:ItemBox", src, QBCore.Shared.Items[item], "add")
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Ти получи ключ!'})
end)
