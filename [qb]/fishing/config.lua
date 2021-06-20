Config = {}

Config.Debug = false
Config.JobBusy = false

Config.MarkerData = {
    ["type"] = 6,
    ["size"] = vector3(2.0, 2.0, 2.0),
    ["color"] = vector3(0, 255, 150)
}

Config.FishingRestaurant = {
    ["name"] = "La Spada Fish Restaurant",
    ["blip"] = {
        ["sprite"] = 628,
        ["color"] = 3
    },
    ["ped"] = {
        ["model"] = 0xED0CE4C6,
        ["position"] = vector3(-1038.4545898438, -1397.0551757813, 5.553192615509),
        ["heading"] = 75.0
    }
}

Config.FishingItems = {
    ["rod"] = {
        ["name"] = "fishingrod",
        ["label"] = "Fishing Rod"
    },
    ["bait"] = {
        ["name"] = "fishingbait",
        ["label"] = "Fishing Bait"
    },
["fish"] 			 		 	 = {["name"] = "fish", 							["label"] = "Fish",                     ["weight"] = 10,      ["type"] = "item",      ["image"] = "fish.png",                  ["price"] = 100,       ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Fish for Fishing."},
["killerwhalemeat"] 			 = {["name"] = "killerwhalemeat", 				["label"] = "killerwhalemeat",          ["weight"] = 10,      ["type"] = "item",      ["image"] = "killerwhalemeat.png",       ["price"] = 1000,       ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Fish for Fishing."},
["stingraymeat"] 			     = {["name"] = "stingraymeat", 				    ["label"] = "stingraymeat",              ["weight"] = 11,      ["type"] = "item",      ["image"] = "stingraymeat.png",         ["price"] = 1000,       ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Fish for Fishing."},
["tigersharkmeat"] 			     = {["name"] = "tigersharkmeat", 				["label"] = "tigersharkmeat",            ["weight"] = 11,      ["type"] = "item",      ["image"] = "tigersharkmeat.png",       ["price"] = 500,       ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Fish for Fishing."},
["catfish"] 			         = {["name"] = "catfish", 				        ["label"] = "catfish",                   ["weight"] = 11,      ["type"] = "item",      ["image"] = "catfish.png",              ["price"] = 500,       ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Fish for Fishing."},
["salmon"] 			             = {["name"] = "salmon", 				        ["label"] = "salmon",                    ["weight"] = 11,      ["type"] = "item",      ["image"] = "salmon.png",               ["price"] = 500,       ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Fish for Fishing."},
["largemouthbass"] 			     = {["name"] = "largemouthbass", 				["label"] = "largemouthbass",            ["weight"] = 11,      ["type"] = "item",      ["image"] = "largemouthbass.png",       ["price"] = 500,       ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Fish for Fishing."},
["goldfish"] 			         = {["name"] = "goldfish", 			        	["label"] = "goldfish",                  ["weight"] = 11,      ["type"] = "item",      ["image"] = "goldfish.png",             ["price"] = 100,       ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Fish for Fishing."},
["redfish"] 			         = {["name"] = "redfish", 			        	["label"] = "redfish",                   ["weight"] = 11,      ["type"] = "item",      ["image"] = "redfish.png",              ["price"] = 100,       ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Fish for Fishing."},
["bluefish"] 			         = {["name"] = "bluefish", 			        	["label"] = "bluefish",                  ["weight"] = 11,      ["type"] = "item",      ["image"] = "bluefish.png",             ["price"] = 100,       ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Fish for Fishing."},
["stripedbass"] 			     = {["name"] = "stripedbass", 			        ["label"] = "stripedbass",               ["weight"] = 11,      ["type"] = "item",      ["image"] = "stripedbass.png",          ["price"] = 100,       ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Fish for Fishing."},
["fishingrod"] 			 		 = {["name"] = "fishingrod", 					["label"] = "Fishing Rod", 				["weight"] = 3, 		["type"] = "item", 		["image"] = "fishingrod.png",       	 ["price"] = 1000,		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "A fishing rod for adventures with friends!!"},	
["fishingbait"] 			 	 = {["name"] = "fishingbait", 					["label"] = "Fish Bait", 				["weight"] = 1, 		["type"] = "item", 		["image"] = "fishingbait.png", 		     ["price"] = 1000,	    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "A fish bait"},

}

Config.FishingZones = {
    {
        ["name"] = "Beach Fishing",
        ["coords"] = vector3(-1948.1279296875, -749.79125976563, 2.5400819778442),
        ["radius"] = 50.0,
    },
    {
        ["name"] = "Sandy Fishing 1",
        ["coords"] = vector3(1311.5769042969, 4228.833984375, 33.915531158447),
        ["radius"] = 50.0,
    },
    {
        ["name"] = "Sandy Fishing 2",
        ["coords"] = vector3(1525.0518798828, 3908.9050292969, 30.799766540527),
        ["radius"] = 50.0,
    },
    {
        ["name"] = "Sandy Fishing 3",
        ["coords"] = vector3(2223.6940917969, 4575.70703125, 31.233570098877),
        ["radius"] = 50.0,
    },
    {
        ["name"] = "Sandy Fishing 4",
        ["coords"] = vector3(31.989250183105, 4294.7797851563, 31.231893539429),
        ["radius"] = 50.0,
    },
    {
        ["name"] = "ocean Fishing 1",
        ["coords"] = vector3(-1835.0385742188, -1820.4168701172, 3.6758048534393),
        ["radius"] = 200.0,
    },
    {
        ["name"] = "ocean Fishing 2",
        ["coords"] = vector3(-722.52124023438, 7188.6108398438, 1.8514842987061),
        ["radius"] = 200.0,
    },
    {
        ["name"] = "ocean Fishing 3",
        ["coords"] = vector3(3469.1770019531, 1271.2962646484, 1.366447687149),
        ["radius"] = 200.0,
    },
    {
        ["name"] = "ocean Fishing 4",
        ["coords"] = vector3(-3277.4191894531, 2613.3405761719, 1.6248697042465),
        ["radius"] = 200.0,
    },
    {
        ["name"] = "special0",
        ["coords"] = vector3(7040.34, 8172.63, 204.435),
        ["radius"] = 500.0,
        ["secret"] = true,
    },
    {
        ["name"] = "special1",
        ["coords"] = vector3(3194.11121337885, 906.8347851562501, 442.03224151611005),
        ["radius"] = 10.0,
        ["secret"] = true,
    },
    {
        ["name"] = "special2",
        ["coords"] = vector3(-3081.5139697266004, 4007.4116894532, 201.00122415304185),
        ["radius"] = 10.0,
        ["secret"] = true,
    },
    {
        ["name"] = "special3",
        ["coords"] = vector3(-2523.3720629883, 7160.87897460945, 200.27662748873234),
        ["radius"] = 10.0,
        ["secret"] = true,
    },
    {
        ["name"] = "special4",
        ["coords"] = vector3(250.32162254333554, 1483.387672119135, 496.65704315185496),
        ["radius"] = 10.0,
        ["secret"] = true,
    }
}

