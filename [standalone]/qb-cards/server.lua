QBCore = nil

TriggerEvent('QBCore:GetObject', function(obj) QBCore = obj end)

local basicCards = {"bulbasaur", "ivysaur", "charmander", "charmeleon", "squirtle", "wartortle", "caterpie", "metapod", "butterfree", "weedle", "kakuna", "beedrill", "pidgey","pidgeotto", "pidgeot", "rattata", "raticate", "spearow", "fearow", "ekans", "arbok", "pikachu", "sandshrew", "sandslash", "nidoran", "nidorina", "nidoqueen", "nidorino", "clefairy","clefable", "vulpix", "ninetales", "zubat", "golbat", "oddish", "gloom", "vileplume", "paras", "parasect", "venonat", "venomoth", "diglett", "dugtrio", "meowth", "persian", "psyduck","golduck", "mankey", "primeape", "growlithe", "arcanine", "poliwag", "poliwhirl", "poliwrath", "abra","machop", "machoke", "bellsprout", "weepinbell", "victreebel", "tentacool","tentacruel", "geodude", "graveler", "golem", "ponyta", "rapidash", "slowpoke", "slowbro", "magnemite", "magneton", "farfetchd", "doduo", "dodrio", "seel", "dewgong", "grimer", "muk", "shellder", "cloyster","gastly", "haunter", "gengar", "drowzee", "hypno", "krabby", "kingler", "voltorb", "electrode", "exeggcute", "exeggutor", "cubone", "marowak", "lickitung", "koffing", "weezing", "rhyhorn", "rhydon", "chansey", "tangela", "horsea", "seadra", "goldeen", "seaking", "staryu", "mr mime",  "electabuzz", "magmar", "pinsir", "tauros", "magikarp"}
local rareCards = {"lapras", "eevee", "togepi", "vaporeon", "jolteon", "flareon", "jigglypuff","wigglytuff", "kadabra","raichu", "nidoking",  "jynx", "kangaskhan", "gyarados","ditto","starmie", "onix", "machamp", "scyther", "hitmonlee", "hitmonchan", "venusaur" }
local ultraCards = {"charizard", "blastoise","porygon", "omanyte", "omastar", "dragonite", "mewtwo", "mew", "snorlax", "articuno", "zapdos", "kabuto", "kabutops", "aerodactyl", "moltres", "dratini", "dragonair"}
local vCards = {"blastoisev", "charizardv", "mewv", "pikachuv", "snorlaxv", "venusaurv"}
local vmaxCards = {"blastoisevmax", "mewtwogx", "snorlaxvmax", "venusaurvmax", "vmaxcharizard", "vmaxpikachu"}
local rainbowCards = {"rainbowmewtwogx", "rainbowvmaxcharizard", "rainbowvmaxpikachu", "snorlaxvmaxrainbow"}

 RegisterServerEvent('Cards:Server:rewarditem')
