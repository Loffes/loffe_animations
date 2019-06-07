local Keys = {
  ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57, 
  ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177, 
  ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
  ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
  ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
  ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70, 
  ["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
  ["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
  ["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}

local isDead = false
local inAnim = false
local choosingFavorite = false

ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

AddEventHandler('esx:onPlayerDeath', function(data)
	isDead = true
end)

AddEventHandler('playerSpawned', function(spawn)
	isDead = false
end)

function startAttitude(lib, anim)
	ESX.Streaming.RequestAnimSet(lib, function()
		SetPedMovementClipset(PlayerPedId(), anim, true)
	end)
end

function startAnim(lib, anim, repet)
	ESX.Streaming.RequestAnimDict(lib, function()
		TaskPlayAnim(PlayerPedId(), lib, anim, 8.0, -8.0, -1, repet or 1, 0, false, false, false)
	end)
end

function startScenario(anim)
	TaskStartScenarioInPlace(PlayerPedId(), anim, 0, false)
end

function OpenAnimationsMenu()
	local elements = {}

	for i=1, #Config.Animations, 1 do
		table.insert(elements, {label = Config.Animations[i].label, value = Config.Animations[i].name})
	end
	table.insert(elements, {label = 'Välj favorit', value = 'favorite'})

	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'animations',
	{
		title    = 'Animations',
		align    = 'bottom-right',
		elements = elements
	}, function(data, menu)
		if data.current.value == 'favorite' then
			OpenFavoriteMenu()
		else
			OpenAnimationsSubMenu(data.current.value)
		end
	end, function(data, menu)
		menu.close()
		TriggerEvent('personmeny:open')
	end)
end

function OpenFavoriteMenu()

	local elements = {}

	for i=1, #Config.Animations, 1 do
		if Config.Animations[i].name ~= "attitudem" then
			table.insert(elements, {label = Config.Animations[i].label, value = Config.Animations[i].name})
		end
	end

	ESX.UI.Menu.Open(
	'default', GetCurrentResourceName(), 'favorite',
	{
		title    = 'Favorit',
		align = 'bottom-right',
		elements = elements
	},
	function(data, menu)
		OpenFavoriteSubMenu(data.current.value)
	end,
	function(data, menu)
		menu.close()
	end)

end

function OpenFavoriteSubMenu(menu)

	local title    = nil
	local elements = {}

	for i=1, #Config.Animations, 1 do
		
		if Config.Animations[i].name == menu then

			title = Config.Animations[i].label

			for j=1, #Config.Animations[i].items, 1 do
				table.insert(elements, {
					label = Config.Animations[i].items[j].label,
					type  = Config.Animations[i].items[j].type,
					value = Config.Animations[i].items[j].data,
					repet = Config.Animations[i].items[j].repet
				})
			end

			break

		end

	end

	ESX.UI.Menu.Open(
		'default', GetCurrentResourceName(), 'favorite_submemu',
		{
			title    = title,
			align = 'bottom-right',
			elements = elements
		},
		function(data, menu)

			local type = data.current.type
			local lib  = data.current.value.lib
			local anim = data.current.value.anim
			local repet = data.current.value.repet

			if type == 'scenario' or type == 'anim' then
				local selectedButton = false
				local text = 'Tryck på knappen du ska binda denna animationen till. Knappar:\n'
				for i=1, #Config.FavoriteButtons do
					text = text .. Config.FavoriteButtons[i].Text .. ' '
				end
				AddTextEntry("loffe_animations_hej_test", text)
				choosingFavorite = true
				while selectedButton == false do
					Wait(0)
					DisplayHelpTextThisFrame("loffe_animations_hej_test", false)
					for k, v in pairs(Config.FavoriteButtons) do
						if IsControlJustReleased(0, Keys[v.Button]) then
							selectedButton = Keys[v.Button]
						end
					end
				end
				choosingFavorite = false

				if type == 'scenario' then
					ESX.UI.Menu.CloseAll()
					TriggerServerEvent('esx_animations:newFavorite', 'null', anim, 1, 'null', selectedButton)
				elseif type == 'anim' then
					ESX.UI.Menu.CloseAll()
					TriggerServerEvent('esx_animations:newFavorite', lib, anim, 0, repet or 1, selectedButton)
				end
		end
		
	end,
	function(data, menu)
		menu.close()
	end)

end


function OpenAnimationsSubMenu(menu)
	local title    = nil
	local elements = {}

	for i=1, #Config.Animations, 1 do
		if Config.Animations[i].name == menu then
			title = Config.Animations[i].label

			for j=1, #Config.Animations[i].items, 1 do
				table.insert(elements, {
					label = Config.Animations[i].items[j].label,
					type  = Config.Animations[i].items[j].type,
					value = Config.Animations[i].items[j].data
				})
			end

			break

		end
	end

	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'animations_sub',
	{
		title    = title,
		align    = 'bottom-right',
		elements = elements
	}, function(data, menu)
		local type = data.current.type
		local lib  = data.current.value.lib
		local anim = data.current.value.anim
		local repet = data.current.value.repet

		if type == 'scenario' then
			startScenario(anim)
		elseif type == 'attitude' then
			startAttitude(lib, anim)
		elseif type == 'anim' then
			startAnim(lib, anim, repet)
		end
	end, function(data, menu)
		menu.close()
	end)
end

RegisterNetEvent('esx_animations:openMenu')
AddEventHandler('esx_animations:openMenu', function()
	ESX.UI.Menu.CloseAll()
	OpenAnimationsMenu()
end)

RegisterNetEvent('esx_animations:getFavorite_cl')

-- Key Controls
local notifying = false
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(5)

		if IsControlJustReleased(0, Keys['X']) and GetLastInputMethod(2) and not isDead then
			ClearPedTasks(PlayerPedId())
		end
		
		for k, v in pairs(Config.FavoriteButtons) do
			if IsControlJustReleased(0, Keys[v.Button]) and not isDead and not IsPedInAnyVehicle(GetPlayerPed(-1)) and not choosingFavorite then
				TriggerServerEvent('esx_animations:getFavorite_sv', Keys[v.Button])
				AddEventHandler('esx_animations:getFavorite_cl', function(data)
					if data ~= false then
						if data.scenario then
							startScenario(data.animation)
						else
							startAnim(data.lib, data.animation, data.repet)
						end
					else
						if not notifying then
							sendNotification('Du har ingen animation bindad till denna knapp!', 'error', 2500)
						end
					end
				end)
			else
				if choosingFavorite then
					Wait(1500)
				end
			end
		end

	end
end)

function sendNotification(message, messagetype, messagetimeout)
	notifying = true
	TriggerEvent("pNotify:SendNotification",{
		text = (message),
		type = messagetype,
		timeout = (messagetimeout),
		layout = "bottomCenter",
		queue = "global"
	})
	Wait(messagetimeout)
	notifying = false
end