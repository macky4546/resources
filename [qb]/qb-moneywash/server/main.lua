QBCore= nil
TriggerEvent('QBCore:GetObject', function(obj) QBCore = obj end)

RegisterNetEvent("qb-moneywash:server:checkInv")
AddEventHandler("qb-moneywash:server:checkInv", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local price = 0
    if Player.PlayerData.items ~= nil and next(Player.PlayerData.items) ~= nil then 
        for k, v in pairs(Player.PlayerData.items) do 
            if Player.PlayerData.items[k] ~= nil then 
                if Player.PlayerData.items[k].name == "markedbills" then 
                    price = price + (math.random(5000, 10000) * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem(Player.PlayerData.items[k].name, Player.PlayerData.items[k].amount, k)
                    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['markedbills'], "remove")
                TriggerClientEvent('QB-moneywash:client:startTimer', src)
    		    TriggerClientEvent('QBCore:Notify', src, "You started a wash!") 
                end
    		TriggerClientEvent('QBCore:Notify', src, "Washing!")
		Citizen.Wait(5000)
            end
        end
	Citizen.Wait(800)
        Player.Functions.AddMoney("cash", price, "washed cash")
        TriggerClientEvent('QBCore:Notify', src, "Your wash is complete!")
    end
end)