AddEventHandler('Cards:Server:rewarditem', function(listKey)
	local pack = Player.Functions.GetItemByName("boosterpack")
		if pack.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have a boosterpack!')
        else
			if pack.amount > 0 then
    local Player = QBCore.Functions.GetPlayer(source)
    local randomChance = math.random(1, 1000)
        if randomChance <= 5 then 
            local card = rainbowCards[math.random(1,#rainbowCards)]
                TriggerClientEvent("inventory:client:ItemBox", QBCore.Shared.Items[card], "add")
                   Player.Functions.AddItem(card, 1)
                   Citizen.Wait(500)
		elseif randomChance >= 6 and randomChance <= 19 then
                local card = vmaxCards[math.random(1, #vmaxCards)]
                TriggerClientEvent("inventory:client:ItemBox", QBCore.Shared.Items[card], "add")
                   Player.Functions.AddItem(card, 1)
                   Citizen.Wait(500)
		elseif randomChance >= 20 and randomChance <= 50 then
                local card = vCards[math.random(1, #vCards)]
                TriggerClientEvent("inventory:client:ItemBox", QBCore.Shared.Items[card], "add")
                   Player.Functions.AddItem(card, 1)
                   Citizen.Wait(500)
		elseif randomChance >= 51 and randomChance <= 100 then
                local card = ultraCards[math.random(1, #ultraCards)]
                TriggerClientEvent("inventory:client:ItemBox", QBCore.Shared.Items[card], "add")
                   Player.Functions.AddItem(card, 1)
                   Citizen.Wait(500)
        elseif randomChance >= 101 and randomChance <= 399 then
                local card = rareCards[math.random(1, #rareCards)]
                TriggerClientEvent("inventory:client:ItemBox", QBCore.Shared.Items[card], "add")
                   Player.Functions.AddItem(card, 1)
                   Citizen.Wait(500)
        elseif randomChance >= 400 then 
                local card = basicCards[math.random(1, #basicCards)]
                TriggerClientEvent("inventory:client:ItemBox", QBCore.Shared.Items[card], "add")
                   Player.Functions.AddItem(card, 1)
                   Citizen.Wait(500)
        else
            Citizen.Wait(5)
			end
        end
    end   
end)

RegisterServerEvent("Cards:server:boulder")
AddEventHandler("Cards:server:boulder", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local grav = Player.Functions.GetItemByName("graveler")
		if grav.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have graveler!')
        else
			if grav.amount > 0 then
	local rhy = Player.Functions.GetItemByName("rhyhorn")
		if rhy ~= nil and rhy.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have rhyhorn!')
        else
			if rhy.amount > 0 then
	local oma = Player.Functions.GetItemByName("omastar")
		if oma.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have omastar!')
        else
			if grav.amount > 0 then
	local kab = Player.Functions.GetItemByName("kabutops")
		if kab.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have kabutops!')
        else
			if kab.amount > 0 then
	local oni = Player.Functions.GetItemByName("onix")
		if oni.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have onix!')
        else
			if oni.amount > 0 then
	local geo = Player.Functions.GetItemByName("geodude")
		if geo.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have geodude!')
        else
			if geo.amount > 0 then
		Player.Functions.RemoveItem('onix',1)
		Player.Functions.RemoveItem('kabutops',1)
		Player.Functions.RemoveItem('omastar',1)
		Player.Functions.RemoveItem('rhyhorn',1)
		Player.Functions.RemoveItem('graveler',1)
		Player.Functions.RemoveItem('geodude',1)
		Player.Functions.AddItem('boulderbadge',1)
        TriggerClientEvent('QBCore:Notify', source, 'You got a Boulder Badge!')	
												end
											end
										end
									end
								end
							end
						end
					end
				end
			end
		end
	end
end)

RegisterServerEvent("Cards:server:cascade")
AddEventHandler("Cards:server:cascade", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local grav = Player.Functions.GetItemByName("blastoise")
		if grav.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have blastoise!')
        else
			if grav.amount > 0 then
	local rhy = Player.Functions.GetItemByName("lapras")
		if rhy ~= nil and rhy.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have lapras!')
        else
			if rhy.amount > 0 then
	local oma = Player.Functions.GetItemByName("golduck")
		if oma.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have golduck!')
        else
			if grav.amount > 0 then
	local kab = Player.Functions.GetItemByName("starmie")
		if kab.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have starmie!')
        else
			if kab.amount > 0 then
	local oni = Player.Functions.GetItemByName("psyduck")
		if oni.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have psyduck!')
        else
			if oni.amount > 0 then
	local geo = Player.Functions.GetItemByName("togepi")
		if geo.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have togepi!')
        else
			if geo.amount > 0 then
		xPlayer.Functions.RemoveItem('blastoise',1)
		xPlayer.Functions.RemoveItem('starmie',1)
		xPlayer.Functions.RemoveItem('psyduck',1)
		xPlayer.Functions.RemoveItem('lapras',1)
		xPlayer.Functions.RemoveItem('golduck',1)
		xPlayer.Functions.RemoveItem('togepi',1)
		xPlayer.Functions.AddItem('cascadebadge',1)
           Citizen.Wait(500)
		   end
											end
										end
									end
								end
							end
						end
					end
				end
			end
		end
	end
end)

RegisterServerEvent("Cards:server:thunder")
AddEventHandler("Cards:server:thunder", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local grav = Player.Functions.GetItemByName("zapdos")
		if grav.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have zapdos!')
        else
			if grav.amount > 0 then
	local rhy = Player.Functions.GetItemByName("pikachu")
		if rhy ~= nil and rhy.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have pikachu!')
        else
			if rhy.amount > 0 then
	local oma = Player.Functions.GetItemByName("jolteon")
		if oma.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have jolteon!')
        else
			if grav.amount > 0 then
	local kab = Player.Functions.GetItemByName("electabuzz")
		if kab.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have electabuzz!')
        else
			if kab.amount > 0 then
	local oni = Player.Functions.GetItemByName("electrode")
		if oni.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have electrode!')
        else
			if oni.amount > 0 then
	local geo = Player.Functions.GetItemByName("magneton")
		if geo.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have magneton!')
        else
			if geo.amount > 0 then
		xPlayer.Functions.RemoveItem('zapdos',1)
		xPlayer.Functions.RemoveItem('pikachu',1)
		xPlayer.Functions.RemoveItem('jolteon',1)
		xPlayer.Functions.RemoveItem('electabuzz',1)
		xPlayer.Functions.RemoveItem('electrode',1)
		xPlayer.Functions.RemoveItem('magneton',1)
		xPlayer.Functions.AddItem('thunderbadge',1)
           Citizen.Wait(500)
		   end
											end
										end
									end
								end
							end
						end
					end
				end
			end
		end
	end
end)

RegisterServerEvent("Cards:server:rainbow")
AddEventHandler("Cards:server:rainbow", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local grav = Player.Functions.GetItemByName("victreebel")
		if grav.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have victreebel!')
        else
			if grav.amount > 0 then
	local rhy = Player.Functions.GetItemByName("tangela")
		if rhy ~= nil and rhy.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have tangela!')
        else
			if rhy.amount > 0 then
	local oma = Player.Functions.GetItemByName("vileplume")
		if oma.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have vileplume!')
        else
			if grav.amount > 0 then
	local kab = Player.Functions.GetItemByName("scyther")
		if kab.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have scyther!')
        else
			if kab.amount > 0 then
	local oni = Player.Functions.GetItemByName("bellsprout")
		if oni.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have bellsprout!')
        else
			if oni.amount > 0 then
	local geo = Player.Functions.GetItemByName("venusaur")
		if geo.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have venusaur!')
        else
			if geo.amount > 0 then
		xPlayer.Functions.RemoveItem('victreebel',1)
		xPlayer.Functions.RemoveItem('tangela',1)
		xPlayer.Functions.RemoveItem('vileplume',1)
		xPlayer.Functions.RemoveItem('scyther',1)
		xPlayer.Functions.RemoveItem('bellsprout',1)
		xPlayer.Functions.RemoveItem('venusaur',1)
		xPlayer.Functions.AddItem('rainbowbadge',1)
           Citizen.Wait(500)
		   end
											end
										end
									end
								end
							end
						end
					end
				end
			end
		end
	end
end)

RegisterServerEvent("Cards:server:soul")
AddEventHandler("Cards:server:soul", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local grav = Player.Functions.GetItemByName("koffing")
		if grav.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have koffing!')
        else
			if grav.amount > 0 then
	local rhy = Player.Functions.GetItemByName("weezing")
		if rhy ~= nil and rhy.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have weezing!')
        else
			if rhy.amount > 0 then
	local oma = Player.Functions.GetItemByName("snorlax")
		if oma.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have snorlax!')
        else
			if grav.amount > 0 then
	local kab = Player.Functions.GetItemByName("venonat")
		if kab.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have venonat!')
        else
			if kab.amount > 0 then
	local oni = Player.Functions.GetItemByName("venomoth")
		if oni.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have venomoth!')
        else
			if oni.amount > 0 then
	local geo = Player.Functions.GetItemByName("golbat")
		if geo.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have golbat!')
        else
			if geo.amount > 0 then
		xPlayer.Functions.RemoveItem('koffing',1)
		xPlayer.Functions.RemoveItem('weezing',1)
		xPlayer.Functions.RemoveItem('snorlax',1)
		xPlayer.Functions.RemoveItem('venonat',1)
		xPlayer.Functions.RemoveItem('venomoth',1)
		xPlayer.Functions.RemoveItem('golbat',1)
		xPlayer.Functions.AddItem('soulbadge',1)
           Citizen.Wait(500)
		   end
											end
										end
									end
								end
							end
						end
					end
				end
			end
		end
	end
end)

RegisterServerEvent("Cards:server:marsh")
AddEventHandler("Cards:server:marsh", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local grav = Player.Functions.GetItemByName("alakazam")
		if grav.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have alakazam!')
        else
			if grav.amount > 0 then
	local rhy = Player.Functions.GetItemByName("mr_mime")
		if rhy ~= nil and rhy.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have mr_mime!')
        else
			if rhy.amount > 0 then
	local oma = Player.Functions.GetItemByName("abra")
		if oma.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have abra!')
        else
			if grav.amount > 0 then
	local kab = Player.Functions.GetItemByName("kadabra")
		if kab.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have kadabra!')
        else
			if kab.amount > 0 then
	local oni = Player.Functions.GetItemByName("hypno")
		if oni.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have hypno!')
        else
			if oni.amount > 0 then
	local geo = Player.Functions.GetItemByName("jynx")
		if geo.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have jynx!')
        else
			if geo.amount > 0 then
		xPlayer.Functions.RemoveItem('alakazam',1)
		xPlayer.Functions.RemoveItem('mr_mime',1)
		xPlayer.Functions.RemoveItem('abra',1)
		xPlayer.Functions.RemoveItem('kadabra',1)
		xPlayer.Functions.RemoveItem('hypno',1)
		xPlayer.Functions.RemoveItem('jynx',1)
		xPlayer.Functions.AddItem('marshbadge',1)
           Citizen.Wait(500)
		   end
											end
										end
									end
								end
							end
						end
					end
				end
			end
		end
	end
end)

RegisterServerEvent("Cards:server:volcano")
AddEventHandler("Cards:server:volcano", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local grav = Player.Functions.GetItemByName("arcanine")
		if grav.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have arcanine!')
        else
			if grav.amount > 0 then
	local rhy = Player.Functions.GetItemByName("rapidash")
		if rhy ~= nil and rhy.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have rapidash!')
        else
			if rhy.amount > 0 then
	local oma = Player.Functions.GetItemByName("ninetails")
		if oma.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have ninetails!')
        else
			if grav.amount > 0 then
	local kab = Player.Functions.GetItemByName("magmar")
		if kab.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have magmar!')
        else
			if kab.amount > 0 then
	local oni = Player.Functions.GetItemByName("charizard")
		if oni.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have charizard!')
        else
			if oni.amount > 0 then
	local geo = Player.Functions.GetItemByName("moltres")
		if geo.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have moltres!')
        else
			if geo.amount > 0 then
		xPlayer.Functions.RemoveItem('arcanine',1)
		xPlayer.Functions.RemoveItem('rapidash',1)
		xPlayer.Functions.RemoveItem('ninetails',1)
		xPlayer.Functions.RemoveItem('magmar',1)
		xPlayer.Functions.RemoveItem('charizard',1)
		xPlayer.Functions.RemoveItem('moltres',1)
		xPlayer.Functions.AddItem('volcanobadge',1)
           Citizen.Wait(500)
		   end
											end
										end
									end
								end
							end
						end
					end
				end
			end
		end
	end
end)

RegisterServerEvent("Cards:server:earth")
AddEventHandler("Cards:server:earth", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local grav = Player.Functions.GetItemByName("rhydon")
		if grav.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have rhydon!')
        else
			if grav.amount > 0 then
	local rhy = Player.Functions.GetItemByName("nidoking")
		if rhy ~= nil and rhy.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have nidoking!')
        else
			if rhy.amount > 0 then
	local oma = Player.Functions.GetItemByName("nidoqueen")
		if oma.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have nidoqueen!')
        else
			if grav.amount > 0 then
	local kab = Player.Functions.GetItemByName("mewtwo")
		if kab.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have mewtwo!')
        else
			if kab.amount > 0 then
	local oni = Player.Functions.GetItemByName("dugtrio")
		if oni.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have dugtrio!')
        else
			if oni.amount > 0 then
	local geo = Player.Functions.GetItemByName("persian")
		if geo.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have persian!')
        else
			if geo.amount > 0 then
		xPlayer.Functions.RemoveItem('rhydon',1)
		xPlayer.Functions.RemoveItem('nidoking',1)
		xPlayer.Functions.RemoveItem('nidoqueen',1)
		xPlayer.Functions.RemoveItem('mewtwo',1)
		xPlayer.Functions.RemoveItem('dugtrio',1)
		xPlayer.Functions.RemoveItem('persian',1)
		xPlayer.Functions.AddItem('earthbadge',1)
           Citizen.Wait(500)
		   end
											end
										end
									end
								end
							end
						end
					end
				end
			end
		end
	end
end)

RegisterServerEvent("Cards:server:trophy")
AddEventHandler("Cards:server:trophy", function(listkey)
	local Player = QBCore.Functions.GetPlayer(source)
	local grav = Player.Functions.GetItemByName("boulderbadge")
		if grav.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have boulderbadge!')
        else
			if grav.amount > 0 then
	local rhy = Player.Functions.GetItemByName("cascadebadge")
		if rhy ~= nil and rhy.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have cascadebadge!')
        else
			if rhy.amount > 0 then
	local oma = Player.Functions.GetItemByName("thunderbadge")
		if oma.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have thunderbadge!')
        else
			if grav.amount > 0 then
	local kab = Player.Functions.GetItemByName("rainbowbadge")
		if kab.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have rainbowbadge!')
        else
			if kab.amount > 0 then
	local oni = Player.Functions.GetItemByName("soulbadge")
		if oni.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have soulbadge!')
        else
			if oni.amount > 0 then
	local geo = Player.Functions.GetItemByName("marshbadge")
		if geo.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have marshbadge!')
        else
			if geo.amount > 0 then
		local oni = Player.Functions.GetItemByName("volcanohbadge")
		if oni.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have volcanohbadge!')
        else
			if oni.amount > 0 then
	local geo = Player.Functions.GetItemByName("earthbadge")
		if geo.amount < 1 then
			TriggerClientEvent('QBCore:Notify', source, 'You dont have earthbadge!')
        else
			if geo.amount > 0 then
		Player.Functions.RemoveItem('boulderbadge',1)
		Player.Functions.RemoveItem('cascadebadge',1)
		Player.Functions.RemoveItem('thunderbadge',1)
		Player.Functions.RemoveItem('rainbowbadge',1)
		Player.Functions.RemoveItem('soulbadge',1)
		Player.Functions.RemoveItem('marshbadge',1)
		Player.Functions.RemoveItem('volcanohbadge',1)
		Player.Functions.RemoveItem('earthbadge',1)
		Player.Functions.AddItem('trophybadge',1)
           Citizen.Wait(500)
		   end
		   end
														end
													end
												end
											end
										end
									end
								end
							end
						end
					end
				end
			end
		end
	end
end)

RegisterServerEvent("Cards:server:storageboxbuy")
AddEventHandler("Cards:server:storageboxbuy", function(listkey)
    local xPlayer = QBCore.Functions.GetPlayer(source)
        xPlayer.Functions.RemoveMoney('cash',2000)
        xPlayer.Functions.AddItem('pokebox',1)
           Citizen.Wait(500)
end)