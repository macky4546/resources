QBCore = nil

TriggerEvent('QBCore:GetObject', function(obj) QBCore = obj end)


QBCore.Functions.CreateUseableItem("pokebox", function(source, item)
    --local identifiers = GetPlayerIdentifiers(src)
    local Player = QBCore.Functions.GetPlayer(source)
    TriggerClientEvent("pokeBox:UseBox", source)
    -- [Normal Logs]
    TriggerEvent("qb-log:server:CreateLog", "pokebox", "PokeBox", "white", "Player Opened The Box **"..GetPlayerName(source).."** Citizen ID : **"..Player.PlayerData.citizenid.. "**", false)
end)

function CanItemBeSaled(item)
    local retval = false
    if Config.AllowedItems[item] ~= nil then
        retval = true
    end
    return retval
end