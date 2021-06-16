QBCore = nil

TriggerEvent('QBCore:GetObject', function(obj) QBCore = obj end)


RegisterNetEvent("pokeBox:UseBox")
AddEventHandler("pokeBox:UseBox", function()
    TaskPlayAnim(PlayerPedId(), "clothingshirt", "try_shirt_positive_d", 8.0, 1.0, -1, 49, 0, 0, 0, 0)
    print('Box is Opening')
    QBCore.Functions.Notify("Box is being opened...", "error")
    QBCore.Functions.Progressbar("use_bag", "Box is being opened", 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        local RLBagData = {
            outfitData = {
                ["bag"]   = { item = 41, texture = 0},  -- Nek / Das
            }
        }
        --TriggerEvent('qb-clothing:client:loadOutfit', RallyBagData)
        TriggerServerEvent("inventory:server:OpenInventory", "pokeBox", "poke_"..QBCore.Functions.GetPlayerData().citizenid)
        TriggerEvent("inventory:client:SetCurrentStash", "poke_"..QBCore.Functions.GetPlayerData().citizenid)
        TriggerServerEvent("InteractSound_SV:PlayOnSource", "invbag", 0.5)
        TaskPlayAnim(ped, "clothingshirt", "exit", 8.0, 1.0, -1, 49, 0, 0, 0, 0)
        QBCore.Functions.Notify("Box has been opened successfully", "success")
    end)
end)
