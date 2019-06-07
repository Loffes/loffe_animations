ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

AddEventHandler( "playerConnecting", function(name)
	local identifier = GetPlayerIdentifiers(source)[1]
	MySQL.Async.fetchAll("SELECT * FROM `favoriteanimation` WHERE `identifier` = @identifier",
	{
		['@identifier'] = identifier
	}, function(result)
		if result == nil then
			MySQL.Async.fetchAll("SELECT * FROM `favoriteanimation`", function(resultid)
				local number = 0
				for i=1, #resultid do
					number = number + 1
				end
				MySQL.Sync.execute("INSERT INTO `favoriteanimation` (`id`, `identifier`) VALUES (@id, @identifier)",{['@id'] = number, ['@identifier'] = identifier})
			end)
		end
	end)
end)


RegisterServerEvent('esx_animations:newFavorite')
AddEventHandler('esx_animations:newFavorite', function(lib, dict, scenario, repet, button)
	local identifier = GetPlayerIdentifiers(source)[1]
	MySQL.Async.fetchAll("SELECT * FROM `favoriteanimation` WHERE `identifier` = @identifier",
	{
		['@identifier'] = identifier
	}, function(result)
		local buttonChosen = false
		for i=1, #result do
			if result[i].button == button then
				MySQL.Async.execute("UPDATE favoriteanimation SET lib=@lib,animation=@animation,scenario=@scenario,repet=@repet WHERE id=@id", 
				{['@id'] = result[i].id, ['@lib'] = lib, ['@animation'] = dict, ['@scenario'] = scenario, ['@repet'] = repet})
				buttonChosen = true
			end
		end
		if not buttonChosen then
			MySQL.Async.execute("INSERT INTO favoriteanimation (identifier,lib,animation,scenario,repet,button) VALUES (@identifier, @lib, @animation, @scenario, @repet, @button)",
			{['@identifier'] = identifier, ['@lib'] = lib, ['@animation'] = dict, ['@scenario'] = scenario, ['@repet'] = repet, ['@button'] = button})
		end
	end)
end)

RegisterServerEvent('esx_animations:getFavorite_sv')
AddEventHandler('esx_animations:getFavorite_sv', function(button)
	local src = source
	local identifier = GetPlayerIdentifiers(src)[1]
	MySQL.Async.fetchAll("SELECT * FROM `favoriteanimation` WHERE `identifier` = @identifier",
	{['@identifier'] = identifier, ['@button'] = button}, function(result)
		local found = false
		for i=1, #result do
			if result[i].button == button then
				found = true
				local data = {lib = result[i].lib, animation = result[i].animation, scenario = result[i].scenario}
				TriggerClientEvent('esx_animations:getFavorite_cl', src, data)
			end
		end
		if not found then
			TriggerClientEvent('esx_animations:getFavorite_cl', src, false)
		end
	end)
end)

ESX.RegisterServerCallback('esx_animations:getFavorite', function(source, cb)
	local identifier = GetPlayerIdentifiers(source)[1]
		MySQL.Async.fetchAll("SELECT * FROM `favoriteanimation` WHERE `identifier` = @identifier",
		{
			['@identifier'] = identifier
		}, function(result)
		local data = {
			lib			= result[1].lib,
			animation	= result[1].animation,
			scenario 	= result[1].scenario
		}
		print(data)
		cb(data)
	end)
end)

RegisterServerEvent('esx_animations:sync')
AddEventHandler('esx_animations:sync', function(target, animationLib, animation, animation2, distans, distans2, height)
	local targetPlayer = ESX.GetPlayerFromId(target)

	TriggerClientEvent('esx_animations:syncTarget', targetPlayer.source, source, animationLib, animation2, distans, distans2, height, spin)
	TriggerClientEvent('esx_animations:syncMe', source, animationLib, animation, distans, distans2)
end)

--[[
--]]