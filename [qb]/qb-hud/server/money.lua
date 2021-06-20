QBCore = nil

TriggerEvent('QBCore:GetObject', function(obj) QBCore = obj end)

QBCore.Commands.Add("cash", "See how much money you have with you", {}, false, function(source, args)
	TriggerClientEvent('hud:client:ShowMoney', source, "cash")
end)

QBCore.Commands.Add("bank", "See how much money you have in your bank", {}, false, function(source, args)
	TriggerClientEvent('hud:client:ShowMoney', source, "bank")
end)