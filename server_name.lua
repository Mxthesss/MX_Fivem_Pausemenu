function SetData()
	players = {}
	for _, player in ipairs(GetActivePlayers()) do
		local ped = GetPlayerPed(player)
		table.insert( players, player )
end

	
	local name = GetPlayerName(PlayerId())
	local id = GetPlayerServerId(PlayerId())
	Citizen.InvokeNative(GetHashKey("ADD_TEXT_ENTRY"), 'FE_THDR_GTAO', '~y~CPRP~t~| ~g~Discord: dsc.gg/cprp~t~ | ~b~ID: ' .. id .. ' ~t~| ~b~Name: ~b~' .. name .. " ~t~| ~r~Players: " .. #players .. "/128")
	--Citizen.InvokeNative(GetHashKey("ADD_TEXT_ENTRY"), 'FE_THDR_GTAO', "~o~ADAWDAD~s~ | Discord : ~g~dsc.gg/cprp~s~ | ID: "..id.." | ~r~".. #players .." Connected")
end

Citizen.CreateThread(function() 
	while true do
		Citizen.Wait(100)
		SetData()
	end
end)

Citizen.CreateThread(function()
    AddTextEntry("PM_PANE_LEAVE", "~r~Leave ~w~~y~City~s~ 😭")
end)

Citizen.CreateThread(function()
    AddTextEntry("PM_PANE_QUIT", "~r~Close your ~o~Eyes Forever 🐌")
end)
