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