local ObjectList = {}
local editingObject = false
local movingObject = false
local currentMovingObject = {}

RegisterNetEvent('police:client:spawnCone')
AddEventHandler('police:client:spawnCone', function()
    QBCore.Functions.Progressbar("spawn_object", "Object plaatsen..", 2500, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "anim@narcotics@trash",
        anim = "drop_front",
        flags = 16,
    }, {}, {}, function() -- Done
        StopAnimTask(GetPlayerPed(-1), "anim@narcotics@trash", "drop_front", 1.0)
        TriggerServerEvent("police:server:spawnObject", "cone")
    end, function() -- Cancel
        StopAnimTask(GetPlayerPed(-1), "anim@narcotics@trash", "drop_front", 1.0)
        QBCore.Functions.Notify("Geannuleerd..", "error")
    end)
end)

RegisterNetEvent('police:client:spawnBarier')
AddEventHandler('police:client:spawnBarier', function()
    QBCore.Functions.Progressbar("spawn_object", "Object plaatsen..", 2500, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "anim@narcotics@trash",
        anim = "drop_front",
        flags = 16,
    }, {}, {}, function() -- Done
        StopAnimTask(GetPlayerPed(-1), "anim@narcotics@trash", "drop_front", 1.0)
        TriggerServerEvent("police:server:spawnObject", "barier")
    end, function() -- Cancel
        StopAnimTask(GetPlayerPed(-1), "anim@narcotics@trash", "drop_front", 1.0)
        QBCore.Functions.Notify("Geannuleerd..", "error")
    end)
end)

RegisterNetEvent('police:client:spawnSchotten')
AddEventHandler('police:client:spawnSchotten', function()
    QBCore.Functions.Progressbar("spawn_object", "Object plaatsen..", 2500, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "anim@narcotics@trash",
        anim = "drop_front",
        flags = 16,
    }, {}, {}, function() -- Done
        StopAnimTask(GetPlayerPed(-1), "anim@narcotics@trash", "drop_front", 1.0)
        TriggerServerEvent("police:server:spawnObject", "schotten")
    end, function() -- Cancel
        StopAnimTask(GetPlayerPed(-1), "anim@narcotics@trash", "drop_front", 1.0)
        QBCore.Functions.Notify("Geannuleerd..", "error")
    end)
end)

RegisterNetEvent('police:client:spawnTent')
AddEventHandler('police:client:spawnTent', function()
    QBCore.Functions.Progressbar("spawn_object", "Object plaatsen..", 2500, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "anim@narcotics@trash",
        anim = "drop_front",
        flags = 16,
    }, {}, {}, function() -- Done
        StopAnimTask(GetPlayerPed(-1), "anim@narcotics@trash", "drop_front", 1.0)
        TriggerServerEvent("police:server:spawnObject", "tent")
    end, function() -- Cancel
        StopAnimTask(GetPlayerPed(-1), "anim@narcotics@trash", "drop_front", 1.0)
        QBCore.Functions.Notify("Geannuleerd..", "error")
    end)
end)

RegisterNetEvent('police:client:spawnLight')
AddEventHandler('police:client:spawnLight', function()
    local coords = GetEntityCoords(GetPlayerPed(-1))
    QBCore.Functions.Progressbar("spawn_object", "Object plaatsen..", 2500, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "anim@narcotics@trash",
        anim = "drop_front",
        flags = 16,
    }, {}, {}, function() -- Done
        StopAnimTask(GetPlayerPed(-1), "anim@narcotics@trash", "drop_front", 1.0)
        TriggerServerEvent("police:server:spawnObject", "light")
    end, function() -- Cancel
        StopAnimTask(GetPlayerPed(-1), "anim@narcotics@trash", "drop_front", 1.0)
        QBCore.Functions.Notify("Geannuleerd..", "error")
    end)
end)

RegisterNetEvent('police:client:deleteObject')
AddEventHandler('police:client:deleteObject', function(id)
    local objectId =  nil
    local dist = 0
    if id ~= nil then
        objectId = id
    else
        objectId, dist = GetClosestPoliceObject()
    end
    if dist < 5.0 then
        QBCore.Functions.Progressbar("remove_object", "Object verwijderen..", 2500, false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "weapons@first_person@aim_rng@generic@projectile@thermal_charge@",
            anim = "plant_floor",
            flags = 16,
        }, {}, {}, function() -- Done
            StopAnimTask(GetPlayerPed(-1), "weapons@first_person@aim_rng@generic@projectile@thermal_charge@", "plant_floor", 1.0)
            TriggerServerEvent("police:server:deleteObject", objectId)
        end, function() -- Cancel
            StopAnimTask(GetPlayerPed(-1), "weapons@first_person@aim_rng@generic@projectile@thermal_charge@", "plant_floor", 1.0)
            QBCore.Functions.Notify("Geannuleerd..", "error")
        end)
    end
