local QBCore = exports['qb-core']:GetCoreObject()

RegisterServerEvent('elite-trashsearch:server:startDumpsterTimer', function(dumpster)
    startTimer(source, dumpster)
end)

RegisterNetEvent('elite-trashsearch:server:recieveItem', function(item, itemAmount)
    local src = source
    local ply = QBCore.Functions.GetPlayer(src)
    ply.Functions.AddItem(item, itemAmount)
end)

RegisterNetEvent('elite-trashsearch:server:givemoney', function(money)
    local src = source
    local ply = QBCore.Functions.GetPlayer(src)
    ply.Functions.AddMoney("cash", money)
end)

function startTimer(id, object)
    local timer = Config.Timer * 1000
    
    while timer > 0 do
        Wait(100)
        timer = timer - 10
        if timer == 0 then
            TriggerClientEvent('elite-trashsearch:server:removeDumpster', id, object)
        end
    end
end




