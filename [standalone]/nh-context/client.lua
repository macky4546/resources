QBCore = nil
local a1 = vector3(174.74, -1321.7, 29.36)
local a2 = vector3(196.83, -873.87, 30.76)
local distance_until_text_disappears = 50

function Draw3DText(x, y, z, scl_factor, text)
    local onScreen, _x, _y = World3dToScreen2d(x, y, z)
    local p = GetGameplayCamCoords()
    local distance = GetDistanceBetweenCoords(p.x, p.y, p.z, x, y, z, 1)
    local scale = (1 / distance) * 2
    local fov = (1 / GetGameplayCamFov()) * 100
    local scale = scale * fov * scl_factor
    if onScreen then
        SetTextScale(0.0, 0.3)
        SetTextFont(0)
        SetTextProportional(1)
        SetTextColour(255, 255, 255, 255)
        SetTextDropshadow(0, 0, 0, 0, 255)
        SetTextEdge(2, 0, 0, 0, 150)
        SetTextDropShadow()
        SetTextOutline()
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
        DrawText(_x, _y)
    end
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(10)
        if QBCore == nil then
            TriggerEvent('QBCore:GetObject', function(obj) QBCore = obj end)
            Citizen.Wait(200)
        end
    end
end)


RegisterNUICallback("dataPost", function(data, cb)
    SetNuiFocus(false)
    TriggerEvent(data.event, data.args)
    cb('ok')
end)

RegisterNUICallback("dataPostServ", function(data, cb)
    SetNuiFocus(false)
    TriggerServerEvent(data.event, data.args)
    cb('ok')
end)

RegisterNUICallback("cancel", function()
    SetNuiFocus(false)
end)

RegisterCommand("sendMenu", function()    ----only use till fully functional
    Citizen.CreateThread(function()
        TriggerEvent("cardshop:testMenu", true)
    end)
  end)

RegisterNetEvent('cardshop:sendMenu', function(data)
    if not data then return end
    SetNuiFocus(true, true)
    SendNUIMessage({
        action = "OPEN_MENU",
        data = data
    })
end)

RegisterNetEvent('cardshop:closeMenu', function(data)
    if not data then return end
    SetNuiFocus(false, false)
    SendNUIMessage({
        action = "CLOSE_MENU",
        data = data
    })
end)
--[[
local blip = AddBlipForCoord(174.74, -1321.7)
SetBlipAsShortRange(blip, true)
SetBlipSprite(blip, 587)
SetBlipDisplay(blip, 6)
SetBlipScale(blip, 0.6)
BeginTextCommandSetBlipName("STRING")
AddTextComponentString("Card Shop")
EndTextCommandSetBlipName(blip)]]

Citizen.CreateThread(
    function()
        while true do
            Citizen.Wait(0)
            if Vdist2(GetEntityCoords(PlayerPedId(), false), a1) < distance_until_text_disappears then
                DrawMarker(2, 174.74, -1321.7, 29.30, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.25, 0.2, 0.1, 255, 255, 255, 155, 0, 0, 0, 1, 0, 0, 0)
                Draw3DText(174.74, -1321.7, 29.46, 1.5, 'Press [~g~E~w~] to Buy/Sell Cards/Badges')
                    if IsControlJustPressed(0, 38) then
                          TriggerEvent("cardshop:testMenu")
                    end
            end
        end
   end)

Citizen.CreateThread(
    function()
        while true do
            Citizen.Wait(0)
            if Vdist2(GetEntityCoords(PlayerPedId(), false), a2) < distance_until_text_disappears then
                DrawMarker(2, 196.83, -873.87, 30.61, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.25, 0.2, 0.1, 255, 255, 255, 155, 0, 0, 0, 1, 0, 0, 0)
                Draw3DText(196.83, -873.87, 30.76, 1.5, 'Press [~g~F~w~] to Buy/Sell Cards/Badges')
                    if IsControlJustPressed(0, 23) then
                          TriggerEvent("cardshop:testMenu")
                    end
            end
        end
   end)

