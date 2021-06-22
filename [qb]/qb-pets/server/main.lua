if GetCurrentResourceName() == "qb-pets" then
    QBCore = nil
    TriggerEvent(Config.CoreName..':GetObject', function(obj) QBCore = obj end)

    QBCore.Functions.CreateCallback('qb-pets:getPet', function(source, cb)
        local _source = source
        local cid = QBCore.Functions.GetPlayer(_source).PlayerData.citizenid

        QBCore.Functions.ExecuteSql(false, "SELECT pet FROM players WHERE citizenid = '"..cid.."'", function(result)
            if result[1] ~= nil then
            cb(result[1].pet)
            else
                cb('')
            end
        end)
    end)

    RegisterServerEvent('qb-pets:petDied')
    AddEventHandler('qb-pets:petDied', function()
        local _source = source
        local cid = QBCore.Functions.GetPlayer(_source).PlayerData.citizenid
        if Player ~= nil then
            QBCore.Functions.ExecuteSql(false, "UPDATE players SET pet = ".."(NULL)".." WHERE citizenid ='"..cid.."'")
        end
    end)

    RegisterServerEvent("qb-pets:server:buyPet")
    AddEventHandler("qb-pets:server:buyPet", function(pet)
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        local price = GetPriceFromPet(pet)
        local cid = QBCore.Functions.GetPlayer(src).PlayerData.citizenid

        if Player ~= nil then
            if price == 0 then
                TriggerClientEvent(Config.CoreName..":Notify",source, "Invalid pet","error")
            end

            if Player.PlayerData.money["bank"] >= price then
                Player.Functions.RemoveMoney('bank', tonumber(price))
            
                QBCore.Functions.ExecuteSql(false, "UPDATE players SET pet = '"..pet.."' WHERE citizenid ='"..cid.."'")
                TriggerClientEvent(Config.CoreName..":Notify", source, "You bought a "..pet.." for "..price.."!", "success")
            else
                TriggerClientEvent(Config.CoreName..':Notify', source, "You do not have enough cash","error")
            end
        end
    end)


    function GetPriceFromPet(pet)
        for i=1, #Config.PetShop, 1 do
            if Config.PetShop[i].pet == pet then
                return Config.PetShop[i].price
            end
        end

        return 0
    end
end
