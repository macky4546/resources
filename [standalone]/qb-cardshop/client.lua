QBCore = nil

TriggerEvent('QBCore:GetObject', function(obj) QBCore = obj end)

RegisterNetEvent("cardshop:Magnemite")
AddEventHandler("cardshop:Magnemite", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Magnemite")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Sandslash")
AddEventHandler("cardshop:Sandslash", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Sandslash")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Dugtrio")
AddEventHandler("cardshop:Dugtrio", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Dugtrio")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:bSell")
AddEventHandler("cardshop:bSell", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling badge..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:boulderSell")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:cSell")
AddEventHandler("cardshop:cSell", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling badge..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:cascadeSell")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:thbSell")
AddEventHandler("cardshop:thSell", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling badge..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:thunderSell")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:rSell")
AddEventHandler("cardshop:rSell", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling badge..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:rainbowSell")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:sSell")
AddEventHandler("cardshop:sSell", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling badge..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:soulSell")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:mSell")
AddEventHandler("cardshop:mSell", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling badge..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:marshSell")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:vSell")
AddEventHandler("cardshop:vSell", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling badge..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:volcanoSell")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:eSell")
AddEventHandler("cardshop:eSell", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling badge..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:earthSell")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:tSell")
AddEventHandler("cardshop:tSell", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling badge..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:trophySell")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Abra")
AddEventHandler("cardshop:Abra", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Abra")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Aerodactyl")
AddEventHandler("cardshop:Aerodactyl", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Aerodactyl")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Alakazam")
AddEventHandler("cardshop:Alakazam", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Alakazam")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Arbok")
AddEventHandler("cardshop:Arbok", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Arbok")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Arcanine")
AddEventHandler("cardshop:Arcanine", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Arcanine")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Articuno")
AddEventHandler("cardshop:Articuno", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Articuno")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Beedrill")
AddEventHandler("cardshop:Beedrill", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Beedrill")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Bellsprout")
AddEventHandler("cardshop:Bellsprout", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Bellsprout")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Blastoise")
AddEventHandler("cardshop:Blastoise", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Blastoise")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Butterfree")
AddEventHandler("cardshop:Butterfree", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Butterfree")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Caterpie")
AddEventHandler("cardshop:Caterpie", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Caterpie")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Chansey")
AddEventHandler("cardshop:Chansey", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Chansey")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Charizard")
AddEventHandler("cardshop:Charizard", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Charizard")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Charmander")
AddEventHandler("cardshop:Charmander", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Charmander")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Charmeleon")
AddEventHandler("cardshop:Charmeleon", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Charmeleon")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Clefable")
AddEventHandler("cardshop:Clefable", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Clefable")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Clefairy")
AddEventHandler("cardshop:Clefairy", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Clefairy")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Cloyster")
AddEventHandler("cardshop:Cloyster", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Cloyster")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Cubone")
AddEventHandler("cardshop:Cubone", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Cubone")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Dewgong")
AddEventHandler("cardshop:Dewgong", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Dewgong")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Diglett")
AddEventHandler("cardshop:Diglett", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Diglett")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Ditto")
AddEventHandler("cardshop:Ditto", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Ditto")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Dodrio")
AddEventHandler("cardshop:Dodrio", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Dodrio")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Doduo")
AddEventHandler("cardshop:Doduo", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Doduo")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Dragonair")
AddEventHandler("cardshop:Dragonair", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Dragonair")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Dragonite")
AddEventHandler("cardshop:Dragonite", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Dragonite")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Dratini")
AddEventHandler("cardshop:Dratini", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Dratini")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Drowzee")
AddEventHandler("cardshop:Drowzee", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Drowzee")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Eevee")
AddEventHandler("cardshop:Eevee", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Eevee")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Ekans")
AddEventHandler("cardshop:Ekans", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Ekans")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Electabuzz")
AddEventHandler("cardshop:Electabuzz", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Electabuzz")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Electrode")
AddEventHandler("cardshop:Electrode", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Electrode")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Exeggcute")
AddEventHandler("cardshop:Exeggcute", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Exeggcute")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Exeggutor")
AddEventHandler("cardshop:Exeggutor", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Exeggutor")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Farfetchd")
AddEventHandler("cardshop:Farfetchd", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Farfetchd")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Fearow")
AddEventHandler("cardshop:Fearow", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Fearow")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Flareon")
AddEventHandler("cardshop:Flareon", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Flareon")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Gastly")
AddEventHandler("cardshop:Gastly", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Gastly")
             Citizen.Wait(1000)
    end)
 end)

    RegisterNetEvent("cardshop:Gengar")