end)

RegisterNetEvent('police:client:removeObject')
AddEventHandler('police:client:removeObject', function(objectId)
    DeleteObject(ObjectList[objectId].object)
    ObjectList[objectId] = nil
end)

RegisterNetEvent('police:client:spawnObject')
AddEventHandler('police:client:spawnObject', function(objectId, type, player)
    local coords = GetEntityCoords(GetPlayerPed(GetPlayerFromServerId(player)))
    local heading = GetEntityHeading(GetPlayerPed(GetPlayerFromServerId(player)))
    local forward = GetEntityForwardVector(GetPlayerPed(-1))
    local x, y, z = table.unpack(coords + forward * 0.5)
    local spawnedObj = CreateObject(Config.Objects[type].model, x, y, z, false, false, false)
    PlaceObjectOnGroundProperly(spawnedObj)
    SetEntityHeading(spawnedObj, heading)
    FreezeEntityPosition(spawnedObj, Config.Objects[type].freeze)
    ObjectList[objectId] = {
        id = objectId,
        object = spawnedObj,
        type = type,
        coords = {
            x = x,
            y = y,
            z = z - 0.3,
        },
    }
end)

RegisterNetEvent('police:client:updateObject')
AddEventHandler('police:client:updateObject', function(objectId, coords, rotation)
    DeleteObject(ObjectList[objectId].object)
    local spawnedObj = CreateObject(Config.Objects[ObjectList[objectId].type].model, coords.x, coords.y, coords.z, false, false, false)
    PlaceObjectOnGroundProperly(spawnedObj)
    SetEntityRotation(spawnedObj, rotation)
    ObjectList[objectId].object = spawnedObj
    ObjectList[objectId].coords = {
            x = coords.x,
            y = coords.y,
            z = coords.z,
    }
end)

RegisterNetEvent('police:client:editObject')
AddEventHandler('police:client:editObject', function()
    editingObject = not editingObject
end)

Citizen.CreateThread(function()	
	while true do
		Citizen.Wait(0)

        if editingObject then
            local color = {r = 255, g = 0, b = 0, a = 200}
            local position = GetEntityCoords(GetPlayerPed(-1))
            local hit, coords, entity = RayCastGamePlayCamera(1000.0)
            
            if (hit and IsEntityAnObject(entity)) and IsPoliceObject(entity) then
                local entityCoord = GetEntityCoords(entity)
                local minimum, maximum = GetModelDimensions(GetEntityModel(entity))
                
                DrawEntityBoundingBox(entity, {r = 255, g = 255, b = 255, a = 200})
                DrawLine(position.x, position.y, position.z, coords.x, coords.y, coords.z, color.r, color.g, color.b, color.a)

                DrawText3D(coords.x, coords.y, coords.z, "[~g~E~w~] Object verplaatsen")

                if IsControlJustReleased(0, Keys["E"]) then
                    local activeObject = GetPoliceObjectByEntity(entity)
                    if activeObject ~= nil then
                        movingObject = true
                        currentMovingObject = activeObject
                        editingObject = false
                        SetEntityCollision(currentMovingObject.object, false, true)
                    end
                end
                
            elseif coords.x ~= 0.0 and coords.y ~= 0.0 then
                DrawLine(position.x, position.y, position.z, coords.x, coords.y, coords.z, color.r, color.g, color.b, color.a)
                DrawMarker(28, coords.x, coords.y, coords.z, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 0.1, 0.1, 0.1, color.r, color.g, color.b, color.a, false, true, 2, nil, nil, false)
            end
        else
            Citizen.Wait(1000)
        end
	end
end)

