QB = nil
QBCore = nil

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(10)
        if QBCore == nil then
            TriggerEvent('QBCore:GetObject', function(obj) QBCore = obj end)
            Citizen.Wait(200)
        end
    end
end)

Citizen.CreateThread(function()
    while QB == nil do
        TriggerEvent('QB:getSharedObject', function(obj) QB = obj end)
        Citizen.Wait(0)
    end
end)

RegisterNetEvent("Cards:Client:OpenPack")
AddEventHandler("Cards:Client:OpenPack", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "opening pack..", 5000, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
        disableInventory = true,
    }, {}, {}, {}, function()-- Done
       TriggerServerEvent("Cards:Server:rewarditem")
       TriggerServerEvent("Cards:Server:rewarditem")
       TriggerServerEvent("Cards:Server:rewarditem")
       TriggerServerEvent("Cards:Server:rewarditem")
       
    end)
end)

RegisterNetEvent("Cards:client:buystoragebox")
AddEventHandler("Cards:client:buystoragebox", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "paying for TCG Storage box..", 3000, false, true, {
        disableMovement = true,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,0
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("Cards:server:storageboxbuy")
        Citizen.Wait(500)
    TriggerEvent('QBCore:Notify', source, 'You got a Card Storage Box!')
    end)
end)

RegisterNetEvent("Cards:Client:OpenCards")
AddEventHandler("Cards:Client:OpenCards", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "opening packs..", 5000, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
      end)
end)

Config.Cardshop = {
    vector3(174.74, -1321.7, 29.36),
    vector3(196.83, -873.87, 30.76)
}

Config.Badges = {
vector3(-1844.97, -1195.94, 19.20),
vector3(-2588.14, 1911.6, 167.6),
vector3(-758.68, -1046.87, 13.6),
vector3(2944.06, 2747.0, 43.5),
vector3(2729.21, 1577.74, 66.54),
vector3(387.26, 3585.02, 33.29),
vector3(-86.19, 834.38, 235.92),
vector3(282.24, 6789.04, 15.7)
}

function CreateBlips()
    for k, v in ipairs(Config.Badges) do
        local blip = AddBlipForCoord(v)
        SetBlipAsShortRange(blip, true)
        SetBlipSprite(blip, 73)
        SetBlipColour(blip, 84)
        SetBlipScale(blip, 0.6)
        SetBlipDisplay(blip, 6)
  
        BeginTextCommandSetBlipName('STRING')
        AddTextComponentString('Badge')
        EndTextCommandSetBlipName(blip)
    end

    for k, v in ipairs(Config.CardShop) do
        local blip = AddBlipForCoord(v)
        SetBlipAsShortRange(blip, true)
        SetBlipSprite(blip, 587)
        SetBlipColour(blip, 84)
        SetBlipScale(blip, 0.6)
        SetBlipDisplay(blip, 6)
     
        BeginTextCommandSetBlipName('STRING')
        AddTextComponentString('Card Shop')
        EndTextCommandSetBlipName(blip)
    end
end


function Draw3DText(x, y, z, scl_factor, text)
    local onScreen, _x, _y = World3dToScreen2d(x, y, z)
    local p = GetGameplayCamCoords()
    local distance = GetDistanceBetweenCoords(p.x, p.y, p.z, x, y, z, 1)
    local scale = (1 / distance) * 2
    local fov = (1 / GetGameplayCamFov()) * 100
    local scale = scale * fov * scl_factor
    if onScreen then
        SetTextScale(0.0, 0.3)
        SetTextFont(0)
        SetTextProportional(1)
        SetTextColour(255, 255, 255, 255)
        SetTextDropshadow(0, 0, 0, 0, 255)
        SetTextEdge(2, 0, 0, 0, 150)
        SetTextDropShadow()
        SetTextOutline()
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
        DrawText(_x, _y)
    end
end
--add in DRAWMARKER if not using peds--
local distance_until_text_disappears = 50

Citizen.CreateThread(
    function()
        while true do
            Citizen.Wait(0)
            if Vdist2(GetEntityCoords(PlayerPedId(), false), v1) < distance_until_text_disappears then
                DrawMarker(2, 200.5, -873.09, 30.91, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.25, 0.2, 0.1, 255, 255, 255, 155, 0, 0, 0, 1, 0, 0, 0)
                Draw3DText(v1.x, v1.y, v1.z, 1.5, 'Press [~g~E~w~] to trade 8 Badges for Trophy Badge')
                    if IsControlJustPressed(0, 38) then
                          TriggerEvent("Cards:client:trophy")
                    end
            end
        end
   end)


