-- internal variables
QBCore = nil
local ped, model, object, animation = {}, {}, {}, {}
local status = 100
local objCoords
local come = 0
local isAttached, getball, inanimation, balle, isSpawned = false ,false, false, false, false

Citizen.CreateThread(function()
	while QBCore == nil do
		TriggerEvent(Config.CoreName..':GetObject', function(obj) QBCore = obj end)
		Citizen.Wait(0)
	end

	Citizen.Wait(5000)
	DoRequestModel(-1788665315) -- chien
	DoRequestModel(1462895032) -- chat
	DoRequestModel(1682622302) -- loup
	DoRequestModel(-541762431) -- lapin
	DoRequestModel(1318032802) -- husky
	DoRequestModel(-1323586730) -- cochon
	DoRequestModel(1125994524) -- caniche
	DoRequestModel(1832265812) -- carlin
	DoRequestModel(882848737) -- retriever
	DoRequestModel(1126154828) -- berger
	DoRequestModel(-1384627013) -- westie
	DoRequestModel(351016938)  -- rottweiler
end)

Citizen.CreateThread(function()
	local menus = {
		"pet",
		"store", 
		"orders",
	}
	
	WarMenu.CreateMenu("pet","Pet Menu")
	WarMenu.CreateSubMenu("orders", "pets")
	WarMenu.CreateMenu("shop","Pet Shop")

	for k, v in pairs(menus) do
		WarMenu.SetMenuX(v, 0.71)
		WarMenu.SetMenuY(v, 0.15)
		WarMenu.SetMenuWidth(v, 0.23)
		WarMenu.SetTitleColor(v, 255, 255, 255, 255)
		WarMenu.SetTitleBackgroundColor(v, 0, 0, 0, 111)
	end

	while true do
		Citizen.Wait(0)
		if WarMenu.IsMenuOpened("pet") then
		
			if WarMenu.Button("Spawn", "Spawn Pet") then
					if not isSpawned then
						QBCore.Functions.TriggerCallback('qb-pets:getPet', function(pet)
							if pet == 'Dog' then
								model = -1788665315
								come = 1
								openchien()
							elseif pet == 'Cat' then
								model = 1462895032
								come = 1
								openchien()
							elseif pet == 'wolf' then
								model = 1682622302
								come = 1
								openchien()
							elseif pet == 'rabbit' then
								model = -541762431
								come = 1
								openchien()
							elseif pet == 'husky' then
								model = 1318032802
								come = 1
								openchien()
							elseif pet == 'pig' then
								model = -1323586730
								come = 1
								openchien()
							elseif pet == 'Poodle' then
								model = 1125994524
								come = 1
								openchien()
							elseif pet == 'Pug' then
								model = 1832265812
								come = 1
								openchien()
							elseif pet == 'retriever' then
								model = 882848737
								come = 1
								openchien()
							elseif pet == 'shepherd' then
								model = 1126154828
								come = 1
								openchien()
							elseif pet == 'westie' then
								model = -1384627013
								come = 1
								openchien()
							elseif pet == 'rottweiler' then
								model = 351016938
								come = 1
							else
								print('qb-pets: unknown pet ' .. pet)
							end
						end)
					end
			end
			if WarMenu.Button("Freeze", "Freeze / Unfreeze your pet") then
				if not IsPedSittingInAnyVehicle(ped) then
					if isAttached == false then
						attached()
						isAttached = true
					else
						detached()
						isAttached = false
					end
					else
					QBCore.Functions.Notify("You cannot attach your pet while in your car","error")
				end
			end
			if WarMenu.Button("Summon", "Call your pet to your feet") then
				local coords = GetEntityCoords(PlayerPedId())
				TaskGoToCoordAnyMeans(ped, coords, 5.0, 0, 0, 786603, 0xbf800000)
				WarMenu.CloseMenu()
			end
			if WarMenu.Button("Return", "return home") then
				local GroupHandle = GetPlayerGroup(PlayerId())
				local coords      = GetEntityCoords(PlayerPedId())

				SetGroupSeparationRange(GroupHandle, 1.9)
				SetPedNeverLeavesGroup(ped, false)
				TaskGoToCoordAnyMeans(ped, coords.x + 40, coords.y, coords.z, 5.0, 0, 0, 786603, 0xbf800000)

				Citizen.Wait(5000)
				DeleteEntity(ped)
				come = 0
				isSpawned = false

				WarMenu.CloseMenu()
			end

			WarMenu.Display()
			
		elseif WarMenu.IsMenuOpened("shop") then
			for i=1, #Config.PetShop, 1 do
				if WarMenu.Button(Config.PetShop[i].label, "$"..Config.PetShop[i].price) then
					--QBCore.Functions.TriggerCallback("qb-pets:buyPet",false,Config.PetShop[i].pet)
					TriggerServerEvent("qb-pets:server:buyPet", Config.PetShop[i].pet)
					WarMenu.CloseMenu()
				end
			end
			WarMenu.Display()
		end
	end
end)

function OpenPetMenu()
	WarMenu.OpenMenu("pet")
end

function GivePetOrders()
	WarMenu.OpenMenu("orders")
