local QBCore = exports['qb-core']:GetCoreObject()

---------------------------------
----- Блип --------------

Citizen.CreateThread(function()
    local blip = AddBlipForCoord(515.81, 169.16, 99.37)
    
    SetBlipSprite (blip, 280)
    SetBlipDisplay(blip, 4)
    SetBlipScale  (blip, 0.6)
    SetBlipColour (blip, 30)
    SetBlipAsShortRange(blip, true)

    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString('Диего')
    EndTextCommandSetBlipName(blip)

    
end)

--------------------

RegisterNetEvent('elite-chopshop:client:ChopShop')
AddEventHandler("elite-chopshop:client:ChopShop", function()
    local playerPed = PlayerPedId()
    if IsPedInAnyVehicle(playerPed, false) then
        exports['qb-dispatch']:chopshop(chopshop)
    QBCore.Functions.Progressbar("ChopShop", "Разфасоване на МПС..", 25000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() 
        local veh = GetVehiclePedIsIn(PlayerPedId(),true)
        local playerPed = PlayerPedId()
        local success = GetVehiclePedIsIn() 
   if success then
        DeleteVehicle(veh)
        DeleteEntity(veh)
        TriggerServerEvent("elite-chopshop:server:ChopShop")
        exports['mythic_notify']:DoLongHudText('inform', 'Чичак: Автомобилът е готов!')


    else
        exports['mythic_notify']:DoLongHudText('error', 'Чичак: Не успя да го разглобиш!')
        end
    end)
    else
        exports['mythic_notify']:DoLongHudText('error', 'Чичак: Нямаш автомобил... какво искаш да разглабям?!')
    end

    
end)



RegisterNetEvent('pesho:work', function()
    exports['qb-menu']:openMenu({
       
        {
            header = "Отказ",
            txt = "Отказвам се!",
            params = {
                event = "qb-menu:closeMenu",
            }
        },
        {
            header = "Разглабяне на автомобили",
            txt = "Ще получиш по телефона имейл с подробна информация",
            params = {
                event = "chopshop:phoneemail",
            }
        },
       
        
       
        
    })
end)

RegisterNetEvent('chopshop:phoneemail', function(PhoneEmail)
    exports['mythic_notify']:DoHudText('error', 'Изчакай... след малко ще ти изпратя имейла!')
	SetTimeout(math.random(10000, 20000), function()
        emailSend = false
        exports['mythic_notify']:DoHudText('error', 'Получи имейл от Диего!')
        TriggerServerEvent('qb-phone:server:sendNewMail', {
            sender = "Диего",
            subject = "Разфасоване на автомобили",
            message = "Как е ,братле? Разбрах ,че искаш да бачкаш за мен затова бих ти предложил да разглабяш коли на Sandy Shores (автоморгата) ,но за да разглабяш коли ще трябва да внимаваш с куките ,че тия дебнат на всеки ъгъл . Лека работа и се надявам пак да бачкаш за мен!",
            button = {}
        })
        TriggerServerEvent('elite-chopshop:server:givekey')
    end)
end)