RegisterNetEvent('cardshop:testMenu', function(data)
    TriggerEvent('cardshop:sendMenu', {
        {
            id = 1,
            header = "Badge Sell",
            txt = "Sell Your Badges",
            params = {
                event = "cardshop:testMenu3",
                args = {
                    number = 1,
                    id = 2
                }
            }
        },
        {
            id = 2,
            header = "Card Sell",
            txt = "Sell Individual Cards",
            params = {
                event = "cardshop:testMenu2",
                args = {
                    number = 1,
                    id = 2
                }
            }
        },
        {
            id = 3,
            header = "Buy Cards",
            txt = "Buy Boosters",
            params = {
                event = "cardshop:testMenu4",
                args = {
                    number = 1,
                    id = 2
                }
            }
        },
        {
            id = 4,
            header = "Special Cards",
            txt = "v/vmax/rainbow/gx",
            params = {
                event = "cardshop:testMenu5",
                args = {
                    number = 1,
                    id = 2
                }
            }
        },
        {
            id = 5,
            header = "Sell all 169 Cards",
            txt = "$75,000",
            params = {
                event = "cardshop:closeMenu"
            }
        },
        {
            id = 5,
            header = "Close Menu",
            txt = "",
            params = {
                event = "cardshop:closeMenu"
            }
        },
    })
end)

RegisterNetEvent('cardshop:testMenu3', function(data)
    local id = data.id
    local number = data.number
    TriggerEvent('cardshop:sendMenu', {
        {
            id = 1,
            header = "< Go Back",
            txt = "",
            params = {
                event = "cardshop:testMenu"
            }
        },
        {
            id = 2,
            header = "Boulder Badge",
            txt = "$1000 ",
            params = {
                event = "cardshop:bSell"
            }
        },
        {
            id = 3,
            header = "Cascade Badge",
            txt = "$1000 ",
            params = {
                event = "cardshop:cSell"
            }
        },
        {
            id = 4,
            header = "Thunder Badge",
            txt = "$1000 ",
            params = {
                event = "cardshop:thSell"
            }
        },
        {
            id = 5,
            header = "Rainbow Badge",
            txt = "$1000 ",
            params = {
                event = "cardshop:rSell"
            }
        },
         {
            id = 6,
            header = "Soul Badge",
            txt = "$1000 ",
            params = {
                event = "cardshop:sSell"
            }
        },
        {
            id = 7,
            header = "Marsh Badge",
            txt = "$1000 ",
            params = {
                event = "cardshop:mSell"
            }
        },
         {
            id = 8,
            header = "Volcano Badge",
            txt = "$1000 ",
            params = {
                event = "cardshop:vSell"
            }
        },
        {
            id = 9,
            header = "Earth Badge",
            txt = "$1000 ",
            params = {
                event = "cardshop:eSell"
            }
        },
        {
            id = 10,
            header = "Trophy Badge",
            txt = "$15000 ",
            params = {
                event = "cardshop:tSell"
            }
        },
    })
end)