Citizen.CreateThread(function()	
	while true do
		Citizen.Wait(0)

        if movingObject and (currentMovingObject ~= nil and currentMovingObject.object ~= nil) then
            local color = {r = 255, g = 0, b = 0, a = 200}
            local position = GetEntityCoords(GetPlayerPed(-1))
            local hit, coords, entity = RayCastGamePlayCamera(10.0)
            
            local entityCoord = GetEntityCoords(currentMovingObject.object)
            local minimum, maximum = GetModelDimensions(GetEntityModel(currentMovingObject.object))
            
            DrawEntityBoundingBox(currentMovingObject.object, {r = 0, g = 255, b = 0, a = 200})
            
            local r, groundZ = GetGroundZFor_3dCoord(coords.x, coords.y, coords.z, false)
            SetEntityCoords(currentMovingObject.object, coords.x, coords.y, coords.z)
            --DrawMarker(28, coords.x, coords.y, groundZ, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 0.1, 0.1, 0.1, color.r, color.g, color.b, color.a, false, true, 2, nil, nil, false)
            local objCoords = GetEntityCoords(currentMovingObject.object, false)
            if GetDistanceBetweenCoords(objCoords.x, objCoords.y, objCoords.z, position.x, position.y, position.z, true) > 10 then
                DrawText3D(position.x, position.y, position.z, "~r~Object staat te ver!")
            else
                DrawText3D(coords.x, coords.y, coords.z, "[~g~E~w~] Object Plaatsen, [~g~MUISKLIK~w~] om te roteren, [~r~DEL~w~] om te verwijderen")
            end

            DisableControlAction(0, 24, true)
			DisableControlAction(0, 25, true)
            

            if IsControlJustReleased(0, Keys["E"]) then
                SetEntityCollision(currentMovingObject.object, true, true)
                TriggerServerEvent("police:server:updateObject", currentMovingObject.id, {x = coords.x, y = coords.y, z = coords.z}, GetEntityRotation(currentMovingObject.object))
                movingObject = false
                currentMovingObject = nil
            end

            if IsControlJustReleased(0, Keys["DELETE"]) then
                SetEntityCollision(currentMovingObject.object, true, true)
                TriggerEvent("police:client:deleteObject", currentMovingObject.id)
                movingObject = false
                currentMovingObject = nil
            end

            if IsDisabledControlPressed(0, 24) then
                local rot = GetEntityRotation(currentMovingObject.object)
                local curRotation = {x = rot.x, y = rot.y, z = rot.z}
                curRotation.z = curRotation.z - 2.5
                SetEntityRotation(currentMovingObject.object, curRotation.x, curRotation.y, curRotation.z)
            end

            if IsDisabledControlPressed(0, 25) then
                local rot = GetEntityRotation(currentMovingObject.object)
                local curRotation = {x = rot.x, y = rot.y, z = rot.z}
                curRotation.z = curRotation.z + 2.5
                SetEntityRotation(currentMovingObject.object, curRotation.x, curRotation.y, curRotation.z)
            end
        else
            Citizen.Wait(1000)
        end
	end
end)

function IsPoliceObject(entity)
    for id, data in pairs(ObjectList) do
        if ObjectList[id].object == entity then
            return true
        end
    end
    return false
end

function GetPoliceObjectByEntity(entity)
    for id, data in pairs(ObjectList) do
        if ObjectList[id].object == entity then
            return ObjectList[id]
        end
    end
    return nil
end

function GetClosestPoliceObject()
    local pos = GetEntityCoords(GetPlayerPed(-1), true)
    local current = nil
    local dist = nil

    for id, data in pairs(ObjectList) do
        if current ~= nil then
            if(GetDistanceBetweenCoords(pos, ObjectList[id].coords.x, ObjectList[id].coords.y, ObjectList[id].coords.z, true) < dist)then
                current = id
                dist = GetDistanceBetweenCoords(pos, ObjectList[id].coords.x, ObjectList[id].coords.y, ObjectList[id].coords.z, true)
            end
        else
            dist = GetDistanceBetweenCoords(pos, ObjectList[id].coords.x, ObjectList[id].coords.y, ObjectList[id].coords.z, true)
            current = id
        end
    end
    return current, dist
end

function RayCastGamePlayCamera(distance)
    local cameraRotation = GetGameplayCamRot()
	local cameraCoord = GetGameplayCamCoord()
	local direction = RotationToDirection(cameraRotation)
	local destination = 
	{ 
		x = cameraCoord.x + direction.x * distance, 
		y = cameraCoord.y + direction.y * distance, 
		z = cameraCoord.z + direction.z * distance 
	}
	local a, b, c, d, e = GetShapeTestResult(StartShapeTestRay(cameraCoord.x, cameraCoord.y, cameraCoord.z, destination.x, destination.y, destination.z, -1, PlayerPedId(), 0))
	return b, c, e
end

function RotationToDirection(rotation)
	local adjustedRotation = 
	{ 
		x = (math.pi / 180) * rotation.x, 
		y = (math.pi / 180) * rotation.y, 
		z = (math.pi / 180) * rotation.z 
	}
	local direction = 
	{
		x = -math.sin(adjustedRotation.z) * math.abs(math.cos(adjustedRotation.x)), 
		y = math.cos(adjustedRotation.z) * math.abs(math.cos(adjustedRotation.x)), 
		z = math.sin(adjustedRotation.x)
	}
	return direction