AddEventHandler("cardshop:Gengar", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Gengar")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Geodude")
AddEventHandler("cardshop:Geodude", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Geodude")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Gloom")
AddEventHandler("cardshop:Gloom", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Gloom")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Golbat")
AddEventHandler("cardshop:Golbat", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Golbat")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Goldeen")
AddEventHandler("cardshop:Goldeen", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Goldeen")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Golduck")
AddEventHandler("cardshop:Golduck", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Golduck")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Golem")
AddEventHandler("cardshop:Golem", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Golem")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Graveler")
AddEventHandler("cardshop:Graveler", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Graveler")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Grimer")
AddEventHandler("cardshop:Grimer", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Grimer")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Growlithe")
AddEventHandler("cardshop:Growlithe", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Growlithe")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Gyrarados")
AddEventHandler("cardshop:Gyrarados", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Gyrarados")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Haunter")
AddEventHandler("cardshop:Haunter", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Haunter")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Hitmonchan")
AddEventHandler("cardshop:Hitmonchan", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Hitmonchan")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Hitmonlee")
AddEventHandler("cardshop:Hitmonlee", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Hitmonlee")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Horsea")
AddEventHandler("cardshop:Horsea", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Horsea")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Hypno")
AddEventHandler("cardshop:Hypno", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Hypno")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Ivysaur")
AddEventHandler("cardshop:Ivysaur", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Ivysaur")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Jigglypuff")
AddEventHandler("cardshop:Jigglypuff", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Jigglypuff")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Jolteon")
AddEventHandler("cardshop:Jolteon", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Jolteon")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Jynx")
AddEventHandler("cardshop:Jynx", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Jynx")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Kabuto")
AddEventHandler("cardshop:Kabuto", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Kabuto")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Kabutops")
AddEventHandler("cardshop:Kabutops", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Kabutops")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Kadabra")
AddEventHandler("cardshop:Kadabra", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Kadabra")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Kakuna")
AddEventHandler("cardshop:Kakuna", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Kakuna")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Kangaskhan")
AddEventHandler("cardshop:Kangaskhan", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Kangaskhan")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Kingler")
AddEventHandler("cardshop:Kingler", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Kingler")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Koffing")
AddEventHandler("cardshop:Koffing", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Koffing")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Krabby")
AddEventHandler("cardshop:Krabby", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Krabby")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Lapras")
AddEventHandler("cardshop:Lapras", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Lapras")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Lickitung")
AddEventHandler("cardshop:Lickitung", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Lickitung")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Dratini")
AddEventHandler("cardshop:Dratini", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Dratini")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Machamp")
AddEventHandler("cardshop:Machamp", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Machamp")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Machoke")
AddEventHandler("cardshop:Machoke", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Machoke")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Machop")
AddEventHandler("cardshop:Machop", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Machop")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Magikarp")
AddEventHandler("cardshop:Magikarp", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Magikarp")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Magmar")
AddEventHandler("cardshop:Magmar", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Magmar")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Magneton")
AddEventHandler("cardshop:Magneton", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Magneton")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Mankey")
AddEventHandler("cardshop:Mankey", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Mankey")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Marowak")
AddEventHandler("cardshop:Marowak", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Marowak")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Meowth")
AddEventHandler("cardshop:Meowth", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Meowth")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Metapod")
AddEventHandler("cardshop:Metapod", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Metapod")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Mew")
AddEventHandler("cardshop:Mew", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Mew")
             Citizen.Wait(1000)
    end)
end)

    RegisterNetEvent("cardshop:Mewtwo")
