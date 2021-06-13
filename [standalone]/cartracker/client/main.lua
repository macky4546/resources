QBCore = nil
PlayerJob = {}

local carChecked = false
local vehicleBlips = {}

Citizen.CreateThread(function()
    while QBCore == nil do
        TriggerEvent('QBCore:GetObject', function(obj) QBCore = obj end)
        Citizen.Wait(200)
    end
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate')
AddEventHandler('QBCore:Client:OnJobUpdate', function(JobInfo)
    PlayerJob = JobInfo
    TriggerServerEvent("cartracker:server:updateVehicleList")
end)


RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    TriggerServerEvent("cartracker:server:updateVehicleList")
end)

RegisterNetEvent('cartracker:client:updateVehicles')
AddEventHandler('cartracker:client:updateVehicles', function(vehicleList)
    if vehicleBlips ~= nil then
        for k, v in pairs(vehicleBlips) do
            RemoveBlip(v)
        end
    end
    if PlayerJob.name == "police" then
        for plate, v in pairs(vehicleList) do
            UpdateVehicleBlip(plate, vehicleList[plate].callsign)
        end
    end
end)

function UpdateVehicleBlip(plate, callsign)
    for k, vehicle in pairs(QBCore.Functions.GetVehicles()) do
        local props = QBCore.Functions.GetVehicleProperties(vehicle)
        if props.plate == plate then
            if DoesEntityExist(vehicle) then
                print("Create Blip for vehicle: " .. vehicle .. ", with plate: " .. plate)
                local vehicleLabel = GetVehicleLabel(vehicle)
                local blip = GetBlipFromEntity(vehicle)
                if not DoesBlipExist(blip) then
                    blip = AddBlipForEntity(vehicle)
                    SetBlipSprite(blip, 56)
                    SetBlipAsFriendly(blip, true)
                    SetBlipCategory(blip, 7)
                    ShowHeadingIndicatorOnBlip(blip, true)
                    SetBlipRotation(blip, math.ceil(GetEntityHeading(vehicle)))
                    SetBlipScale(blip, 0.6)
                    SetBlipColour(blip, 29)
                    SetBlipAsShortRange(blip, true)
                    BeginTextCommandSetBlipName('STRING')
                    AddTextComponentString(callsign .. " | (".. vehicleLabel ..": " .. plate .. ")")
                    EndTextCommandSetBlipName(blip)
                    
                    table.insert(vehicleBlips, blip)
                end
            end
        end
    end
end

function GetVehicleLabel(vehicle)
    for model, label in pairs(Config.Vehicles) do
        if GetEntityModel(vehicle) == GetHashKey(model) then
            return Config.Vehicles[model]
        end
    end
    return "Onbekend"
end


