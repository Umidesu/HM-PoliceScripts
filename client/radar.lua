local players = {
    {id = 0, title = 'lorem ipsum', state = false}
}

local job = nil

ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
      TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
      Citizen.Wait(250)
    end

    while ESX.GetPlayerData().job == nil do
      Citizen.Wait(250)
  end
  
  ESX.PlayerData = ESX.GetPlayerData()
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	ESX.PlayerData.job = job
  Citizen.Wait(5000)
end)


AddEventHandler('playerSpawned', function() 

end)

RegisterCommand('gps', function(playerId, args, rawCommand)
    local title = args[1]
    local playerServerId = GetPlayerServerId(playerId)
    if title then
        TriggerServerEvent('pd:addPlayer', title, playerServerId)
        print('pd:addPlayer', title, playerServerId)
    end
end)

RegisterNetEvent('pd:updateList')
AddEventHandler('pd:updateList', function(list)
    players = list
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

    end
end)