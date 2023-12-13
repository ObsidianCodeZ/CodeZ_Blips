Citizen.CreateThread(function() 
    for _, info in pairs(Config.Blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, info.DisplaySize)
      SetBlipScale(info.blip, info.ScaleSize)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	    BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.Label)
      EndTextCommandSetBlipName(info.blip)
    end
end)