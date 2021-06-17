QBCore = nil
TriggerEvent('QBCore:GetObject', function(obj) QBCore = obj end)

-- Code

RegisterServerEvent('bank:withdraw')
AddEventHandler('bank:withdraw', function(amount)
    local src = source
    local ply = QBCore.Functions.GetPlayer(src)
    local bankamount = ply.PlayerData.money["bank"]
    local amount = tonumber(amount)
    if bankamount >= amount and amount > 0 then
      ply.Functions.RemoveMoney('bank', amount, "Bank withdraw")
      TriggerEvent("qb-log:server:CreateLog", "banking", "Withdraw", "red", "**"..GetPlayerName(src) .. "** has withdrawn $"..amount.." from his bank.")
      ply.Functions.AddMoney('cash', amount, "Bank withdraw")
    else
      TriggerClientEvent('QBCore:Notify', src, 'You dont have enough money in your bank.', 'error')
    end
end)

RegisterServerEvent('bank:deposit')
AddEventHandler('bank:deposit', function(amount)
    local src = source
    local ply = QBCore.Functions.GetPlayer(src)
    local cashamount = ply.PlayerData.money["cash"]
    local amount = tonumber(amount)
    if cashamount >= amount and amount > 0 then
      ply.Functions.RemoveMoney('cash', amount, "Bank depost")
      TriggerEvent("qb-log:server:CreateLog", "banking", "Deposit", "green", "**"..GetPlayerName(src) .. "** has $"..amount.." on its banked.")
      ply.Functions.AddMoney('bank', amount, "Bank deposit")
    else
      TriggerClientEvent('QBCore:Notify', src, 'You dont have enough money in your pocket..', 'error')
    end
end)

QBCore.Commands.Add("give cash", "Give cash to a person", {{name="id", help="Player ID"},{name="amount", help="Amount of money"}}, true, function(source, args)
  local Player = QBCore.Functions.GetPlayer(source)
  local TargetId = tonumber(args[1])
  local Target = QBCore.Functions.GetPlayer(TargetId)
  local amount = tonumber(args[2])
  
  if Target ~= nil then
    if amount ~= nil then
      if amount > 0 then
        if Player.PlayerData.money.cash >= amount and amount > 0 then
          if TargetId ~= source then
            TriggerClientEvent('banking:client:CheckDistance', source, TargetId, amount)
          else
            TriggerClientEvent('chatMessage', source, "SYSTEM", "error", "You can't give yourself money.")
          end
        else
          TriggerClientEvent('chatMessage', source, "SYSTEM", "error", "You don't have enough money.")
        end
      else
        TriggerClientEvent('chatMessage', source, "SYSTEM", "error", "Amount must be greater than 0.")
      end
    else
      TriggerClientEvent('chatMessage', source, "SYSTEM", "error", "Enter an amount.")
    end
  else
    TriggerClientEvent('chatMessage', source, "SYSTEM", "error", "Person is not in town.")
  end    
end)

RegisterServerEvent('banking:server:giveCash')
AddEventHandler('banking:server:giveCash', function(trgtId, amount)
  local src = source
  local Player = QBCore.Functions.GetPlayer(src)
  local Target = QBCore.Functions.GetPlayer(trgtId)

  Player.Functions.RemoveMoney('cash', amount, "Cash given to "..Player.PlayerData.citizenid)
  Target.Functions.AddMoney('cash', amount, "Cash received from "..Target.PlayerData.citizenid)

  TriggerEvent("qb-log:server:CreateLog", "banking", "Give cash", "blue", "**"..GetPlayerName(src) .. "** gave $"..amount.." to **".. GetPlayerName(trgtId) .. "**")
  
  TriggerClientEvent('QBCore:Notify', trgtId, "You have $"..amount.." got from "..Player.PlayerData.charinfo.firstname.."!", 'success')
  TriggerClientEvent('QBCore:Notify', src, "You have $"..amount.." got from "..Target.PlayerData.charinfo.firstname.."!", 'success')
end)