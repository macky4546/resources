QBCore = nil

TriggerEvent('QBCore:GetObject', function(obj) QBCore = obj end)


QBCore.Functions.CreateUseableItem("boosterbox", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot, item.info) then
        TriggerClientEvent("Cards:Client:OpenCards", source, item.name)
			local xPlayer = QBCore.Functions.GetPlayer(source)
				--xPlayer.Functions.RemoveItem('boosterbox',1)
				xPlayer.Functions.AddItem('boosterpack',4)
           Citizen.Wait(4000)
        TriggerClientEvent('QBCore:Notify', source, 'You got 4 booster packs!')
            Citizen.Wait(1000)
    end
end)

 RegisterServerEvent("cardshop:Server:Sandslash")
AddEventHandler("cardshop:Server:Sandslash", function(listkey)
    local Player = QBCore.Functions.GetPlayer(source)
    local x = Player.Functions.GetItemByName("sandslash")
        if x.amount < 1 then
            TriggerClientEvent('QBCore:Notify', source, 'You dont have Sandslash!')
        else
            if x.amount > 0 then
        Player.Functions.RemoveItem('sandslash',1)
        Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Sandslash!')
                    end
                end
end)

RegisterServerEvent("cardshop:Server:Dugtrio")
AddEventHandler("cardshop:Server:Dugtrio", function(listkey)
    local Player = QBCore.Functions.GetPlayer(source)
    local x = Player.Functions.GetItemByName("dugtrio")
        if x.amount < 1 then
            TriggerClientEvent('QBCore:Notify', source, 'You dont have Dugtrio!')
        else
            if x.amount > 0 then
        Player.Functions.RemoveItem('dugtrio',1)
        Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Dugtrio!')
                    end
                end
end)

QBCore.Functions.CreateUseableItem("boosterpack", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot, item.info) then
        TriggerClientEvent("Cards:Client:OpenPack", source, item.name)
            Citizen.Wait(4000)
        TriggerClientEvent('QBCore:Notify', source, 'You got 4 cards!')
    end
end)

RegisterServerEvent("Cards:server:boxbuy")
AddEventHandler("Cards:server:boxbuy", function(listkey)
	local xPlayer = QBCore.Functions.GetPlayer(source)
		xPlayer.Functions.RemoveMoney('cash',1250)
		xPlayer.Functions.AddItem('boosterbox',1)
           Citizen.Wait(500)
end)

RegisterServerEvent("Cards:server:packbuy")
AddEventHandler("Cards:server:packbuy", function(listkey)
	local xPlayer = QBCore.Functions.GetPlayer(source)
		xPlayer.Functions.RemoveMoney('cash',400)
		xPlayer.Functions.AddItem('boosterpack',1)
           Citizen.Wait(500)
  end)