RegisterNetEvent('cardshop:testMenu2', function(data)
    local id = data.id
    local number = data.number
    TriggerEvent('cardshop:sendMenu', {
        {
            id = 1,
            header = "< Go Back",
            txt = "",
            params = {
                event = "cardshop:testMenu"
            }
        },
        {
            id = 2,
            header = "Abra",
            txt = "$50",
            params = {
                event = "cardshop:Abra"
            }
        },
        {
            id = 3,
            header = "Aerodactyl",
            txt = "$250",
            params = {
                event = "cardshop:Aerodactyl"
            }
        },
        {
            id = 4,
            header = "Alakazam",
            txt = "$250",
            params = {
                event = "cardshop:Alakazam"
            }
        },
        {
            id = 5,
            header = "Arbok",
            txt = "$50",
            params = {
                event = "cardshop:Arbok",
            }
        }, 
        {
            id = 6,
            header = "Arcanine",
            txt = "$50",
            params = {
                event = "cardshop:Arcanine"
            }
        },
        {
            id = 7,
            header = "Articuno",
            txt = "$250",
            params = {
                event = "cardshop:Articuno",
            }
        },
        {
            id = 8,
            header = "Beedrill",
            txt = "$50",
            params = {
                event = "cardshop:Beedrill"
            }
        },
        {
            id = 9,
            header = "Bellsprout",
            txt = "$50",
            params = {
                event = "cardshop:Bellsprout",
            }
        }, 
        {
            id = 10,
            header = "Blastoise",
            txt = "$100",
            params = {
                event = "cardshop:Blastoise"
            }
        },
        {
            id = 11,
            header = "Bulbasaur",
            txt = "$50",
            params = {
                event = "cardshop:Bulbasaur"
            }
        },
        {
            id = 12,
            header = "Butterfree",
            txt = "$50",
            params = {
                event = "cardshop:Butterfree",
            }
        },
        {
            id = 13,
            header = "Caterpie",
            txt = "$50",
            params = {
                event = "cardshop:Caterpie",
            }
        },
        {
            id = 14,
            header = "Chansey",
            txt = "$50",
            params = {
                event = "cardshop:Chansey"
            }
        },
        {
            id = 15,
            header = "Charizard",
            txt = "$100",
            params = {
                event = "cardshop:Charizard"
            }
        },
        {
            id = 16,
            header = "Charmander",
            txt = "$50",
            params = {
                event = "cardshop:Charmander"
            }
        },
        {
            id = 17,
            header = "Charmeleon",
            txt = "$50",
            params = {
                event = "cardshop:Charmeleon",
            }
        },
        {
            id = 18,
            header = "Clefable",
            txt = "$50",
            params = {
                event = "cardshop:Clefable"
            }
        },
        {
            id = 19,
            header = "Clefairy",
            txt = "$50",
            params = {
                event = "cardshop:Clefairy",
            }
        },
        {
            id = 20,
            header = "Cloyster",
            txt = "$50",
            params = {
                event = "cardshop:Cloyster"
            }
        },
        {
            id = 21,
            header = "Cubone",
            txt = "$50",
            params = {
                event = "cardshop:Cubone",
            }
        }, 
        {
            id = 22,
            header = "Dewgong",
            txt = "$50",
            params = {
                event = "cardshop:Dewgong"
            }
        },
        {
            id = 23,
            header = "Diglett",
            txt = "$50",
            params = {
                event = "cardshop:Diglett",
            }
        },
        {
            id = 24,
            header = "Ditto",
            txt = "$100",
            params = {
                event = "cardshop:Ditto",
            }
        },
        {
            id = 25,
            header = "Dodrio",
            txt = "$50",
            params = {
                event = "cardshop:Dodrio"
            }
        },
        {
            id = 26,
            header = "Doduo",
            txt = "$50",
            params = {
                event = "cardshop:Doduo"
            }
        },
        {
            id = 27,
            header = "Dragonair",
            txt = "$250",
            params = {
                event = "cardshop:Dragonair"
            }
        },
        {
            id = 28,
            header = "Dragonite",
            txt = "$250",
            params = {
                event = "cardshop:Dragonite",
            }
        }, 
        {
            id = 29,
            header = "Dratini",
            txt = "$250",
            params = {
                event = "cardshop:Dratini"
            }
        },
        {
            id = 30,
            header = "Drowzee",
            txt = "$50",
            params = {
                event = "cardshop:Drowzee"
            }
        },
        {
            id = 31,
            header = "Dugtrio",
            txt = "$50",
            params = {
                event = "cardshop:Dugtio"
            }
        },
        {
            id = 32,
            header = "Eevee",
            txt = "$50",
            params = {
                event = "cardshop:Eevee"
            }
        },
        {
            id = 33,
            header = "Ekans",
            txt = "$50",
            params = {
                event = "cardshop:Ekans"
            }
        },
        {
            id = 34,
            header = "Electabuzz",
            txt = "$50",
            params = {
                event = "cardshop:Electabuzz",
            }
        }, 
        {
            id = 35,
            header = "Electrode",
            txt = "$50",
            params = {
                event = "cardshop:Electrode"
            }
        },
        {
            id = 36,
            header = "Exeggcute",
            txt = "$50",
            params = {
                event = "cardshop:Exeggcute",
            }
        },
        {
            id = 37,
            header = "Exeggutor",
            txt = "$50",
            params = {
                event = "cardshop:Exeggutor"
            }
        },
        {
            id = 38,
            header = "Farfetchd",
            txt = "$50",
            params = {
                event = "cardshop:Farfetchd",
            }
        }, 
        {
            id = 39,
            header = "Fearow",
            txt = "$50",
            params = {
                event = "cardshop:Fearow"
            }
        },
        {
            id = 40,
            header = "Flareon",
            txt = "$50",
            params = {
                event = "cardshop:Flareon",
            }
        },
        {
            id = 41,
            header = "Gastly",
            txt = "$50",
            params = {
                event = "cardshop:Gastly",
            }
        },
        {
            id = 42,
            header = "Gengar",
            txt = "$50",
            params = {
                event = "cardshop:Gengar"
            }
        },
        {
            id = 43,
            header = "Geodude",
            txt = "$50",
            params = {
                event = "cardshop:Geodude"
            }
        },
        {
            id = 44,
            header = "Gloom",
            txt = "$50",
            params = {
                event = "cardshop:Gloom"
            }
        },
        {
            id = 45,
            header = "Golbat",
            txt = "$50",
            params = {
                event = "cardshop:Golbat",
            }
        },
        {
            id = 46,
            header = "Goldeen",
            txt = "$50",
            params = {
                event = "cardshop:Goldeen"
            }
        },
        {
            id = 47,
            header = "Golduck",
            txt = "$50",
            params = {
                event = "cardshop:Golduck",
            }
        },
        {
            id = 48,
            header = "Golem",
            txt = "$50",
            params = {
                event = "cardshop:Golem"
            }
        },
        {
            id = 49,
            header = "Graveler",
            txt = "$50",
            params = {
                event = "cardshop:Graveler",
            }
        }, 
        {
            id = 50,
            header = "Grimer",
            txt = "$50",
            params = {
                event = "cardshop:Grimer"
            }
        },
        {
            id = 51,
            header = "Growlithe",
            txt = "$50",
            params = {
                event = "cardshop:Growlithe",
            }
        },
        {
            id = 52,
            header = "Gyrarados",
            txt = "$100",
            params = {
                event = "cardshop:Gyrarados",
            }
        },
        {
            id = 53,
            header = "Haunter",
            txt = "$50",
            params = {
                event = "cardshop:Haunter"
            }
        },
        {
            id = 54,
            header = "Hitmonchan",
            txt = "$100",
            params = {
                event = "cardshop:Hitmonchan"
            }
        },
        {
            id = 55,
            header = "Hitmonlee",
            txt = "$100",
            params = {
                event = "cardshop:Hitmonlee"
            }
        },
        {
            id = 56,
            header = "Horsea",
            txt = "$50",
            params = {
                event = "cardshop:Horsea",
            }
        }, 
        {
            id = 57,
            header = "Hypno",
            txt = "$50",
            params = {
                event = "cardshop:Hypno"
            }
        },
        {
            id = 58,
            header = "Ivysaur",
            txt = "$50",
            params = {
                event = "cardshop:Ivysaur"
            }
        },
        {
            id = 59,
            header = "Jigglypuff",
            txt = "$50",
            params = {
                event = "cardshop:Jigglypuff"
            }
        },
        {
            id = 60,
            header = "Jolteon",
            txt = "$50",
            params = {
                event = "cardshop:Jolteon",
            }
        }, 
        {
            id = 61,
            header = "Jynx",
            txt = "$100",
            params = {
                event = "cardshop:Jynx"
            }
        },
        {
            id = 62,
            header = "Kabuto",
            txt = "$250",
            params = {
                event = "cardshop:Kabuto",
            }
        },
        {
            id = 63,
            header = "Kabutops",
            txt = "$250",
            params = {
                event = "cardshop:Kabutops"
            }
        },
        {
            id = 64,
            header = "Kadabra",
            txt = "$50",
            params = {
                event = "cardshop:Kadabra",
            }
        }, 
        {
            id = 65,
            header = "Kakuna",
            txt = "$50",
            params = {
                event = "cardshop:Kakuna"
            }
        },
        {
            id = 66,
            header = "Kangaskhan",
            txt = "$50",
            params = {
                event = "cardshop:Kangaskhan",
            }
        },
        {
            id = 67,
            header = "Kingler",
            txt = "$50",
            params = {
                event = "cardshop:Kingler",
            }
        },
        {
            id = 68,
            header = "Koffing",
            txt = "$50",
            params = {
                event = "cardshop:Koffing"
            }
        },
        {
            id = 69,
            header = "Krabby",
            txt = "$50",
            params = {
                event = "cardshop:Krabby"
            }
        },
        {
            id = 70,
            header = "Lapras",
            txt = "$50",
            params = {
                event = "cardshop:Lapras"
            }
        },
        {
            id = 71,
            header = "Lickitung",
            txt = "$50",
            params = {
                event = "cardshop:Lickitung",
            }
        },
        {
            id = 72,
            header = "Machamp",
            txt = "$100",
            params = {
                event = "cardshop:Machamp"
            }
        },
        {
            id = 73,
            header = "Machoke",
            txt = "$50",
            params = {
                event = "cardshop:Machoke",
            }
        },
        {
            id = 74,
            header = "Machop",
            txt = "$50",
            params = {
                event = "cardshop:Machop"
            }
        },
        {
            id = 75,
            header = "Magikarp",
            txt = "$50",
            params = {
                event = "cardshop:Magikarp",
            }
        }, 
        {
            id = 76,
            header = "Magmar",
            txt = "$50",
            params = {
                event = "cardshop:Magmar"
            }
        },
        {
            id = 77,
            header = "Magnemite",
            txt = "$50",
            params = {
                event = "cardshop:Magnemite",
            }
        },
        {
            id = 78,
            header = "Magneton",
            txt = "$50",
            params = {
                event = "cardshop:Magneton",
            }
        },
        {
            id = 79,
            header = "Mankey",
            txt = "$50",
            params = {
                event = "cardshop:Mankey"
            }
        },
        {
            id = 80,
            header = "Marowak",
            txt = "$50",
            params = {
                event = "cardshop:Marowak"
            }
        },
        {
            id = 81,
            header = "Meowth",
            txt = "$50",
            params = {
                event = "cardshop:Meowth"
            }
        },
        {
            id = 82,
            header = "Metapod",
            txt = "$50",
            params = {
                event = "cardshop:Metapod",
            }
        }, 
        {
            id = 83,
            header = "Mew",
            txt = "$250",
            params = {
                event = "cardshop:Mew"
            }
        },
                {
            id = 84,
            header = "Mewtwo",
            txt = "$250",
            params = {
                event = "cardshop:Mewtwo"
            }
        },
        {
            id = 85,
            header = "Moltres",
            txt = "$250",
            params = {
                event = "cardshop:Moltres"
            }
        },
        {
            id = 86,
            header = "Mr. Mime",
            txt = "$50",
            params = {
                event = "cardshop:Mime"
            }
        },
        {
            id = 87,
            header = "Muk",
            txt = "$50",
            params = {
                event = "cardshop:Muk",
            }
        }, 
        {
            id = 88,
            header = "NidoKing",
            txt = "$100",
            params = {
                event = "cardshop:NidoKing"
            }
        },
        {
            id = 89,
            header = "NidoQueen",
            txt = "$100",
            params = {
                event = "cardshop:NidoQueen",
            }
        },
         {
            id = 90,
            header = "Nidoran",
            txt = "$50",
            params = {
                event = "cardshop:Nidoran"
            }
        },
        {
            id = 91,
            header = "Nidorina",
            txt = "$50",
            params = {
                event = "cardshop:Nidorina"
            }
        },
        {
            id = 92,
            header = "Nidorino",
            txt = "$50",
            params = {
                event = "cardshop:Nidorino",
            }
        }, 
        {
            id = 93,
            header = "Ninetails",
            txt = "$50",
            params = {
                event = "cardshop:Ninetails"
            }
        },
        {
            id = 94,
            header = "Oddish",
            txt = "$50",
            params = {
                event = "cardshop:Oddish",
            }
        },
        {
            id = 95,
            header = "Omanyte",
            txt = "$250",
            params = {
                event = "cardshop:Omanyte",
            }
        },
        {
            id = 96,
            header = "Omastar",
            txt = "$250",
            params = {
                event = "cardshop:Omastar"
            }
        },
        {
            id = 97,
            header = "Onix",
            txt = "$100",
            params = {
                event = "cardshop:Onix"
            }
        },
        {
            id = 98,
            header = "Paras",
            txt = "$50",
            params = {
                event = "cardshop:Paras"
            }
        },
        {
            id = 99,
            header = "Parasect",
            txt = "$50",
            params = {
                event = "cardshop:Parasect",
            }
        },
        {
            id = 100,
            header = "Persian",
            txt = "$50",
            params = {
                event = "cardshop:Persian"
            }
        },
        {
            id = 101,
            header = "Pidgeotto",
            txt = "$50",
            params = {
                event = "cardshop:Pidgeotto",
            }
        },
        {
            id = 102,
            header = "Pidgey",
            txt = "$50",
            params = {
                event = "cardshop:Pidgey"
            }
        },
        {
            id = 103,
            header = "Pikachu",
            txt = "$50",
            params = {
                event = "cardshop:Pikachu",
            }
        }, 
        {
            id = 104,
            header = "Pinsir",
            txt = "$50",
            params = {
                event = "cardshop:Pinsir"
            }
        },
        {
            id = 105,
            header = "Poliwag",
            txt = "$50",
            params = {
                event = "cardshop:Poliwag",
            }
        },
        {
            id = 106,
            header = "Poliwhirl",
            txt = "$50",
            params = {
                event = "cardshop:Poliwhirl",
            }
        },
        {
            id = 107,
            header = "Poliwrath",
            txt = "$50",
            params = {
                event = "cardshop:Poliwrath"
            }
        },
        {
            id = 108,
            header = "Ponyta",
            txt = "$50",
            params = {
                event = "cardshop:Ponyta"
            }
        },
        {
            id = 109,
            header = "Porygon",
            txt = "$250",
            params = {
                event = "cardshop:Porygon"
            }
        },
        {
            id = 110,
            header = "Primeape",
            txt = "$50",
            params = {
                event = "cardshop:Primeape",
            }
        }, 
        {
            id = 111,
            header = "Psyduck",
            txt = "$50",
            params = {
                event = "cardshop:Psyduck"
            }
        },
                {
            id = 112,
            header = "Raichu",
            txt = "$100",
            params = {
                event = "cardshop:Raichu"
            }
        },
        {
            id = 113,
            header = "Rapidash",
            txt = "$50",
            params = {
                event = "cardshop:Rapidash"
            }
        },
        {
            id = 114,
            header = "Raticate",
            txt = "$50",
            params = {
                event = "cardshop:Raticate"
            }
        },
        {
            id = 115,
            header = "Rattata",
            txt = "$50",
            params = {
                event = "cardshop:Rattata",
            }
        }, 
        {
            id = 116,
            header = "Rhydon",
            txt = "$50",
            params = {
                event = "cardshop:Rhydon"
            }
        },
        {
            id = 117,
            header = "Rhyhorn",
            txt = "$50",
            params = {
                event = "cardshop:Rhyhorn",
            }
        },
        {
            id = 118,
            header = "Sandshrew",
            txt = "$50",
            params = {
                event = "cardshop:Sandshrew"
            }
        },
        {
            id = 119,
            header = "Sandslash",
            txt = "$50",
            params = {
                event = "cardshop:Sandslash"
            }
        },
        {
            id = 120,
            header = "Scyther",
            txt = "$100",
            params = {
                event = "cardshop:Scyther",
            }
        }, 
        {
            id = 121,
            header = "Seadra",
            txt = "$50",
            params = {
                event = "cardshop:Seadra"
            }
        },
        {
            id = 122,
            header = "Seaking",
            txt = "$50",
            params = {
                event = "cardshop:Seaking",
            }
        },
        {
            id = 123,
            header = "Seel",
            txt = "$50",
            params = {
                event = "cardshop:Seel",
            }
        },
        {
            id = 124,
            header = "Shellder",
            txt = "$50",
            params = {
                event = "cardshop:Shellder"
            }
        },
        {
            id = 125,
            header = "Slowbro",
            txt = "$50",
            params = {
                event = "cardshop:Slowbro"
            }
        },
        {
            id = 126,
            header = "Slowpoke",
            txt = "$50",
            params = {
                event = "cardshop:Slowpoke"
            }
        },
        {
            id = 127,
            header = "Snorlax",
            txt = "$250",
            params = {
                event = "cardshop:Snorlax",
            }
        },
        {
            id = 128,
            header = "Spearow",
            txt = "$50",
            params = {
                event = "cardshop:Spearow"
            }
        },
        {
            id = 129,
            header = "Squirtle",
            txt = "$50",
            params = {
                event = "cardshop:Squirtle",
            }
        },
        {
            id = 130,
            header = "Starmie",
            txt = "$100",
            params = {
                event = "cardshop:Starmie"
            }
        },
        {
            id = 131,
            header = "Staryu",
            txt = "$50",
            params = {
                event = "cardshop:Staryu",
            }
        }, 
        {
            id = 132,
            header = "Tangela",
            txt = "$50",
            params = {
                event = "cardshop:Tangela"
            }
        },
        {
            id = 133,
            header = "Tauros",
            txt = "$50",
            params = {
                event = "cardshop:Tauros",
            }
        },
        {
            id = 134,
            header = "Tentacool",
            txt = "$50",
            params = {
                event = "cardshop:Tentacool",
            }
        },
        {
            id = 135,
            header = "Tentacruel",
            txt = "$50",
            params = {
                event = "cardshop:Tentacruel"
            }
        },
        {
            id = 136,
            header = "Togepi",
            txt = "$50",
            params = {
                event = "cardshop:Togepi"
            }
        },
        {
            id = 137,
            header = "Vaporeon",
            txt = "$50",
            params = {
                event = "cardshop:Vaporeon"
            }
        },
        {
            id = 138,
            header = "Venomoth",
            txt = "$50",
            params = {
                event = "cardshop:Venomoth",
            }
        }, 
        {
            id = 139,
            header = "Venonat",
            txt = "$50",
            params = {
                event = "cardshop:Venonat"
            }
        },
        {
            id = 140,
            header = "Venusaur",
            txt = "$100",
            params = {
                event = "cardshop:Venusaur"
            }
        },
        {
            id = 141,
            header = "Victreebel",
            txt = "$50",
            params = {
                event = "cardshop:Victreebel",
            }
        },
        {
            id = 142,
            header = "Vileplume",
            txt = "$50",
            params = {
                event = "cardshop:Vileplume"
            }
        },
        {
            id = 143,
            header = "Voltorb",
            txt = "$50",
            params = {
                event = "cardshop:Voltorb",
            }
        }, 
        {
            id = 144,
            header = "Vulpix",
            txt = "$50",
            params = {
                event = "cardshop:Vulpix"
            }
        },
        {
            id = 145,
            header = "Wartortle",
            txt = "$50",
            params = {
                event = "cardshop:Wartortle",
            }
        },
        {
            id = 146,
            header = "Weedle",
            txt = "$50",
            params = {
                event = "cardshop:Weedle",
            }
        },
        {
            id = 147,
            header = "Weepinbell",
            txt = "$50",
            params = {
                event = "cardshop:Weepinbell"
            }
        },
        {
            id = 148,
            header = "Weezing",
            txt = "$50",
            params = {
                event = "cardshop:Weezing"
            }
        },
        {
            id = 149,
            header = "Wigglytuff",
            txt = "$50",
            params = {
                event = "cardshop:Wigglytuff"
            }
        },
        {
            id = 150,
            header = "Zapdos",
            txt = "$250",
            params = {
                event = "cardshop:Zapdos",
            }
        }, 
        {
            id = 151,
            header = "Zubat",
            txt = "$50",
            params = {
                event = "cardshop:Zubat"
            }
        },
    })
end)