AddEventHandler("cardshop:Mewtwo", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Mewtwo")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Moltres")
AddEventHandler("cardshop:Moltres", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Moltres")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Mime")
AddEventHandler("cardshop:Mime", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Mime")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Muk")
AddEventHandler("cardshop:Muk", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Muk")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:NidoKing")
AddEventHandler("cardshop:NidoKing", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:NidoKing")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:NidoQueen")
AddEventHandler("cardshop:NidoQueen", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:NidoQueen")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Nidorina")
AddEventHandler("cardshop:Nidorina", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Nidorina")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Nidorino")
AddEventHandler("cardshop:Nidorino", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Nidorino")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Ninetails")
AddEventHandler("cardshop:Ninetails", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Ninetails")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Oddish")
AddEventHandler("cardshop:Oddish", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Oddish")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Omanyte")
AddEventHandler("cardshop:Omanyte", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Omanyte")
             Citizen.Wait(1000)
    end)
end)

    RegisterNetEvent("cardshop:Omastar")
AddEventHandler("cardshop:Omastar", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Omastar")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Onix")
AddEventHandler("cardshop:Onix", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Onix")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Paras")
AddEventHandler("cardshop:Paras", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Paras")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Parasect")
AddEventHandler("cardshop:Parasect", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Parasect")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Persian")
AddEventHandler("cardshop:Persian", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Persian")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Pidgeotto")
AddEventHandler("cardshop:Pidgeotto", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Pidgeotto")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Pidgey")
AddEventHandler("cardshop:Pidgey", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Pidgey")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Pikachu")
AddEventHandler("cardshop:Pikachu", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Pikachu")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Pinsir")
AddEventHandler("cardshop:Pinsir", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Pinsir")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Poliwag")
AddEventHandler("cardshop:Poliwag", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Poliwag")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Poliwhirl")
AddEventHandler("cardshop:Poliwhirl", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Poliwhirl")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Poliwrath")
AddEventHandler("cardshop:Poliwrath", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Poliwrath")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Ponyta")
AddEventHandler("cardshop:Ponyta", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Ponyta")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Porygon")
AddEventHandler("cardshop:Porygon", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Porygon")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Primeape")
AddEventHandler("cardshop:Primeape", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Primeape")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Psyduck")
AddEventHandler("cardshop:Psyduck", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Psyduck")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Raichu")
AddEventHandler("cardshop:Raichu", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Raichu")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Rapidash")
AddEventHandler("cardshop:Rapidash", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Rapidash")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Raticate")
AddEventHandler("cardshop:Raticate", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Raticate")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Rattata")
AddEventHandler("cardshop:Rattata", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Rattata")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Rhydon")
AddEventHandler("cardshop:Rhydon", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Rhydon")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Rhyhorn")
AddEventHandler("cardshop:Rhyhorn", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Rhyhorn")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Sandshrew")
AddEventHandler("cardshop:Sandshrew", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Sandshrew")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Scyther")
AddEventHandler("cardshop:Scyther", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Scyther")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Seadra")
AddEventHandler("cardshop:Seadra", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Seadra")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Seaking")
AddEventHandler("cardshop:Seaking", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Seaking")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Seel")
AddEventHandler("cardshop:Seel", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Seel")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Shellder")
AddEventHandler("cardshop:Shellder", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Shellder")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Slowbro")
AddEventHandler("cardshop:Slowbro", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Slowbro")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Slowpoke")
AddEventHandler("cardshop:Slowpoke", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Slowpoke")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Snorlax")
AddEventHandler("cardshop:Snorlax", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Snorlax")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Spearow")
AddEventHandler("cardshop:Spearow", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Spearow")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Squirtle")
AddEventHandler("cardshop:Squirtle", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Squirtle")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Starmie")
AddEventHandler("cardshop:Starmie", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Starmie")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Staryu")
AddEventHandler("cardshop:Staryu", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Staryu")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Tangela")
AddEventHandler("cardshop:Tangela", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Tangela")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Tauros")
AddEventHandler("cardshop:Tauros", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Tauros")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Tentacool")
AddEventHandler("cardshop:Tentacool", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Tentacool")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Tentacruel")
AddEventHandler("cardshop:Tentacruel", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Tentacruel")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Togepi")
AddEventHandler("cardshop:Togepi", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Togepi")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Vaporeon")
AddEventHandler("cardshop:Vaporeon", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Vaporeon")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Venomoth")
AddEventHandler("cardshop:Venomoth", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Venomoth")
             Citizen.Wait(1000)
    end)