RegisterServerEvent("cardshop:Server:boulderSell")
AddEventHandler("cardshop:Server:boulderSell", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local bld = Player.Functions.GetItemByName("boulderbadge")
		if bld.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Boulder Badge!')
        else
			if bld.amount > 0 then
		Player.Functions.RemoveItem('boulderbadge',1)
		Player.Functions.AddMoney('cash',1000)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Boulder Badge!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:cascadeSell")
AddEventHandler("cardshop:Server:cascadeSell", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local cas = Player.Functions.GetItemByName("cascadebadge")
		if cas.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Cascade Badge!')
        else
			if cas.amount > 0 then
		Player.Functions.RemoveItem('cascadebadge',1)
		Player.Functions.AddMoney('cash',1000)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Cascade Badge!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:thunderSell")
AddEventHandler("cardshop:Server:thunderSell", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local tdr = Player.Functions.GetItemByName("thunderbadge")
		if tdr.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Thunder Badge!')
        else
			if tdr.amount > 0 then
		Player.Functions.RemoveItem('thunderbadge',1)
		Player.Functions.AddMoney('cash',1000)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Thunder Badge!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:rainbowSell")
AddEventHandler("cardshop:Server:rainbowSell", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local rbw = Player.Functions.GetItemByName("rainbowbadge")
		if rbw.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Rainbow Badge!')
        else
			if rbw.amount > 0 then
		Player.Functions.RemoveItem('rainbowbadge',1)
		Player.Functions.AddMoney('cash',1000)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Rainbow Badge!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:soulSell")
AddEventHandler("cardshop:Server:soulSell", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local sol = Player.Functions.GetItemByName("soulbadge")
		if sol.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Soul Badge!')
        else
			if sol.amount > 0 then
		Player.Functions.RemoveItem('soulbadge',1)
		Player.Functions.AddMoney('cash',1000)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Soul Badge!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:marshSell")
AddEventHandler("cardshop:Server:marshSell", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local mrsh = Player.Functions.GetItemByName("marshbadge")
		if mrsh.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Marsh Badge!')
        else
			if mrsh.amount > 0 then
		Player.Functions.RemoveItem('marshbadge',1)
		Player.Functions.AddMoney('cash',1000)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Marsh Badge!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:volcanoSell")
AddEventHandler("cardshop:Server:volcanoSell", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local vcno = Player.Functions.GetItemByName("volcanobadge")
		if vcno.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Volcano Badge!')
        else
			if vcno.amount > 0 then
		Player.Functions.RemoveItem('volcanobadge',1)
		Player.Functions.AddMoney('cash',1000)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Volcano Badge!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:earthSell")
AddEventHandler("cardshop:Server:earthSell", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local ert = Player.Functions.GetItemByName("earthbadge")
		if ert.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Earth Badge!')
        else
			if ert.amount > 0 then
		Player.Functions.RemoveItem('earthbadge',1)
		Player.Functions.AddMoney('cash',1000)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Earth Badge!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:trophySell")
AddEventHandler("cardshop:Server:trophySell", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local tpy = Player.Functions.GetItemByName("trophybadge")
		if tpy.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Trophy Badge!')
        else
			if tpy.amount > 0 then
		Player.Functions.RemoveItem('trophybadge',1)
		Player.Functions.AddMoney('cash',15000)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Trophy Badge!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Abra")
AddEventHandler("cardshop:Server:Abra", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local a = Player.Functions.GetItemByName("abra")
		if a.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Abra!')
        else
			if a.amount > 0 then
		Player.Functions.RemoveItem('abra',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold Abra!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Aerodactyl")
AddEventHandler("cardshop:Server:Aerodactyl", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local b = Player.Functions.GetItemByName("aerodactyl")
		if b.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Aerodactyl!')
        else
			if b.amount > 0 then
		Player.Functions.RemoveItem('aerodactyl',1)
		Player.Functions.AddMoney('cash',250)
        TriggerClientEvent('QBCore:Notify', source, 'You sold Aerodactyl!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Alakazam")
AddEventHandler("cardshop:Server:Alakazam", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local c = Player.Functions.GetItemByName("alakazam")
		if c.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Alakazam!')
        else
			if c.amount > 0 then
		Player.Functions.RemoveItem('alakazam',1)
		Player.Functions.AddMoney('cash',250)
        TriggerClientEvent('QBCore:Notify', source, 'You sold Alakazam!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Arbok")
AddEventHandler("cardshop:Server:Arbok", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local d = Player.Functions.GetItemByName("arbok")
		if d.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Arbok Badge!')
        else
			if d.amount > 0 then
		Player.Functions.RemoveItem('arbok',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Arbok Badge!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Arcanine")
AddEventHandler("cardshop:Server:Arcanine", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local e = Player.Functions.GetItemByName("arcanine")
		if e.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Arcanine!')
        else
			if e.amount > 0 then
		Player.Functions.RemoveItem('arcanine',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Arcanine!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Articuno")
AddEventHandler("cardshop:Server:Articuno", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local f = Player.Functions.GetItemByName("articuno")
		if f.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Articuno!')
        else
			if f.amount > 0 then
		Player.Functions.RemoveItem('articuno',1)
		Player.Functions.AddMoney('cash',250)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Articuno!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Beedrill")
AddEventHandler("cardshop:Server:Beedrill", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local g = Player.Functions.GetItemByName("beedrill")
		if g.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Beedrill!')
        else
			if g.amount > 0 then
		Player.Functions.RemoveItem('beedrill',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Beedrill!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Bellsprout")
AddEventHandler("cardshop:Server:Bellsprout", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local h = Player.Functions.GetItemByName("bellsprout")
		if h.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Bellsprout!')
        else
			if h.amount > 0 then
		Player.Functions.RemoveItem('bellsprout',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Bellsprout!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Blastoise")
AddEventHandler("cardshop:Server:Blastoise", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local i = Player.Functions.GetItemByName("blastoise")
		if i.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Blastoise!')
        else
			if i.amount > 0 then
		Player.Functions.RemoveItem('blastoise',1)
		Player.Functions.AddMoney('cash',100)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Blastoise!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Butterfree")
AddEventHandler("cardshop:Server:Butterfree", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local j = Player.Functions.GetItemByName("butterfree")
		if j.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Butterfree!')
        else
			if j.amount > 0 then
		Player.Functions.RemoveItem('butterfree',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Butterfree!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Caterpie")
AddEventHandler("cardshop:Server:Caterpie", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local k = Player.Functions.GetItemByName("Caterpie")
		if k.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont Caterpie!')
        else
			if k.amount > 0 then
		Player.Functions.RemoveItem('Caterpie',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Caterpie!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Chansey")
AddEventHandler("cardshop:Server:Chansey", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local l = Player.Functions.GetItemByName("Chansey")
		if l.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Chansey!')
        else
			if l.amount > 0 then
		Player.Functions.RemoveItem('Chansey',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Chansey!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Charizard")
AddEventHandler("cardshop:Server:Charizard", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local m = Player.Functions.GetItemByName("charizard")
		if m.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Charizard!')
        else
			if m.amount > 0 then
		Player.Functions.RemoveItem('charizard',1)
		Player.Functions.AddMoney('cash',100)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Charizard!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Charmander")
AddEventHandler("cardshop:Server:Charmander", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local n = Player.Functions.GetItemByName("charmander")
		if n.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Charmander!')
        else
			if n.amount > 0 then
		Player.Functions.RemoveItem('charmander',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Charmander!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Charmeleon")
AddEventHandler("cardshop:Server:Charmeleon", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local o = Player.Functions.GetItemByName("charmeleon")
		if o.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Charmeleon!')
        else
			if o.amount > 0 then
		Player.Functions.RemoveItem('charmeleon',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Charmeleon!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Clefable")
AddEventHandler("cardshop:Server:Clefable", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local p = Player.Functions.GetItemByName("clefable")
		if p.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Clefable!')
        else
			if p.amount > 0 then
		Player.Functions.RemoveItem('clefable',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Clefable!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Clefairy")
AddEventHandler("cardshop:Server:Clefairy", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local q = Player.Functions.GetItemByName("clefairy")
		if q.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Clefairy!')
        else
			if q.amount > 0 then
		Player.Functions.RemoveItem('clefairy',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Clefairy!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Cloyster")
AddEventHandler("cardshop:Server:Cloyster", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local r = Player.Functions.GetItemByName("cloyster")
		if r.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Cloyster!')
        else
			if r.amount > 0 then
		Player.Functions.RemoveItem('cloyster',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Cloyster!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Cubone")
AddEventHandler("cardshop:Server:Cubone", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local s = Player.Functions.GetItemByName("cubone")
		if s.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Cubone!')
        else
			if s.amount > 0 then
		Player.Functions.RemoveItem('cubone',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Cubone!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Dewgong")
AddEventHandler("cardshop:Server:Dewgong", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local t = Player.Functions.GetItemByName("dewgong")
		if t.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Dewgong!')
        else
			if t.amount > 0 then
		Player.Functions.RemoveItem('dewgong',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Dewgong!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Diglett")
AddEventHandler("cardshop:Server:Diglett", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local u = Player.Functions.GetItemByName("diglett")
		if u.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Diglett!')
        else
			if u.amount > 0 then
		Player.Functions.RemoveItem('diglett',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Diglett!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Ditto")
AddEventHandler("cardshop:Server:Ditto", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local v = Player.Functions.GetItemByName("ditto")
		if v.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Ditto!')
        else
			if v.amount > 0 then
		Player.Functions.RemoveItem('ditto',1)
		Player.Functions.AddMoney('cash',100)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Ditto!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:soulSell")
AddEventHandler("cardshop:Server:soulSell", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local w = Player.Functions.GetItemByName("soulbadge")
		if w.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Soul Badge!')
        else
			if w.amount > 0 then
		Player.Functions.RemoveItem('soulbadge',1)
		Player.Functions.AddMoney('cash',1000)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Soul Badge!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Dodrio")
AddEventHandler("cardshop:Server:Dodrio", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local x = Player.Functions.GetItemByName("dodrio")
		if x.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Dodrio!')
        else
			if x.amount > 0 then
		Player.Functions.RemoveItem('dodrio',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Dodrio!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Doduo")
AddEventHandler("cardshop:Server:Doduo", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local y = Player.Functions.GetItemByName("doduo")
		if y.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Doduo!')
        else
			if y.amount > 0 then
		Player.Functions.RemoveItem('doduo',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Doduo!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Dragonair")
AddEventHandler("cardshop:Server:Dragonair", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local z = Player.Functions.GetItemByName("dragonair")
		if z.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Dragonair!')
        else
			if z.amount > 0 then
		Player.Functions.RemoveItem('dragonair',1)
		Player.Functions.AddMoney('cash',250)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Dragonair!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Dragonite")
AddEventHandler("cardshop:Server:Dragonite", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local aa = Player.Functions.GetItemByName("dragonite")
		if aa.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Dragonite!')
        else
			if aa.amount > 0 then
		Player.Functions.RemoveItem('dragonite',1)
		Player.Functions.AddMoney('cash',250)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Dragonite!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Dratini")
AddEventHandler("cardshop:Server:Dratini", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local ab = Player.Functions.GetItemByName("dratini")
		if ab.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Dratini!')
        else
			if ab.amount > 0 then
		Player.Functions.RemoveItem('dratini',1)
		Player.Functions.AddMoney('cash',250)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Dratini!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Drowzee")
AddEventHandler("cardshop:Server:Drowzee", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local ac = Player.Functions.GetItemByName("drowzee")
		if ac.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Drowzee!')
        else
			if ac.amount > 0 then
		Player.Functions.RemoveItem('drowzee',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Drowzee!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Eevee")
AddEventHandler("cardshop:Server:Eevee", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local ad = Player.Functions.GetItemByName("eevee")
		if ad.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Eevee!')
        else
			if ad.amount > 0 then
		Player.Functions.RemoveItem('eevee',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Eevee!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Ekans")
AddEventHandler("cardshop:Server:Ekans", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local ae = Player.Functions.GetItemByName("ekans")
		if ae.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Ekans!')
        else
			if ae.amount > 0 then
		Player.Functions.RemoveItem('ekans',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Ekans!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Electabuzz")
AddEventHandler("cardshop:Server:Electabuzz", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local af = Player.Functions.GetItemByName("electabuzz")
		if af.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Electabuzz!')
        else
			if af.amount > 0 then
		Player.Functions.RemoveItem('electabuzz',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Electabuzz!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Electrode")
AddEventHandler("cardshop:Server:Electrode", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local ag = Player.Functions.GetItemByName("electrode")
		if ag.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Electrode!')
        else
			if ag.amount > 0 then
		Player.Functions.RemoveItem('electrode',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Electrode!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Exeggcute")
AddEventHandler("cardshop:Server:Exeggcute", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local ah = Player.Functions.GetItemByName("exeggcute")
		if ah.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Exeggcute!')
        else
			if ah.amount > 0 then
		Player.Functions.RemoveItem('exeggcute',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Exeggcute!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Exeggutor")
AddEventHandler("cardshop:Server:Exeggutor", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local ai = Player.Functions.GetItemByName("exeggutor")
		if ai.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Exeggutor!')
        else
			if ai.amount > 0 then
		Player.Functions.RemoveItem('exeggutor',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Exeggutor!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Farfetchd")
AddEventHandler("cardshop:Server:Farfetchd", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local aj = Player.Functions.GetItemByName("farfetchd")
		if aj.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Farfetchd!')
        else
			if aj.amount > 0 then
		Player.Functions.RemoveItem('farfetchd',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Farfetchd!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Fearow")
AddEventHandler("cardshop:Server:Fearow", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local ak = Player.Functions.GetItemByName("fearow")
		if ak.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Fearow!')
        else
			if ak.amount > 0 then
		Player.Functions.RemoveItem('fearow',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Fearow!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Flareon")
AddEventHandler("cardshop:Server:Flareon", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local al = Player.Functions.GetItemByName("flareon")
		if al.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Flareon!')
        else
			if al.amount > 0 then
		Player.Functions.RemoveItem('flareon',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Flareon!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Gastly")
AddEventHandler("cardshop:Server:Gastly", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local am = Player.Functions.GetItemByName("gastly")
		if am.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Gastly!')
        else
			if am.amount > 0 then
		Player.Functions.RemoveItem('gastly',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Gastly!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Gengar")
AddEventHandler("cardshop:Server:Gengar", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local an = Player.Functions.GetItemByName("gengar")
		if an.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Gengar!')
        else
			if an.amount > 0 then
		Player.Functions.RemoveItem('gengar',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Gengar!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Geodude")
AddEventHandler("cardshop:Server:Geodude", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local ao = Player.Functions.GetItemByName("geodude")
		if ao.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Geodude!')
        else
			if ao.amount > 0 then
		Player.Functions.RemoveItem('geodude',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Geodude!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Gloom")
AddEventHandler("cardshop:Server:Gloom", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local ap = Player.Functions.GetItemByName("gloom")
		if ap.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Gloom!')
        else
			if ap.amount > 0 then
		Player.Functions.RemoveItem('gloom',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Gloom!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Golbat")
AddEventHandler("cardshop:Server:Golbat", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local aq = Player.Functions.GetItemByName("golbat")
		if aq.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Golbat!')
        else
			if aq.amount > 0 then
		Player.Functions.RemoveItem('golbat',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Golbat!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Goldeen")
AddEventHandler("cardshop:Server:Goldeen", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local ar = Player.Functions.GetItemByName("goldeen")
		if ar.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Goldeen!')
        else
			if ar.amount > 0 then
		Player.Functions.RemoveItem('goldeen',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Goldeen!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Golduck")
AddEventHandler("cardshop:Server:Golduck", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local as = Player.Functions.GetItemByName("golduck")
		if as.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Golduck!')
        else
			if as.amount > 0 then
		Player.Functions.RemoveItem('golduck',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Golduck!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Golem")
AddEventHandler("cardshop:Server:Golem", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local at = Player.Functions.GetItemByName("golem")
		if at.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Golem!')
        else
			if at.amount > 0 then
		Player.Functions.RemoveItem('golem',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Golem!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Graveler")
AddEventHandler("cardshop:Server:Graveler", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local au = Player.Functions.GetItemByName("graveler")
		if au.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Graveler!')
        else
			if au.amount > 0 then
		Player.Functions.RemoveItem('graveler',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Graveler!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Grimer")
AddEventHandler("cardshop:Server:Grimer", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local av = Player.Functions.GetItemByName("grimer")
		if av.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Grimer!')
        else
			if av.amount > 0 then
		Player.Functions.RemoveItem('grimer',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Grimer!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Growlithe")
AddEventHandler("cardshop:Server:Growlithe", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local aw = Player.Functions.GetItemByName("growlithe")
		if aw.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Growlithe!')
        else
			if aw.amount > 0 then
		Player.Functions.RemoveItem('growlithe',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Growlithe!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Gyrarados")
AddEventHandler("cardshop:Server:Gyrarados", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local ax = Player.Functions.GetItemByName("gyrarados")
		if ax.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Gyrarados!')
        else
			if ax.amount > 0 then
		Player.Functions.RemoveItem('gyrarados',1)
		Player.Functions.AddMoney('cash',100)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Gyrarados!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Haunter")
AddEventHandler("cardshop:Server:Haunter", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local ay = Player.Functions.GetItemByName("haunter")
		if ay.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Haunter!')
        else
			if ay.amount > 0 then
		Player.Functions.RemoveItem('haunter',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Haunter!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Hitmonchan")
AddEventHandler("cardshop:Server:Hitmonchan", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local az = Player.Functions.GetItemByName("hitmonchan")
		if az.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Hitmonchan!')
        else
			if az.amount > 0 then
		Player.Functions.RemoveItem('hitmonchan',1)
		Player.Functions.AddMoney('cash',100)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Hitmonchan!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Hitmonlee")
AddEventHandler("cardshop:Server:Hitmonlee", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local aaa = Player.Functions.GetItemByName("hitmonlee")
		if aaa.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Hitmonlee!')
        else
			if aaa.amount > 0 then
		Player.Functions.RemoveItem('hitmonlee',1)
		Player.Functions.AddMoney('cash',100)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Hitmonlee!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Horsea")
AddEventHandler("cardshop:Server:Horsea", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local aab = Player.Functions.GetItemByName("horsea")
		if aab.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Horsea!')
        else
			if aab.amount > 0 then
		Player.Functions.RemoveItem('horsea',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Horsea!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Hypno")
AddEventHandler("cardshop:Server:Hypno", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local aac = Player.Functions.GetItemByName("hypno")
		if aac.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Hypno!')
        else
			if aac.amount > 0 then
		Player.Functions.RemoveItem('hypno',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Hypno!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Ivysaur")
AddEventHandler("cardshop:Server:Ivysaur", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local aad = Player.Functions.GetItemByName("ivysaur")
		if aad.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Ivysaur!')
        else
			if aad.amount > 0 then
		Player.Functions.RemoveItem('ivysaur',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Ivysaur!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Jigglypuff")
AddEventHandler("cardshop:Server:Jigglypuff", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local aae = Player.Functions.GetItemByName("jigglypuff")
		if aae.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Jigglypuff!')
        else
			if aae.amount > 0 then
		Player.Functions.RemoveItem('jigglypuff',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Jigglypuff!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Jolteon")
AddEventHandler("cardshop:Server:Jolteon", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local aaf = Player.Functions.GetItemByName("jolteon")
		if aaf.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Jolteon!')
        else
			if aaf.amount > 0 then
		Player.Functions.RemoveItem('jolteon',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Jolteon!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Jynx")
AddEventHandler("cardshop:Server:Jynx", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local aag = Player.Functions.GetItemByName("jynx")
		if aag.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Jynx!')
        else
			if aag.amount > 0 then
		Player.Functions.RemoveItem('jynx',1)
		Player.Functions.AddMoney('cash',100)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Jynx!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Kabuto")
AddEventHandler("cardshop:Server:Kabuto", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local aah = Player.Functions.GetItemByName("kabuto")
		if aah.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Kabuto!')
        else
			if aah.amount > 0 then
		Player.Functions.RemoveItem('kabuto',1)
		Player.Functions.AddMoney('cash',250)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Kabuto!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Kabutops")
AddEventHandler("cardshop:Server:Kabutops", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local aai = Player.Functions.GetItemByName("kabutops")
		if aai.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Kabutops!')
        else
			if aai.amount > 0 then
		Player.Functions.RemoveItem('kabutops',1)
		Player.Functions.AddMoney('cash',250)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Kabutops!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Kadabra")
AddEventHandler("cardshop:Server:Kadabra", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local aaj = Player.Functions.GetItemByName("kadabra")
		if aaj.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Kadabra!')
        else
			if aaj.amount > 0 then
		Player.Functions.RemoveItem('kadabra',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Kadabra!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Kakuna")
AddEventHandler("cardshop:Server:Kakuna", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local aak = Player.Functions.GetItemByName("kakuna")
		if aak.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Kakuna!')
        else
			if aak.amount > 0 then
		Player.Functions.RemoveItem('kakuna',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Kakuna!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Kangaskhan")
AddEventHandler("cardshop:Server:Kangaskhan", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local aal = Player.Functions.GetItemByName("kangaskhan")
		if aal.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Kangaskhan!')
        else
			if aal.amount > 0 then
		Player.Functions.RemoveItem('kangaskhan',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Kangaskhan!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Kingler")
AddEventHandler("cardshop:Server:Kingler", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local aam = Player.Functions.GetItemByName("kingler")
		if aam.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Kingler!')
        else
			if aam.amount > 0 then
		Player.Functions.RemoveItem('kingler',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Kingler!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Koffing")
AddEventHandler("cardshop:Server:Koffing", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local aan = Player.Functions.GetItemByName("koffing")
		if aan.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Koffing!')
        else
			if aan.amount > 0 then
		Player.Functions.RemoveItem('koffing',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Koffing!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Krabby")
AddEventHandler("cardshop:Server:Krabby", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local aao = Player.Functions.GetItemByName("krabby")
		if aao.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Krabby!')
        else
			if aao.amount > 0 then
		Player.Functions.RemoveItem('krabby',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Krabby!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Lapras")
AddEventHandler("cardshop:Server:Lapras", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local aap = Player.Functions.GetItemByName("lapras")
		if aap.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Lapras!')
        else
			if aap.amount > 0 then
		Player.Functions.RemoveItem('lapras',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Lapras!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Lickitung")
AddEventHandler("cardshop:Server:Lickitung", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local aaq = Player.Functions.GetItemByName("lickitung")
		if aaq.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Lickitung!')
        else
			if aaq.amount > 0 then
		Player.Functions.RemoveItem('lickitung',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Lickitung!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Machamp")
AddEventHandler("cardshop:Server:Machamp", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local aar = Player.Functions.GetItemByName("machamp")
		if aar.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Machamp!')
        else
			if aar.amount > 0 then
		Player.Functions.RemoveItem('machamp',1)
		Player.Functions.AddMoney('cash',100)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Machamp!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Machoke")
AddEventHandler("cardshop:Server:Machoke", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local aas = Player.Functions.GetItemByName("machoke")
		if aas.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Machoke!')
        else
			if aas.amount > 0 then
		Player.Functions.RemoveItem('machoke',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Machoke!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Machop")
AddEventHandler("cardshop:Server:Machop", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local aat = Player.Functions.GetItemByName("machop")
		if aat.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Machop!')
        else
			if aat.amount > 0 then
		Player.Functions.RemoveItem('machop',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Machop!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Magikarp")
AddEventHandler("cardshop:Server:Magikarp", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local aau = Player.Functions.GetItemByName("magikarp")
		if aau.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Magikarp!')
        else
			if aau.amount > 0 then
		Player.Functions.RemoveItem('magikarp',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Magikarp!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Magmar")
AddEventHandler("cardshop:Server:Magmar", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local aav = Player.Functions.GetItemByName("magmar")
		if aav.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Magmar!')
        else
			if aav.amount > 0 then
		Player.Functions.RemoveItem('magmar',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Magmar!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Magnemite")
AddEventHandler("cardshop:Server:Magnemite", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local aaw = Player.Functions.GetItemByName("magnemite")
		if aaw.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Magnemite!')
        else
			if aaw.amount > 0 then
		Player.Functions.RemoveItem('magnemite',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Magnemite!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Magneton")
AddEventHandler("cardshop:Server:Magneton", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local aax = Player.Functions.GetItemByName("magneton")
		if aax.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Magneton!')
        else
			if aax.amount > 0 then
		Player.Functions.RemoveItem('magneton',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Magneton!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Mankey")
AddEventHandler("cardshop:Server:Mankey", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local aay = Player.Functions.GetItemByName("mankey")
		if aay.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Mankey!')
        else
			if aay.amount > 0 then
		Player.Functions.RemoveItem('mankey',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Mankey!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Marowak")
AddEventHandler("cardshop:Server:Marowak", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local aaz = Player.Functions.GetItemByName("marowak")
		if aaz.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Marowak!')
        else
			if aaz.amount > 0 then
		Player.Functions.RemoveItem('marowak',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Marowak!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Meowth")
AddEventHandler("cardshop:Server:Meowth", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local aba = Player.Functions.GetItemByName("meowth")
		if aba.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Meowth!')
        else
			if aba.amount > 0 then
		Player.Functions.RemoveItem('meowth',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Meowth!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Metapod")
AddEventHandler("cardshop:Server:Metapod", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local abb = Player.Functions.GetItemByName("metapod")
		if abb.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Metapod!')
        else
			if abb.amount > 0 then
		Player.Functions.RemoveItem('metapod',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Metapod!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Mew")
AddEventHandler("cardshop:Server:Mew", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local ba = Player.Functions.GetItemByName("mew")
		if ba.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Mew!')
        else
			if ba.amount > 0 then
		Player.Functions.RemoveItem('mew',1)
		Player.Functions.AddMoney('cash',250)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Mew!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Mewtwo")
AddEventHandler("cardshop:Server:Mewtwo", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local bb = Player.Functions.GetItemByName("mewtwo")
		if bb.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Mewtwo!')
        else
			if bb.amount > 0 then
		Player.Functions.RemoveItem('mewtwo',1)
		Player.Functions.AddMoney('cash',250)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Mewtwo!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Moltres")
AddEventHandler("cardshop:Server:Moltres", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local bc = Player.Functions.GetItemByName("moltres")
		if bc.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Moltres!')
        else
			if bc.amount > 0 then
		Player.Functions.RemoveItem('moltres',1)
		Player.Functions.AddMoney('cash',250)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Moltres!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Mime")
AddEventHandler("cardshop:Server:Mime", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local bd = Player.Functions.GetItemByName("mr_mime")
		if bd.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Mr. Mime!')
        else
			if bd.amount > 0 then
		Player.Functions.RemoveItem('mr_mime',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Mr. Mime!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Muk")
AddEventHandler("cardshop:Server:Muk", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local be = Player.Functions.GetItemByName("muk")
		if be.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Muk!')
        else
			if be.amount > 0 then
		Player.Functions.RemoveItem('muk',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Muk!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:NidoKing")
AddEventHandler("cardshop:Server:NidoKing", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local bf = Player.Functions.GetItemByName("nidoKing")
		if bf.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have NidoKing!')
        else
			if bf.amount > 0 then
		Player.Functions.RemoveItem('nidoKing',1)
		Player.Functions.AddMoney('cash',100)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a NidoKing!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:NidoQueen")
AddEventHandler("cardshop:Server:NidoQueen", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local bg = Player.Functions.GetItemByName("NidoQueen")
		if bg.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have nidoQueen!')
        else
			if bg.amount > 0 then
		Player.Functions.RemoveItem('nidoQueen',1)
		Player.Functions.AddMoney('cash',100)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a NidoQueen!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Nidorina")
AddEventHandler("cardshop:Server:Nidorina", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local bh = Player.Functions.GetItemByName("nidorina")
		if bh.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Nidorina!')
        else
			if bh.amount > 0 then
		Player.Functions.RemoveItem('nidorina',1)
		Player.Functions.AddMoney('cash',100)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Nidorina!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Nidorino")
AddEventHandler("cardshop:Server:Nidorino", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local bi = Player.Functions.GetItemByName("nidorino")
		if bi.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Nidorino!')
        else
			if bi.amount > 0 then
		Player.Functions.RemoveItem('nidorino',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Nidorino!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Ninetails")
AddEventHandler("cardshop:Server:Ninetails", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local bj = Player.Functions.GetItemByName("ninetails")
		if bj.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have ninetails!')
        else
			if bj.amount > 0 then
		Player.Functions.RemoveItem('ninetails',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Ninetails!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Oddish")
AddEventHandler("cardshop:Server:Oddish", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local bk = Player.Functions.GetItemByName("oddish")
		if bk.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Oddish!')
        else
			if bk.amount > 0 then
		Player.Functions.RemoveItem('oddish',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Oddish!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Omanyte")
AddEventHandler("cardshop:Server:Omanyte", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local bl = Player.Functions.GetItemByName("omanyte")
		if bl.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Omanyte!')
        else
			if bl.amount > 0 then
		Player.Functions.RemoveItem('omanyte',1)
		Player.Functions.AddMoney('cash',250)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Omanyte!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Omastar")
AddEventHandler("cardshop:Server:Omastar", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local bm = Player.Functions.GetItemByName("omastar")
		if bm.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Omastar!')
        else
			if bm.amount > 0 then
		Player.Functions.RemoveItem('omastar',1)
		Player.Functions.AddMoney('cash',250)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Omastar!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Onix")
AddEventHandler("cardshop:Server:Onix", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local bn = Player.Functions.GetItemByName("onix")
		if bn.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Onix!')
        else
			if bn.amount > 0 then
		Player.Functions.RemoveItem('onix',1)
		Player.Functions.AddMoney('cash',100)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Onix!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Paras")
AddEventHandler("cardshop:Server:Paras", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local bo = Player.Functions.GetItemByName("paras")
		if bo.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Paras!')
        else
			if bo.amount > 0 then
		Player.Functions.RemoveItem('paras',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Paras!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Parasect")
AddEventHandler("cardshop:Server:Parasect", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local bp = Player.Functions.GetItemByName("parasect")
		if bp.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Parasect!')
        else
			if bp.amount > 0 then
		Player.Functions.RemoveItem('parasect',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Parasect!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Persian")
AddEventHandler("cardshop:Server:Persian", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local bq = Player.Functions.GetItemByName("persian")
		if bq.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Persian!')
        else
			if bq.amount > 0 then
		Player.Functions.RemoveItem('persian',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Persian!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Pidgeotto")
AddEventHandler("cardshop:Server:Pidgeotto", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local br = Player.Functions.GetItemByName("pidgeotto")
		if br.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Pidgeotto!')
        else
			if br.amount > 0 then
		Player.Functions.RemoveItem('pidgeotto',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Pidgeotto!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Pidgey")
AddEventHandler("cardshop:Server:Pidgey", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local bs = Player.Functions.GetItemByName("pidgey")
		if bs.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Pidgey!')
        else
			if bs.amount > 0 then
		Player.Functions.RemoveItem('pidgey',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Pidgey!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Pikachu")
AddEventHandler("cardshop:Server:Pikachu", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local bt = Player.Functions.GetItemByName("pikachu")
		if bt.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Pikachu!')
        else
			if bt.amount > 0 then
		Player.Functions.RemoveItem('pikachu',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Pikachu!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Hitmonlee")
AddEventHandler("cardshop:Server:Hitmonlee", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local bu = Player.Functions.GetItemByName("pinsir")
		if bu.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Pinsir!')
        else
			if bu.amount > 0 then
		Player.Functions.RemoveItem('pinsir',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Pinsir!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Poliwag")
AddEventHandler("cardshop:Server:Poliwag", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local bv = Player.Functions.GetItemByName("poliwag")
		if bv.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Poliwag!')
        else
			if bv.amount > 0 then
		Player.Functions.RemoveItem('poliwag',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Poliwag!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Poliwhirl")
AddEventHandler("cardshop:Server:Poliwhirl", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local bw = Player.Functions.GetItemByName("poliwhirl")
		if bw.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Poliwhirl!')
        else
			if bw.amount > 0 then
		Player.Functions.RemoveItem('poliwhirl',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Poliwhirl!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Poliwrath")
AddEventHandler("cardshop:Server:Poliwrath", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local bx = Player.Functions.GetItemByName("poliwrath")
		if bx.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Poliwrath!')
        else
			if bx.amount > 0 then
		Player.Functions.RemoveItem('poliwrath',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Poliwrath!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Ponyta")
AddEventHandler("cardshop:Server:Ponyta", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local by = Player.Functions.GetItemByName("ponyta")
		if by.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Ponyta!')
        else
			if by.amount > 0 then
		Player.Functions.RemoveItem('ponyta',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Ponyta!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Porygon")
AddEventHandler("cardshop:Server:Porygon", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local bz = Player.Functions.GetItemByName("porygon")
		if bz.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Porygon!')
        else
			if bz.amount > 0 then
		Player.Functions.RemoveItem('porygon',1)
		Player.Functions.AddMoney('cash',250)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Porygon!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Primeape")
AddEventHandler("cardshop:Server:Primeape", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local cb = Player.Functions.GetItemByName("primeape")
		if cb.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Primeape!')
        else
			if cb.amount > 0 then
		Player.Functions.RemoveItem('primeape',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Primeape!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Psyduck")
AddEventHandler("cardshop:Server:Psyduck", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local cc = Player.Functions.GetItemByName("psyduck")
		if cc.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Psyduck!')
        else
			if cc.amount > 0 then
		Player.Functions.RemoveItem('psyduck',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Psyduck!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Raichu")
AddEventHandler("cardshop:Server:Raichu", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local cd = Player.Functions.GetItemByName("raichu")
		if cd.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Raichu!')
        else
			if cd.amount > 0 then
		Player.Functions.RemoveItem('raichu',1)
		Player.Functions.AddMoney('cash',100)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Raichu!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Rapidash")
AddEventHandler("cardshop:Server:Rapidash", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local ce = Player.Functions.GetItemByName("rapidash")
		if ce.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Rapidash!')
        else
			if ce.amount > 0 then
		Player.Functions.RemoveItem('rapidash',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Rapidash!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Raticate")
AddEventHandler("cardshop:Server:Raticate", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local cf = Player.Functions.GetItemByName("raticate")
		if cf.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Raticate!')
        else
			if cf.amount > 0 then
		Player.Functions.RemoveItem('raticate',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Raticate!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Rattata")
AddEventHandler("cardshop:Server:Rattata", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local cg = Player.Functions.GetItemByName("rattata")
		if cg.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Rattata!')
        else
			if cg.amount > 0 then
		Player.Functions.RemoveItem('rattata',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Rattata!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Rhydon")
AddEventHandler("cardshop:Server:Rhydon", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local ch = Player.Functions.GetItemByName("rhydon")
		if ch.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Rhydon!')
        else
			if ch.amount > 0 then
		Player.Functions.RemoveItem('rhydon',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Rhydon!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Rhydon")
AddEventHandler("cardshop:Server:Rhydon", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local ci = Player.Functions.GetItemByName("rhydon")
		if ci.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Rhydon!')
        else
			if ci.amount > 0 then
		Player.Functions.RemoveItem('rhydon',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Rhydon!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Rhyhorn")
AddEventHandler("cardshop:Server:Rhyhorn", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local cj = Player.Functions.GetItemByName("rhyhorn")
		if cj.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Rhyhorn!')
        else
			if cj.amount > 0 then
		Player.Functions.RemoveItem('rhyhorn',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Rhyhorn!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Sandshrew")
AddEventHandler("cardshop:Server:Sandshrew", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local ck = Player.Functions.GetItemByName("sandshrew")
		if ck.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Sandshrew!')
        else
			if ck.amount > 0 then
		Player.Functions.RemoveItem('sandshrew',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Sandshrew!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Scyther")
AddEventHandler("cardshop:Server:Scyther", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local cl = Player.Functions.GetItemByName("scyther")
		if cl.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Scyther!')
        else
			if cl.amount > 0 then
		Player.Functions.RemoveItem('scyther',1)
		Player.Functions.AddMoney('cash',100)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Scyther!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Seadra")
AddEventHandler("cardshop:Server:Seadra", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local cm = Player.Functions.GetItemByName("seadra")
		if cm.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Seadra!')
        else
			if cm.amount > 0 then
		Player.Functions.RemoveItem('seadra',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Seadra!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Seaking")
AddEventHandler("cardshop:Server:Seaking", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local cn = Player.Functions.GetItemByName("seaking")
		if cn.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Seaking!')
        else
			if cn.amount > 0 then
		Player.Functions.RemoveItem('seaking',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Seaking!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Seel")
AddEventHandler("cardshop:Server:Seel", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local co = Player.Functions.GetItemByName("seel")
		if co.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Seel!')
        else
			if co.amount > 0 then
		Player.Functions.RemoveItem('seel',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Seel!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Shellder")
AddEventHandler("cardshop:Server:Shellder", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local cp = Player.Functions.GetItemByName("shellder")
		if cp.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Shellder!')
        else
			if cp.amount > 0 then
		Player.Functions.RemoveItem('shellder',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Shellder!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Slowbro")
AddEventHandler("cardshop:Server:Slowbro", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local cq = Player.Functions.GetItemByName("slowbro")
		if cq.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Slowbro!')
        else
			if cq.amount > 0 then
		Player.Functions.RemoveItem('slowbro',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Slowbro!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Slowpoke")
AddEventHandler("cardshop:Server:Slowpoke", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local cr = Player.Functions.GetItemByName("slowpoke")
		if cr.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Slowpoke!')
        else
			if cr.amount > 0 then
		Player.Functions.RemoveItem('slowpoke',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Slowpoke!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Snorlax")
AddEventHandler("cardshop:Server:Snorlax", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local cs = Player.Functions.GetItemByName("snorlax")
		if cs.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Snorlax!')
        else
			if cs.amount > 0 then
		Player.Functions.RemoveItem('snorlax',1)
		Player.Functions.AddMoney('cash',250)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Snorlax!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Spearow")
AddEventHandler("cardshop:Server:Spearow", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local ct = Player.Functions.GetItemByName("spearow")
		if ct.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Spearow!')
        else
			if ct.amount > 0 then
		Player.Functions.RemoveItem('spearow',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Spearow!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Squirtle")
AddEventHandler("cardshop:Server:Squirtle", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local cu = Player.Functions.GetItemByName("squirtle")
		if cu.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Squirtle!')
        else
			if cu.amount > 0 then
		Player.Functions.RemoveItem('squirtle',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Squirtle!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Starmie")
AddEventHandler("cardshop:Server:Starmie", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local cv = Player.Functions.GetItemByName("starmie")
		if cv.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Starmie!')
        else
			if cv.amount > 0 then
		Player.Functions.RemoveItem('starmie',1)
		Player.Functions.AddMoney('cash',100)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Starmie!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Staryu")
AddEventHandler("cardshop:Server:Staryu", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local cw = Player.Functions.GetItemByName("staryu")
		if cw.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Staryu!')
        else
			if cw.amount > 0 then
		Player.Functions.RemoveItem('staryu',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Staryu!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Tangela")
AddEventHandler("cardshop:Server:Tangela", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local cx = Player.Functions.GetItemByName("tangela")
		if cx.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Tangela!')
        else
			if cx.amount > 0 then
		Player.Functions.RemoveItem('tangela',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Tangela!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Tauros")
AddEventHandler("cardshop:Server:Tauros", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local cy = Player.Functions.GetItemByName("tauros")
		if cy.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Tauros!')
        else
			if cy.amount > 0 then
		Player.Functions.RemoveItem('tauros',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Tauros!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Tentacool")
AddEventHandler("cardshop:Server:Tentacool", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local cz = Player.Functions.GetItemByName("tentacool")
		if cz.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Tentacool!')
        else
			if cz.amount > 0 then
		Player.Functions.RemoveItem('tentacool',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Tentacool!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Tentacruel")
AddEventHandler("cardshop:Server:Tentacruel", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local da = Player.Functions.GetItemByName("tentacruel")
		if da.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Tentacruel!')
        else
			if da.amount > 0 then
		Player.Functions.RemoveItem('tentacruel',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Tentacruel!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Togepi")
AddEventHandler("cardshop:Server:Togepi", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local db = Player.Functions.GetItemByName("togepi")
		if db.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Togepi!')
        else
			if db.amount > 0 then
		Player.Functions.RemoveItem('togepi',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Togepi!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Vaporeon")
AddEventHandler("cardshop:Server:Vaporeon", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local dc = Player.Functions.GetItemByName("vaporeon")
		if dc.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Vaporeon!')
        else
			if dc.amount > 0 then
		Player.Functions.RemoveItem('vaporeon',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Vaporeon!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Venomoth")
AddEventHandler("cardshop:Server:Venomoth", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local dd = Player.Functions.GetItemByName("venomoth")
		if dd.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Venomoth!')
        else
			if dd.amount > 0 then
		Player.Functions.RemoveItem('venomoth',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Venomoth!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Venonat")
AddEventHandler("cardshop:Server:Venonat", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local de = Player.Functions.GetItemByName("venonat")
		if de.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Venonat!')
        else
			if de.amount > 0 then
		Player.Functions.RemoveItem('venonat',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Venonat!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Venusaur")
AddEventHandler("cardshop:Server:Venusaur", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local df = Player.Functions.GetItemByName("venusaur")
		if df.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Venusaur!')
        else
			if df.amount > 0 then
		Player.Functions.RemoveItem('venusaur',1)
		Player.Functions.AddMoney('cash',100)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Venusaur!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Victreebel")
AddEventHandler("cardshop:Server:Victreebel", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local dg = Player.Functions.GetItemByName("victreebel")
		if dg.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Victreebel!')
        else
			if dg.amount > 0 then
		Player.Functions.RemoveItem('victreebel',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Victreebel!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Vileplume")
AddEventHandler("cardshop:Server:Vileplume", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local dh = Player.Functions.GetItemByName("vileplume")
		if dh.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Vileplume!')
        else
			if dh.amount > 0 then
		Player.Functions.RemoveItem('vileplume',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Vileplume!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Voltorb")
AddEventHandler("cardshop:Server:Voltorb", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local di = Player.Functions.GetItemByName("voltorb")
		if di.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Voltorb!')
        else
			if di.amount > 0 then
		Player.Functions.RemoveItem('voltorb',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Voltorb!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Vulpix")
AddEventHandler("cardshop:Server:Vulpix", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local dj = Player.Functions.GetItemByName("vulpix")
		if dj.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Vulpix!')
        else
			if dj.amount > 0 then
		Player.Functions.RemoveItem('vulpix',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Vulpix!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Wartortle")
AddEventHandler("cardshop:Server:Wartortle", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local dk = Player.Functions.GetItemByName("wartortle")
		if dk.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Wartortle!')
        else
			if dk.amount > 0 then
		Player.Functions.RemoveItem('wartortle',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Wartortle!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Weedle")
AddEventHandler("cardshop:Server:Weedle", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local dl = Player.Functions.GetItemByName("weedle")
		if dl.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Weedle!')
        else
			if dl.amount > 0 then
		Player.Functions.RemoveItem('weedle',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Weedle!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Weepinbell")
AddEventHandler("cardshop:Server:Weepinbell", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local dm = Player.Functions.GetItemByName("weepinbell")
		if dm.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Weepinbell!')
        else
			if dm.amount > 0 then
		Player.Functions.RemoveItem('weepinbell',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Weepinbell!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Weezing")
AddEventHandler("cardshop:Server:Weezing", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local dn = Player.Functions.GetItemByName("weezing")
		if dn.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Weezing!')
        else
			if dn.amount > 0 then
		Player.Functions.RemoveItem('weezing',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Weezing!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Wigglytuff")
AddEventHandler("cardshop:Server:Wigglytuff", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local dp = Player.Functions.GetItemByName("wigglytuff")
		if dp.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Wigglytuff!')
        else
			if dp.amount > 0 then
		Player.Functions.RemoveItem('wigglytuff',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Wigglytuff!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Zapdos")
AddEventHandler("cardshop:Server:Zapdos", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local dq = Player.Functions.GetItemByName("zapdos")
		if dq.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Zapdos!')
        else
			if dq.amount > 0 then
		Player.Functions.RemoveItem('zapdos',1)
		Player.Functions.AddMoney('cash',250)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Zapdos!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:Zubat")
AddEventHandler("cardshop:Server:Zubat", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local dr = Player.Functions.GetItemByName("zubat")
		if dr.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Zubat!')
        else
			if dr.amount > 0 then
		Player.Functions.RemoveItem('zubat',1)
		Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Zubat!')
					end
				end
	end)

	RegisterServerEvent("cardshop:Server:Bulbasaur")
AddEventHandler("cardshop:Server:Bulbasaur", function(listkey)
    local Player = QBCore.Functions.GetPlayer(source)
    local j = Player.Functions.GetItemByName("bulbasaur")
        if j.amount < 1 then
            TriggerClientEvent('QBCore:Notify', source, 'You dont have bulbasaur!')
        else
            if j.amount > 0 then
        Player.Functions.RemoveItem('bulbasaur',1)
        Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Bulbasaur!')
                    end
                end
    end)

RegisterServerEvent("cardshop:Server:Nidoran")
AddEventHandler("cardshop:Server:Nidoran", function(listkey)
    local Player = QBCore.Functions.GetPlayer(source)
    local j = Player.Functions.GetItemByName("nidoran")
        if j.amount < 1 then
            TriggerClientEvent('QBCore:Notify', source, 'You dont have Nidoran!')
        else
            if j.amount > 0 then
        Player.Functions.RemoveItem('nidoran',1)
        Player.Functions.AddMoney('cash',50)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Nidoran!')
                    end
                end
    end)

	RegisterServerEvent("cardshop:Server:chav")
AddEventHandler("cardshop:Server:chav", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local dc = Player.Functions.GetItemByName("charizardv")
		if dc.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have charizard v!')
        else
			if dc.amount > 0 then
		Player.Functions.RemoveItem('charizardv',1)
		Player.Functions.AddMoney('cash',700)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a charizard v!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:chavmax")
AddEventHandler("cardshop:Server:chavmax", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local dd = Player.Functions.GetItemByName("vmaxcharizard")
		if dd.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have vmax charizard!')
        else
			if dd.amount > 0 then
		Player.Functions.RemoveItem('vmaxcharizard',1)
		Player.Functions.AddMoney('cash',1300)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a vmax charizard!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:chavmaxr")
AddEventHandler("cardshop:Server:chavmaxr", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local de = Player.Functions.GetItemByName("rainbowvmaxcharizard")
		if de.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have rainbow vmax charizard!')
        else
			if de.amount > 0 then
		Player.Functions.RemoveItem('rainbowvmaxcharizard',1)
		Player.Functions.AddMoney('cash',2700)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a rainbow vmax charizard!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:mewv")
AddEventHandler("cardshop:Server:mewv", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local df = Player.Functions.GetItemByName("mewv")
		if df.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have mew v!')
        else
			if df.amount > 0 then
		Player.Functions.RemoveItem('mewv',1)
		Player.Functions.AddMoney('cash',600)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a mew v!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:mtgx")
AddEventHandler("cardshop:Server:mtgx", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local dg = Player.Functions.GetItemByName("mewtwogx")
		if dg.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have mewtwo gx!')
        else
			if dg.amount > 0 then
		Player.Functions.RemoveItem('mewtwogx',1)
		Player.Functions.AddMoney('cash',1500)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a mewtwo gx!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:mtgxr")
AddEventHandler("cardshop:Server:mtgxr", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local dh = Player.Functions.GetItemByName("rainbowmewtwogx")
		if dh.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have rainbow mewtwo gx!')
        else
			if dh.amount > 0 then
		Player.Functions.RemoveItem('rainbowmewtwogx',1)
		Player.Functions.AddMoney('cash',2400)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a rainbow mewtwo gx!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:pikav")
AddEventHandler("cardshop:Server:pikav", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local di = Player.Functions.GetItemByName("pikachuv")
		if di.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have pikachu v!')
        else
			if di.amount > 0 then
		Player.Functions.RemoveItem('pikachuv',1)
		Player.Functions.AddMoney('cash',400)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a pikachu v!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:pikavmax")
AddEventHandler("cardshop:Server:pikavmax", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local dj = Player.Functions.GetItemByName("vmaxpikachu")
		if dj.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have vmax pikachu!')
        else
			if dj.amount > 0 then
		Player.Functions.RemoveItem('vmaxpikachu',1)
		Player.Functions.AddMoney('cash',900)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a vmax pikachu!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:pikavmaxr")
AddEventHandler("cardshop:Server:pikavmaxr", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local dj = Player.Functions.GetItemByName("rainbowvmaxpikachu")
		if dj.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have rainbow vmax pikachu!')
        else
			if dj.amount > 0 then
		Player.Functions.RemoveItem('rainbowvmaxpikachu',1)
		Player.Functions.AddMoney('cash',2000)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a rainbow vmax pikachu!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:snorv")
AddEventHandler("cardshop:Server:snorv", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local dk = Player.Functions.GetItemByName("snorlaxv")
		if dk.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have snorlax v!')
        else
			if dk.amount > 0 then
		Player.Functions.RemoveItem('snorlaxv',1)
		Player.Functions.AddMoney('cash',500)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a snorlax v!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:snorvmax")
AddEventHandler("cardshop:Server:snorvmax", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local dl = Player.Functions.GetItemByName("snorlaxvmax")
		if dl.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have snorlax vmax!')
        else
			if dl.amount > 0 then
		Player.Functions.RemoveItem('snorlaxvmax',1)
		Player.Functions.AddMoney('cash',1000)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a snorlax vmax!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:snorvmaxr")
AddEventHandler("cardshop:Server:snorvmaxr", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local dm = Player.Functions.GetItemByName("snorlaxvmaxrainbow")
		if dm.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have snorlax vmax rainbow!')
        else
			if dm.amount > 0 then
		Player.Functions.RemoveItem('snorlaxvmaxrainbow',1)
		Player.Functions.AddMoney('cash',2000)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a snorlax vmax rainbow!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:venusv")
AddEventHandler("cardshop:Server:venusv", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local dn = Player.Functions.GetItemByName("venusaurv")
		if dn.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Venusaur V!')
        else
			if dn.amount > 0 then
		Player.Functions.RemoveItem('venusaurv',1)
		Player.Functions.AddMoney('cash',500)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Venusaur V!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:venusvmax")
AddEventHandler("cardshop:Server:venusvmax", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local dp = Player.Functions.GetItemByName("venusaurvmax")
		if dp.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Venusaur vmax!')
        else
			if dp.amount > 0 then
		Player.Functions.RemoveItem('venusaurvmax',1)
		Player.Functions.AddMoney('cash',1200)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Venusaur vmax!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:blav")
AddEventHandler("cardshop:Server:blav", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local dq = Player.Functions.GetItemByName("blastoisev")
		if dq.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Blastoise V!')
        else
			if dq.amount > 0 then
		Player.Functions.RemoveItem('blastoisev',1)
		Player.Functions.AddMoney('cash',500)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Blastoise V!')
					end
				end
	end)

RegisterServerEvent("cardshop:Server:blavmax")
AddEventHandler("cardshop:Server:blavmax", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local dr = Player.Functions.GetItemByName("blastoisevmax")
		if dr.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have Blastoise VMax!')
        else
			if dr.amount > 0 then
		Player.Functions.RemoveItem('blastoisevmax',1)
		Player.Functions.AddMoney('cash',1200)
        TriggerClientEvent('QBCore:Notify', source, 'You sold a Blastoise VMax!')
					end
				end
	end)
