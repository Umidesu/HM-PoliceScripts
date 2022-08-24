RegisterCommand('gps', function(playerId, args, rawCommand)
    local title = args[1]
    local playerServerid = GetPlayerServerId(playerId)
    -- TODO: get vehicle flash light state
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

    end
end)