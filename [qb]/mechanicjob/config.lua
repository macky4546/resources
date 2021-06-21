Config = {}

Config.AttachedVehicle = nil

Config.AuthorizedIds = {
    "PAD82880",
}

Config.MaxStatusValues = {
    ["engine"] = 1000.0,
    ["body"] = 1000.0,
    ["radiator"] = 100,
    ["axle"] = 100,
    ["brakes"] = 100,
    ["clutch"] = 100,
    ["fuel"] = 100,
}

Config.ValuesLabels = {
    ["engine"] = "Motor",
    ["body"] = "Body",
    ["radiator"] = "Radiator",
    ["axle"] = "Drive Shaft",
    ["brakes"] = "Brakes",
    ["clutch"] = "Clutch",
    ["fuel"] = "Fuel Ttank",
}

Config.RepairCost = {
    ["body"] = "plastic",
    ["radiator"] = "plastic",
    ["axle"] = "steel",
    ["brakes"] = "iron",
    ["clutch"] = "aluminum",
    ["fuel"] = "plastic",
}

Config.RepairCostAmount = {
    ["engine"] = {
        item = "metalscrap",
        costs = 2,
    },
    ["body"] = {
        item = "plastic",
        costs = 3,
    },
    ["radiator"] = {
        item = "steel",
        costs = 5,
    },
    ["axle"] = {
        item = "aluminum",
        costs = 7,
    },
    ["brakes"] = {
        item = "copper",
        costs = 5,
    },
    ["clutch"] = {
        item = "copper",
        costs = 6,
    },
    ["fuel"] = {
        item = "plastic",
        costs = 5,
    },
}

Config.Businesses = {
    "Auto Repair",
}

Config.Plates = {
    [1] = {
        coords = {x = 937.91, y = -970.64, z = 39.49, h = 271.5, r = 1.0},
        AttachedVehicle = nil,
    },
    [2] = {
        coords = {x = 922.37, y = -979.86, z = 39.49, h = 271.5, r = 1.0}, 
        AttachedVehicle = nil,
    },
    [3] = {
        coords = {x = 921.54, y = -962.17, z = 39.49, h = 274.5, r = 1.0}, 
        AttachedVehicle = nil,
    },
    [4] = {
        coords = {x = 949.89, y = -947.75, z = 39.49, h = 90.5, r = 1.0}, 
        AttachedVehicle = nil,
    },
}

Config.Locations = {
    ["exit"] = {x = -30.26, y = -1678.63, z = 29.47, h = 181.5, r = 1.0},
    ["stash"] = {x = -8.95, y = -1658.63, z = 29.47, h = 274.5, r = 1.0},
    ["duty"] = {x = -34.58, y = -1667.84, z = 29.47, h = 180.5, r = 1.0},
    ["vehicle"] = {x = -42.98, y = -1684.42, z = 29.41, h = 94.5, r = 1.0}, 
}

Config.Vehicles = {
    ["flatbed"] = "Flatbed",
    ["minivan"] = "Minivan",
}

Config.MinimalMetersForDamage = {
    [1] = {
        min = 8000,
        max = 12000,
        multiplier = {
            min = 1,
            max = 8,
        }
    },
    [2] = {
        min = 12000,
        max = 16000,
        multiplier = {
            min = 8,
            max = 16,
        }
    },
    [3] = {
        min = 12000,
        max = 16000,
        multiplier = {
            min = 16,
            max = 24,
        }
    },
}

Config.Damages = {
    ["radiator"] = "Radiator",
    ["axle"] = "Drive Shaft",
    ["brakes"] = "Brakes",
    ["clutch"] = "Clutch",
    ["fuel"] = "Fuel Tank",
}