QBCore = nil
TriggerEvent('QBCore:GetObject', function(obj) QBCore = obj end)
local OrderTotal = 0 

QBCore.Functions.CreateCallback('gl-burgershot:getCharData', function(source, cb)
	local xPlayer = QBCore.Functions.GetPlayer(source)
	if not xPlayer then return end

    local identifier = xPlayer.PlayerData.citizenid
    QBCore.Functions.ExecuteSql(true, 'SELECT firstname, lastname, phone_number FROM users WHERE identifier = @identifier', {
		['@identifier'] = identifier
	}, function(results)
		cb(results[1])
	end)
end)

--TriggerEvent('esx_society:registerSociety', 'burgershot', 'Burgershot', 'society_burgershot', 'society_burgershot', 'society_burgershot', {type = 'public'})

RegisterServerEvent('gl-burgershot:checkCanCraft')
AddEventHandler('gl-burgershot:checkCanCraft',function(item)
   	local _source = source
    local xPlayer = GetPlayerFromId(source)
    local craft = true
    local count = Config.Recipes[item].Amount
    local stack = 1

        for k, v in pairs(Config.Recipes[item].Ingredients) do
            if xPlayer.getInventoryItem(k).count < v then
            	craft = false
            end
        end

			if craft then
                for k, v in pairs(Config.Recipes[item].Ingredients) do
                	xPlayer.removeInventoryItem(k, v)
                end
	            TriggerClientEvent('gl-burgershot:cookAnimation',source,Config.Recipes[item].Animation)
	            Wait(10000)
	            xPlayer.addInventoryItem(item,1)
            end
end)


RegisterServerEvent('gl-burgershot:notifyPaymentServer')
AddEventHandler('gl-burgershot:notifyPaymentServer', function()
TriggerClientEvent('gl-burgershot:notifyPaymentClient', -1, OrderTotal)
end)

-- Remove item from inventory
RegisterServerEvent('gl-burgershot:removeItem')
AddEventHandler('gl-burgershot:removeItem',function(item, amount)
	local _source = source
	local xPlayer  = GetPlayerFromId(source)
	xPlayer.removeInventoryItem(item,amount)

end)

-- Add items to inventory
RegisterServerEvent('gl-burgershot:addItem')
AddEventHandler('gl-burgershot:addItem',function(item)
	local _source = source
	local xPlayer  = GetPlayerFromId(source)
	xPlayer.addInventoryItem(item,1)

end)

-- Charge Society for items
--[[RegisterServerEvent('gl-burgershot:chargeSociety')
AddEventHandler('gl-burgershot:chargeSociety', function(amount)
    TriggerEvent('esx_addonaccount:getSharedAccount', 'society_burgershot', function(account)
        account.removeMoney(amount)
    end)	
end)]]


-- Register stuff below
-- Create the charge
RegisterServerEvent('gl-burgershot:createCharge')
AddEventHandler('gl-burgershot:createCharge', function(amount)
	OrderTotal = amount
end)

-- Send Charge to client
RegisterServerEvent('gl-burgershot:chargeMe')
AddEventHandler('gl-burgershot:chargeMe', function()
	local _source = source
	local xPlayer  = GetPlayerFromId(source)
	TriggerClientEvent('gl-burgershot:getcharged', source, OrderTotal)
end)

-- Trigger the charge (Pay for the meal)
RegisterServerEvent('gl-burgershot:sendpayamount')
AddEventHandler('gl-burgershot:sendpayamount', function(amount)
    local xPlayer = GetPlayerFromId(source)
            if amount ~= nil then
                xPlayer.removeAccountMoney('bank', amount)
                --[[TriggerEvent('esx_addonaccount:getSharedAccount', 'society_burgershot', function(account)
                        account.addMoney(amount)
                end)]]
            else
                TriggerClientEvent('DoLongHudText',source, 'Incorrect Amount')
            end
end)

RegisterUsableItem('meal1', function(source)
    local xPlayer = GetPlayerFromId(source)
    xPlayer.removeInventoryItem('meal1', 1)
    xPlayer.addInventoryItem('moneyshot',1)    
    xPlayer.addInventoryItem('fries',1)
    xPlayer.addInventoryItem('cocacola',1)
end)

RegisterUsableItem('meal2', function(source)
    local xPlayer = GetPlayerFromId(source)
    xPlayer.removeInventoryItem('meal2', 1)
    xPlayer.addInventoryItem('bleeder',1)    
    xPlayer.addInventoryItem('fries',1)
    xPlayer.addInventoryItem('cocacola',1)
end)

RegisterUsableItem('meal3', function(source)
    local xPlayer = GetPlayerFromId(source)
    xPlayer.removeInventoryItem('meal3', 1)
    xPlayer.addInventoryItem('heartstopper',1)
    xPlayer.addInventoryItem('fries',1)
    xPlayer.addInventoryItem('cocacola',1)
end)

QBCore.Commands.Add("setburgershot", "Give the burgershot job to someone ", {{name="id", help="Player ID"}}, true, function(source, args)
    local Player = QBCore.Functions.GetPlayer(tonumber(args[1]))
    local Myself = QBCore.Functions.GetPlayer(source)
    if Player ~= nil then 
        if (Myself.PlayerData.job.name == "unemployed")  then
            Player.Functions.SetJob("burgershot")
        end
    end
end)