Citizen.CreateThread(
    function()
        while true do
            Citizen.Wait(0)
            if Vdist2(GetEntityCoords(PlayerPedId(), false), va1) < distance_until_text_disappears then
              --  DrawMarker(2, -1844.97, -1195.94, 19.00, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.25, 0.2, 0.1, 255, 255, 255, 155, 0, 0, 0, 1, 0, 0, 0)
                Draw3DText(va1.x, va1.y, va1.z, 1.5, 'Press [~g~E~w~] to trade 6 Cards for a Cascade Badge')
                                if IsControlJustPressed(0, 38) then
                            TriggerEvent("Cards:client:cascade")
            end
        end
    end
end)

Citizen.CreateThread(
    function()
        while true do
            Citizen.Wait(0)
            if Vdist2(GetEntityCoords(PlayerPedId(), false), va2) < distance_until_text_disappears then
            --    DrawMarker(2, -2588.14, 1911.6, 167.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.25, 0.2, 0.1, 255, 255, 255, 155, 0, 0, 0, 1, 0, 0, 0)
                Draw3DText(va2.x, va2.y, va2.z, 1.5, 'Press [~g~E~w~] to trade 6 Cards for a Earth Badge')
                                if IsControlJustPressed(0, 38) then
                            TriggerEvent("Cards:client:earth")
            end
        end
    end
end)

Citizen.CreateThread(
    function()
        while true do
            Citizen.Wait(0)
            if Vdist2(GetEntityCoords(PlayerPedId(), false), va3) < distance_until_text_disappears then
            --    DrawMarker(2, -758.68, -1046.87, 13.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.25, 0.2, 0.1, 255, 255, 255, 155, 0, 0, 0, 1, 0, 0, 0)
                Draw3DText(va3.x, va3.y, va3.z, 1.5, 'Press [~g~E~w~] to trade 6 Cards for a Soul Badge')
                                if IsControlJustPressed(0, 38) then
                            TriggerEvent("Cards:client:soul")
            end
        end
    end
end)

Citizen.CreateThread(
    function()
        while true do
            Citizen.Wait(0)
            if Vdist2(GetEntityCoords(PlayerPedId(), false), va4) < distance_until_text_disappears then
            --    DrawMarker(2, va4.x, va4.y, 43.3, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.25, 0.2, 0.1, 255, 255, 255, 155, 0, 0, 0, 1, 0, 0, 0)
                Draw3DText(va4.x, va4.y, va4.z, 1.5, 'Press [~g~E~w~] to trade 6 Cards for a Volcano Badge')
                                if IsControlJustPressed(0, 38) then
                            TriggerEvent("Cards:client:volcano")
            end
        end
    end
end)

Citizen.CreateThread(
    function()
        while true do
            Citizen.Wait(0)
            if Vdist2(GetEntityCoords(PlayerPedId(), false), va5) < distance_until_text_disappears then
            --    DrawMarker(2, va5.x, va5.y, 66.35, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.25, 0.2, 0.1, 255, 255, 255, 155, 0, 0, 0, 1, 0, 0, 0)
                Draw3DText(va5.x, va5.y, va5.z, 1.5, 'Press [~g~E~w~] to trade 6 Cards for a Thunder Badge')
                                if IsControlJustPressed(0, 38) then
                            TriggerEvent("Cards:client:thunder")
            end
        end
    end
end)

Citizen.CreateThread(
    function()
        while true do
            Citizen.Wait(0)
            if Vdist2(GetEntityCoords(PlayerPedId(), false), va6) < distance_until_text_disappears then
             --   DrawMarker(2, va6.x, va6.y, 33.09, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.25, 0.2, 0.1, 255, 255, 255, 155, 0, 0, 0, 1, 0, 0, 0)
                Draw3DText(va6.x, va6.y, va6.z, 1.5, 'Press [~g~E~w~] to trade 6 Cards for a Marsh Badge')
                                if IsControlJustPressed(0, 38) then
                            TriggerEvent("Cards:client:marsh")
            end
        end
    end
end)

Citizen.CreateThread(
    function()
        while true do
            Citizen.Wait(0)
            if Vdist2(GetEntityCoords(PlayerPedId(), false), va7) < distance_until_text_disappears then
            --    DrawMarker(2, va7.x, va7.y, 235.72, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.25, 0.2, 0.1, 255, 255, 255, 155, 0, 0, 0, 1, 0, 0, 0)
                Draw3DText(va7.x, va7.y, va7.z, 1.5, 'Press [~g~E~w~] to trade 6 Cards for a Rainbow Badge')
                                if IsControlJustPressed(0, 38) then
                            TriggerEvent("Cards:client:rainbow")
            end
        end
    end
end)