end)

    RegisterNetEvent("cardshop:Venonat")
AddEventHandler("cardshop:Venonat", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Venonat")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Venusaur")
AddEventHandler("cardshop:Venusaur", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Venusaur")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Victreebel")
AddEventHandler("cardshop:Victreebel", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Victreebel")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Vileplume")
AddEventHandler("cardshop:Vileplume", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Vileplume")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Voltorb")
AddEventHandler("cardshop:Voltorb", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Voltorb")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Vulpix")
AddEventHandler("cardshop:Vulpix", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Vulpix")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Wartortle")
AddEventHandler("cardshop:Wartortle", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Wartortle")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Weedle")
AddEventHandler("cardshop:Weedle", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Weedle")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Weepinbell")
AddEventHandler("cardshop:Weepinbell", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Weepinbell")
             Citizen.Wait(1000)
    end)
end)

    RegisterNetEvent("cardshop:Weezing")
AddEventHandler("cardshop:Weezing", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Weezing")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Wigglytuff")
AddEventHandler("cardshop:Wigglytuff", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Wigglytuff")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Zapdos")
AddEventHandler("cardshop:Zapdos", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Zapdos")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Zubat")
AddEventHandler("cardshop:Zubat", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Zubat")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:buypack")
AddEventHandler("cardshop:buypack", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("Cards:server:packbuy")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:buybox")
AddEventHandler("cardshop:buybox", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("Cards:server:boxbuy")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Bulbasaur")
AddEventHandler("cardshop:Bulbasaur", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Bulbasaur")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Nidoran")
AddEventHandler("cardshop:Nidoran", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Nidoran")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:Magnemite")
AddEventHandler("cardshop:Magnemite", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:Magnemite")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:chav")
AddEventHandler("cardshop:chav", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:chav")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:chavmax")
AddEventHandler("cardshop:chavmax", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:chavmax")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:chavmaxr")
AddEventHandler("cardshop:chavmaxr", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling badge..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:chavmaxr")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:mewv")
AddEventHandler("cardshop:mewv", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling badge..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:mewv")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:mtgx")
AddEventHandler("cardshop:mtgx", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling badge..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:mtgx")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:mtgxr")
AddEventHandler("cardshop:mtgxr", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling badge..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:mtgxr")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:pikav")
AddEventHandler("cardshop:pikav", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling badge..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:pikav")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:pikavmax")
AddEventHandler("cardshop:pikavmax", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling badge..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:pikavmax")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:pikavmaxr")
AddEventHandler("cardshop:pikavmaxr", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling badge..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:pikavmaxr")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:snorv")
AddEventHandler("cardshop:snorv", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling badge..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:snorv")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:snorvmax")
AddEventHandler("cardshop:snorvmax", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:snorvmax")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:snorvmaxr")
AddEventHandler("cardshop:snorvmaxr", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:snorvmaxr")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:venusv")
AddEventHandler("cardshop:venusv", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:venusv")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:venusvmax")
AddEventHandler("cardshop:venusvmax", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:venusvmax")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:sellall")
AddEventHandler("cardshop:sellall", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:sellall")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:blav")
AddEventHandler("cardshop:blav", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:blav")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:blavmax")
AddEventHandler("cardshop:blavmax", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:blavmax")
             Citizen.Wait(1000)
    end)
end)

RegisterNetEvent("cardshop:pikavmax")
AddEventHandler("cardshop:pikavmax", function(itemName)
    QBCore.Functions.Progressbar("drink_something", "selling card..", 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent("cardshop:Server:pikavmax")
             Citizen.Wait(1000)
    end)
end)
