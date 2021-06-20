QBCore = nil

Citizen.CreateThread(function()
	while QBCore == nil do
		TriggerEvent('QBCore:GetObject', function(obj) QBCore = obj end)
		Citizen.Wait(0)
	end
end)

TriggerEvent('chat:addSuggestion', '/givecar', 'Give a car to player', {
	{ name="id", help="The ID of the player" },
    { name="vehicle", help="Vehicle model" },
    { name="<plate>", help="Vehicle plate, skip if you want random generate plate number" }
})

TriggerEvent('chat:addSuggestion', '/giveplane', 'Give an airplane to player', {
	{ name="id", help="The ID of the player" },
    { name="vehicle", help="Vehicle model" },
    { name="<plate>", help="Vehicle plate, skip if you want random generate plate number" }
})

TriggerEvent('chat:addSuggestion', '/giveboat', 'Give a boat to player', {
	{ name="id", help="The ID of the player" },
    { name="vehicle", help="Vehicle model" },
    { name="<plate>", help="Vehicle plate, skip if you want random generate plate number" }
})

TriggerEvent('chat:addSuggestion', '/giveheli', 'Give a helicopter to player', {
	{ name="id", help="The ID of the player" },
    { name="vehicle", help="Vehicle model" },
    { name="<plate>", help="Vehicle plate, skip if you want random generate plate number" }
})

TriggerEvent('chat:addSuggestion', '/delcarplate', 'Delete a owned vehicle by plate number', {
	{ name="plate", help="Vehicle's plate number" }
})

RegisterNetEvent('qb-givevehicle:spawnVehicle')
AddEventHandler('qb-givevehicle:spawnVehicle', function(playerID, model, playerName, type, vehicleType)
	local playerPed = GetPlayerPed(-1)
	local coords    = GetEntityCoords(playerPed)
	local carExist  = false

	QBCore.Functions.SpawnVehicle(model, coords, 0.0, function(vehicle) --get vehicle info
		if DoesEntityExist(vehicle) then
			carExist = true
			SetEntityVisible(vehicle, false, false)
			SetEntityCollision(vehicle, false)
			
			local newPlate     = exports.qb-vehicleshop:GeneratePlate()
			local vehicleProps = QBCore.Functions.GetVehicleProperties(vehicle)
			vehicleProps.plate = newPlate
			TriggerServerEvent('qb-givevehicle:setVehicle', vehicleProps, playerID, vehicleType)
			QBCore.Functions.DeleteVehicle(vehicle)	
			if type ~= 'console' then
				QBCore.Functions.Notify(_U('gived_car', model, newPlate, playerName))
			else
				local msg = ('addCar: ' ..model.. ', plate: ' ..newPlate.. ', toPlayer: ' ..playerName)
				TriggerServerEvent('qb-givevehicle:printToConsole', msg)
			end				
		end		
	end)
	
	Wait(2000)
	if not carExist then
		if type ~= 'console' then
			QBCore.Functions.Notify(_U('unknown_car', model))
		else
			TriggerServerEvent('qb-givevehicle:printToConsole', "ERROR: "..model.." is an unknown vehicle model")
		end		
	end
end)

RegisterNetEvent('qb-givevehicle:spawnVehiclePlate')
AddEventHandler('qb-givevehicle:spawnVehiclePlate', function(playerID, model, plate, playerName, type, vehicleType)
	local playerPed = GetPlayerPed(-1)
	local coords    = GetEntityCoords(playerPed)
	local generatedPlate = string.upper(plate)
	local carExist  = false

	QBCore.Functions.TriggerCallback('qb-vehicleshop:isPlateTaken', function (isPlateTaken)
		if not isPlateTaken then
			QBCore.Functions.SpawnVehicle(model, coords, 0.0, function(vehicle) --get vehicle info	
				if DoesEntityExist(vehicle) then
					carExist = true
					SetEntityVisible(vehicle, false, false)
					SetEntityCollision(vehicle, false)	
					
					local newPlate     = string.upper(plate)
					local vehicleProps = QBCore.Functions.GetVehicleProperties(vehicle)
					vehicleProps.plate = newPlate
					TriggerServerEvent('qb-givevehicle:setVehicle', vehicleProps, playerID, vehicleType)
					QBCore.Functions.DeleteVehicle(vehicle)
					if type ~= 'console' then
						QBCore.Functions.Notify(_U('gived_car',  model, newPlate, playerName))
					else
						local msg = ('addCar: ' ..model.. ', plate: ' ..newPlate.. ', toPlayer: ' ..playerName)
						TriggerServerEvent('qb-givevehicle:printToConsole', msg)
					end				
				end
			end)
		else
			carExist = true
			if type ~= 'console' then
				QBCore.Functions.Notify(_U('plate_already_have'))
			else
				local msg = ('ERROR: this plate is already been used on another vehicle')
				TriggerServerEvent('qb-givevehicle:printToConsole', msg)
			end					
		end
	end, generatedPlate)
	
	Wait(2000)
	if not carExist then
		if type ~= 'console' then
			QBCore.Functions.Notify(_U('unknown_car', model))
		else
			TriggerServerEvent('qb-givevehicle:printToConsole', "ERROR: "..model.." is an unknown vehicle model")
		end		
	end	
end)