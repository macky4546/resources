RegisterCommand('rehab', function(source, args)
    local src = source
	local user = exports["qb-core"]:getModule("Player"):GetUser(src)

    if user:getVar("job") == 'therapist' or user:getVar("job") == 'doctor' or user:getVar("job") == 'police' then
        if args[1] then
            if args[2] == tryue then
                TriggerClientEvent("beginJailRehab", args[1], true)
            else
                TriggerClientEvent("beginJailRehab", args[1], false)
            end
        else
            --TriggerClientEvent("DoLongHudText", src, 'There are no player with this ID.', 2)
            QBCore.Functions.Notify("There are no player with this ID.", "error")
        end
    end
end)