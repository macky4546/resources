QBCore = nil
TriggerEvent('QBCore:GetObject', function(obj) QBCore = obj end)

vehicleList = {}

RegisterServerEvent("cartracker:server:updateVehicleList")
AddEventHandler('cartracker:server:updateVehicleList', function(plate)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    if plate ~= nil then
        vehicleList[plate] = {
            plate = plate,
            callsign = Player.PlayerData.metadata["callsign"]
        }
    end
    
    TriggerClientEvent("cartracker:client:updateVehicles", -1, vehicleList)
end)