Citizen.CreateThread(
    function()
        while true do
            Citizen.Wait(0)
            if Vdist2(GetEntityCoords(PlayerPedId(), false), va8) < distance_until_text_disappears then
            --    DrawMarker(2, va8.x, va8.y, 15.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.25, 0.2, 0.1, 255, 255, 255, 155, 0, 0, 0, 1, 0, 0, 0)
                Draw3DText(va8.x, va8.y, va8.z, 1.5, 'Press [~g~E~w~] to trade 6 Cards for a Boulder Badge')
                                if IsControlJustPressed(0, 38) then
                            TriggerEvent("Cards:client:boulder")
            end
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(10)
        if QBCore == nil then
            TriggerEvent('QBCore:GetObject', function(obj) QBCore = obj end)
            Citizen.Wait(200)
        end
    end
end)

Citizen.CreateThread(function()
    while QB == nil do
        TriggerEvent('QB:getSharedObject', function(obj) QB = obj end)
        Citizen.Wait(0)
    end
end)

RegisterNetEvent("Cards:client:buypack")
AddEventHandler("Cards:client:buypack", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "paying for pack..", 3000, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("Cards:server:packbuy")
        Citizen.Wait(500)
    TriggerEvent('QBCore:Notify', source, 'You got a Booster Pack!')
    end)
end)

RegisterNetEvent("Cards:client:buybox")
AddEventHandler("Cards:client:buybox", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "paying for box..", 3000, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,0
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("Cards:server:boxbuy")
        Citizen.Wait(500)
    TriggerEvent('QBCore:Notify', source, 'You got a Booster Box!')
    end)
end)

RegisterNetEvent("Cards:client:boulder")
AddEventHandler("Cards:client:boulder", function(itemName)
		QBCore.Functions.Progressbar("drink_something", "obtaining badge..", 5000, false, true, {
			disableMovement = true,
			disableCarMovement = false,
			disableMouse = false,
			disableCombat = true,
    }, {}, {}, {}, function() -- Done
             Citizen.Wait(50)
        TriggerServerEvent("Cards:server:boulder")
        end)
end)

RegisterNetEvent("Cards:client:cascade")
AddEventHandler("Cards:client:cascade", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "obtaining badge..", 5000, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("Cards:server:cascade")
             Citizen.Wait(50)
        TriggerEvent('QBCore:Notify', source, 'You got a Cascade Badge!')
    end)
end)

RegisterNetEvent("Cards:client:thunder")
AddEventHandler("Cards:client:thunder", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "obtaining badge..", 5000, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("Cards:server:thunder")
             Citizen.Wait(4000)
        TriggerEvent('QBCore:Notify', source, 'You got a Thunder Badge!')
    end)
end)

RegisterNetEvent("Cards:client:rainbow")
AddEventHandler("Cards:client:rainbow", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "obtaining badge..", 5000, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("Cards:server:rainbow")
             Citizen.Wait(4000)
        TriggerEvent('QBCore:Notify', source, 'You got a Rainbow Badge!')
    end)
end)

RegisterNetEvent("Cards:client:soul")
AddEventHandler("Cards:client:soul", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "obtaining badge..", 5000, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("Cards:server:soul")
             Citizen.Wait(4000)
        TriggerEvent('QBCore:Notify', source, 'You got a Soul Badge!')
    end)
end)

RegisterNetEvent("Cards:client:marsh")
AddEventHandler("Cards:client:marsh", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "obtaining badge..", 5000, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("Cards:server:marsh")
             Citizen.Wait(4000)
        TriggerEvent('QBCore:Notify', source, 'You got a Marsh Badge!')
    end)
end)

RegisterNetEvent("Cards:client:volcano")
AddEventHandler("Cards:client:volcano", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "obtaining badge..", 5000, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("Cards:server:volcano")
             Citizen.Wait(4000)
        TriggerClientEvent('QBCore:Notify', source, 'You got a Volcano Badge!')
    end)
end)

RegisterNetEvent("Cards:client:earth")
AddEventHandler("Cards:client:earth", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "obtaining badge..", 5000, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
       TriggerServerEvent("Cards:server:earth")
             Citizen.Wait(4000)
        TriggerClientEvent('QBCore:Notify', source, 'You got an Earth Badge!')
    end)
end)

RegisterNetEvent("Cards:client:trophy")
AddEventHandler("Cards:client:trophy", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "obtaining badge..", 5000, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("Cards:server:trophy")
             Citizen.Wait(4000)
        TriggerClientEvent('QBCore:Notify', source, 'You got a Trophy Badge!')
    end)
end)