RegisterNetEvent('cardshop:testMenu4', function(data)
    local id = data.id
    local number = data.number
    TriggerEvent('cardshop:sendMenu', {
        {
            id = 1,
            header = "< Go Back",
            txt = "",
            params = {
                event = "cardshop:testMenu"
            }
        },
        {
            id = 2,
            header = "BoosterPack",
            txt = "$400",
            params = {
                event = "Cards:client:buypack"
            }
        },
        {
            id = 3,
            header = "BoosterBox",
            txt = "$1250",
            params = {
                event = "Cards:client:buybox",
            }
         },
         {
            id = 4,
            header = "TCG Storage Box",
            txt = "$2000",
            params = {
                event = "Cards:client:buystoragebox",
            }
        },
    })
end)

RegisterNetEvent('cardshop:testMenu5', function(data)
    local id = data.id
    local number = data.number
    TriggerEvent('cardshop:sendMenu', {
        {
            id = 1,
            header = "< Go Back",
            txt = "",
            params = {
                event = "cardshop:testMenu"
            }
        },
        {
            id = 5,
            header = "Blastoise V",
            txt = "$500",
            params = {
                event = "cardshop:blav"
            }
        },
        {
            id = 6,
            header = "Blastoise Vmax",
            txt = "$1200",
            params = {
                event = "cardshop:blavmax",
            }
         },
         {
            id = 7,
            header = "Charizard V",
            txt = "$700",
            params = {
                event = "cardshop:chav",
            }
        },
                {
            id = 8,
            header = "Charizard VMax",
            txt = "$1300",
            params = {
                event = "cardshop:chavmax"
            }
        },
        {
            id = 9,
            header = "Charizard VMax Rainbow",
            txt = "$2700",
            params = {
                event = "cardshop:chavmaxr"
            }
        },
        {
            id = 10,
            header = "Mew V",
            txt = "$600",
            params = {
                event = "cardshop:mewv",
            }
         },
         {
            id = 11,
            header = "MewTwo Gx",
            txt = "$1500",
            params = {
                event = "cardshop:mtgx",
            }
        },
                {
            id = 12,
            header = "MewTwo Gx Rainbow",
            txt = "$2400",
            params = {
                event = "cardshop:mtgxr"
            }
        },
        {
            id = 13,
            header = "Pikachu V",
            txt = "$400",
            params = {
                event = "cardshop:pikav"
            }
        },
        {
            id = 14,
            header = "Pikachu VMax",
            txt = "$900",
            params = {
                event = "cardshop:pikavmax",
            }
         },
         {
            id = 15,
            header = "Pikachu VMax Rainbow",
            txt = "$2000",
            params = {
                event = "cardshop:pikavmaxr",
            }
        },
                 {
            id = 16,
            header = "Snorlax V",
            txt = "$500",
            params = {
                event = "cardshop:snorv",
            }
        },
                {
            id = 17,
            header = "Snorlax VMax",
            txt = "$1000",
            params = {
                event = "cardshop:snorvmax"
            }
        },
        {
            id = 18,
            header = "Snorlax VMax Rainbow",
            txt = "$2000",
            params = {
                event = "cardshop:snorvmaxr"
            }
        },
        {
            id = 19,
            header = "Venusaur V",
            txt = "$500",
            params = {
                event = "cardshop:venusv",
            }
         },
         {
            id = 20,
            header = "Venusaur VMax",
            txt = "$1200",
            params = {
                event = "cardshop:venusvmax",
            }
        },
    })
end)