end

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(30)

		if balle then
			local coords1 = GetEntityCoords(PlayerPedId())
			local coords2 = GetEntityCoords(ped)
			local distance  = GetDistanceBetweenCoords(objCoords, coords2, true)
			local distance2 = GetDistanceBetweenCoords(coords1, coords2, true)

			if distance < 0.5 then
				local boneIndex = GetPedBoneIndex(ped, 17188)
				AttachEntityToEntity(object, ped, boneIndex, 0.120, 0.010, 0.010, 5.0, 150.0, 0.0, true, true, false, true, 1, true)
				TaskGoToCoordAnyMeans(ped, coords1, 5.0, 0, 0, 786603, 0xbf800000)
				balle = false
				getball = true
			end
		end

		if getball then
			local coords1 = GetEntityCoords(PlayerPedId())
			local coords2 = GetEntityCoords(ped)
			local distance2 = GetDistanceBetweenCoords(coords1, coords2, true)

			if distance2 < 1.5 then
				DetachEntity(object,false,false)
				Citizen.Wait(50)
				SetEntityAsMissionEntity(object)
				DeleteEntity(object)
				GiveWeaponToPed(PlayerPedId(), GetHashKey("WEAPON_BALL"), 1, false, true)
				local GroupHandle = GetPlayerGroup(PlayerId())
				SetGroupSeparationRange(GroupHandle, 999999.9)
				SetPedNeverLeavesGroup(ped, true)
				SetPedAsGroupMember(ped, GroupHandle)
				getball = false
			end
		end
	end
end)

function attached()
	local GroupHandle = GetPlayerGroup(PlayerId())
	SetGroupSeparationRange(GroupHandle, 1.9)
	SetPedNeverLeavesGroup(ped, false)
	FreezeEntityPosition(ped, true)
end

function detached()
	local GroupHandle = GetPlayerGroup(PlayerId())
	SetGroupSeparationRange(GroupHandle, 999999.9)
	SetPedNeverLeavesGroup(ped, true)
	SetPedAsGroupMember(ped, GroupHandle)
	FreezeEntityPosition(ped, false)
end

function openchien()
	local playerPed = PlayerPedId()
	local LastPosition = GetEntityCoords(playerPed)
	local GroupHandle = GetPlayerGroup(PlayerId())

	DoRequestAnimSet('rcmnigel1c')

	TaskPlayAnim(playerPed, 'rcmnigel1c', 'hailing_whistle_waive_a' ,8.0, -8, -1, 120, 0, false, false, false)

	Citizen.SetTimeout(5000, function()
		ped = CreatePed(28, model, LastPosition.x +1, LastPosition.y +1, LastPosition.z -1, 1, 1)

		SetPedAsGroupLeader(playerPed, GroupHandle)
		SetPedAsGroupMember(ped, GroupHandle)
		SetPedNeverLeavesGroup(ped, true)
		SetPedCanBeTargetted(ped, false)
		SetEntityAsMissionEntity(ped, true,true)

		status = math.random(40, 90)
		Citizen.Wait(5)
		attached()
		Citizen.Wait(5)
		detached()
		isSpawned = true
	end)
end

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(math.random(60000, 120000))

		if come == 1 then
			status = status - 1
		end

		if status == 0 then
			TriggerServerEvent('qb-pets:petDied')
			DeleteEntity(ped)
			
			come = 3
			status = "die"
		end
	end
end)

-- Key Controls
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)

		if IsControlJustPressed(0, Config.OpenKey) and GetLastInputMethod(2) and not WarMenu.IsAnyMenuOpened() then
			OpenPetMenu()
		end
	end
end)

-- Create Blips
Citizen.CreateThread(function()
	local blip = AddBlipForCoord(Config.Zones.PetShop.Pos.x, Config.Zones.PetShop.Pos.y, Config.Zones.PetShop.Pos.z)

	SetBlipSprite (blip, Config.Zones.PetShop.Sprite)
	SetBlipDisplay(blip, Config.Zones.PetShop.Display)
	SetBlipScale  (blip, Config.Zones.PetShop.Scale)
	SetBlipAsShortRange(blip, true)

	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString("Pet Shop")
	EndTextCommandSetBlipName(blip)
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		local coord = GetEntityCoords(PlayerPedId())

		if GetDistanceBetweenCoords(coord, Config.Zones.PetShop.Pos.x, Config.Zones.PetShop.Pos.y, Config.Zones.PetShop.Pos.z, true) < 2 then
			QBCore.Functions.DrawText3D(Config.Zones.PetShop.Pos.x, Config.Zones.PetShop.Pos.y, Config.Zones.PetShop.Pos.z+1.0,"Press [E] to open the pet shop")

			if IsControlJustReleased(0, 38) then
				OpenPetShop()
			end
		else
			Citizen.Wait(500)
		end
	end
end)

function OpenPetShop()
	WarMenu.OpenMenu("shop")

end

function DoRequestModel(model)
	RequestModel(model)
	while not HasModelLoaded(model) do
		Citizen.Wait(1)
	end
end

function DoRequestAnimSet(anim)
	RequestAnimDict(anim)
	while not HasAnimDictLoaded(anim) do
		Citizen.Wait(1)
	end
end