end

function DrawEntityBoundingBox(entity, color)
    local model = GetEntityModel(entity)
    local min, max = GetModelDimensions(model)
    local rightVector, forwardVector, upVector, position = GetEntityMatrix(entity)

    -- Calculate size
    local dim = 
	{ 
		x = 0.5*(max.x - min.x), 
		y = 0.5*(max.y - min.y), 
		z = 0.5*(max.z - min.z)
	}

    local FUR = 
    {
		x = position.x + dim.y*rightVector.x + dim.x*forwardVector.x + dim.z*upVector.x, 
		y = position.y + dim.y*rightVector.y + dim.x*forwardVector.y + dim.z*upVector.y, 
		z = 0
    }

    local FUR_bool, FUR_z = GetGroundZFor_3dCoord(FUR.x, FUR.y, 1000.0, 0)
    FUR.z = FUR_z
    FUR.z = FUR.z + 2 * dim.z

    local BLL = 
    {
        x = position.x - dim.y*rightVector.x - dim.x*forwardVector.x - dim.z*upVector.x,
        y = position.y - dim.y*rightVector.y - dim.x*forwardVector.y - dim.z*upVector.y,
        z = 0
    }
    local BLL_bool, BLL_z = GetGroundZFor_3dCoord(FUR.x, FUR.y, 1000.0, 0)
    BLL.z = BLL_z

    -- DEBUG
    local edge1 = BLL
    local edge5 = FUR

    local edge2 = 
    {
        x = edge1.x + 2 * dim.y*rightVector.x,
        y = edge1.y + 2 * dim.y*rightVector.y,
        z = edge1.z + 2 * dim.y*rightVector.z
    }

    local edge3 = 
    {
        x = edge2.x + 2 * dim.z*upVector.x,
        y = edge2.y + 2 * dim.z*upVector.y,
        z = edge2.z + 2 * dim.z*upVector.z
    }

    local edge4 = 
    {
        x = edge1.x + 2 * dim.z*upVector.x,
        y = edge1.y + 2 * dim.z*upVector.y,
        z = edge1.z + 2 * dim.z*upVector.z
    }

    local edge6 = 
    {
        x = edge5.x - 2 * dim.y*rightVector.x,
        y = edge5.y - 2 * dim.y*rightVector.y,
        z = edge5.z - 2 * dim.y*rightVector.z
    }

    local edge7 = 
    {
        x = edge6.x - 2 * dim.z*upVector.x,
        y = edge6.y - 2 * dim.z*upVector.y,
        z = edge6.z - 2 * dim.z*upVector.z
    }

    local edge8 = 
    {
        x = edge5.x - 2 * dim.z*upVector.x,
        y = edge5.y - 2 * dim.z*upVector.y,
        z = edge5.z - 2 * dim.z*upVector.z
    }

    DrawLine(edge1.x, edge1.y, edge1.z, edge2.x, edge2.y, edge2.z, color.r, color.g, color.b, color.a)
    DrawLine(edge1.x, edge1.y, edge1.z, edge4.x, edge4.y, edge4.z, color.r, color.g, color.b, color.a)
    DrawLine(edge2.x, edge2.y, edge2.z, edge3.x, edge3.y, edge3.z, color.r, color.g, color.b, color.a)
    DrawLine(edge3.x, edge3.y, edge3.z, edge4.x, edge4.y, edge4.z, color.r, color.g, color.b, color.a)
    DrawLine(edge5.x, edge5.y, edge5.z, edge6.x, edge6.y, edge6.z, color.r, color.g, color.b, color.a)
    DrawLine(edge5.x, edge5.y, edge5.z, edge8.x, edge8.y, edge8.z, color.r, color.g, color.b, color.a)
    DrawLine(edge6.x, edge6.y, edge6.z, edge7.x, edge7.y, edge7.z, color.r, color.g, color.b, color.a)
    DrawLine(edge7.x, edge7.y, edge7.z, edge8.x, edge8.y, edge8.z, color.r, color.g, color.b, color.a)
    DrawLine(edge1.x, edge1.y, edge1.z, edge7.x, edge7.y, edge7.z, color.r, color.g, color.b, color.a)
    DrawLine(edge2.x, edge2.y, edge2.z, edge8.x, edge8.y, edge8.z, color.r, color.g, color.b, color.a)
    DrawLine(edge3.x, edge3.y, edge3.z, edge5.x, edge5.y, edge5.z, color.r, color.g, color.b, color.a)
    DrawLine(edge4.x, edge4.y, edge4.z, edge6.x, edge6.y, edge6.z, color.r, color.g, color.b, color.a)
end