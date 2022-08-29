local players = {
    {id = 0, title = 'lorem ipsum', state = false}
}

RegisterNetEvent('pd:addPlayer')
AddEventHandler('pd:addPlayer', function(source, title, playerServerId)
    local xPlayer = ESX.GetPlayerFromId(source)
    print(source)
    table.insert(players, {id = playerServerId, title = title, state = false})
    TriggerClientEvent('pd:updateList', -1, players)
end)