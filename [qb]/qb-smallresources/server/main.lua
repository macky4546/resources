QBCore = nil

TriggerEvent('QBCore:GetObject', function(obj) QBCore = obj end)

RegisterServerEvent('tackle:server:TacklePlayer')
AddEventHandler('tackle:server:TacklePlayer', function(playerId)
    TriggerClientEvent("tackle:client:GetTackled", playerId)
end)

QBCore.Commands.Add("id", "What's my ID?", {}, false, function(source, args)
    TriggerClientEvent('chatMessage', source, "SYSTEM", "warning", "ID: "..source)
end)