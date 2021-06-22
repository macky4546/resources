------------------------------------------
--	MISSION ROW POLICE DEPARTMENT		--
------------------------------------------

-- gabz_mrpd    FRONT DOORS
table.insert(Config.DoorList, {
    maxDistance = 2,
    locked = false,
    lockpick = true,
    doors = {
        {
            objHash = -1547307588,
            objHeading = 90,
            objCoords = vector3(434.7444, -983.0781, 30.8153),
        },
        {
            objHash = -1547307588,
            objHeading = 270,
            objCoords = vector3(434.7444, -980.7556, 30.8153),
        },
    },
    authorizedJobs = {
        ['police'] = 0,
        ['offpolice'] = 0,
    }
})

-- gabz_mrpd    NORTH DOORS
table.insert(Config.DoorList, {
    maxDistance = 2,
    locked = true,
    doors = {
        {
            objHash = -1547307588,
            objHeading = 180,
            objCoords = vector3(458.2087, -972.2543, 30.8153),
        },
        {
            objHash = -1547307588,
            objHeading = 0,
            objCoords = vector3(455.8862, -972.2543, 30.8153),
        },
    },
    authorizedJobs = {
        ['police'] = 0,
        ['offpolice'] = 0,
    }
})

-- gabz_mrpd    SOUTH DOORS
table.insert(Config.DoorList, {
    maxDistance = 2,
    locked = true,
    doors = {
        {
            objHash = -1547307588,
            objHeading = 0,
            objCoords = vector3(440.7392, -998.7462, 30.8153),
        },
        {
            objHash = -1547307588,
            objHeading = 180,
            objCoords = vector3(443.0618, -998.7462, 30.8153),
        },
    },
    authorizedJobs = {
        ['police'] = 0,
        ['offpolice'] = 0,
    }
})

-- gabz_mrpd    LOBBY LEFT
table.insert(Config.DoorList, {
    fixText = true,
    objHash = -1406685646,
    objCoords = vector3(441.13, -977.93, 30.82319),
    locked = true,
    objHeading = 0,
    maxDistance = 2,
    authorizedJobs = {
        ['police'] = 0,
    }
})

-- gabz_mrpd    LOBBY RIGHT
table.insert(Config.DoorList, {
    objHash = -96679321,
    objCoords = vector3(440.5201, -986.2335, 30.82319),
    locked = true,
    objHeading = 180,
    maxDistance = 2,
    authorizedJobs = {
        ['police'] = 0,
        ['offpolice'] = 0,
    }
})

-- gabz_mrpd    GARAGE ENTRANCE 1
table.insert(Config.DoorList, {
    fixText = true,
    objHash = 1830360419,
    objCoords = vector3(464.1591, -974.6656, 26.3707),
    locked = true,
    objHeading = 269.78,
    maxDistance = 2,
    authorizedJobs = {
        ['police'] = 0,
        ['offpolice'] = 0,
    }
})

-- gabz_mrpd    GARAGE ENTRANCE 2
table.insert(Config.DoorList, {
    fixText = true,
    objHash = 1830360419,
    objCoords = vector3(464.1566, -997.5093, 26.3707),
    locked = true,
    objHeading = 89.87,
    maxDistance = 2,
    authorizedJobs = {
        ['police'] = 0,
        ['offpolice'] = 0,
    }
})

-- gabz_mrpd    GARAGE ROLLER DOOR 1
table.insert(Config.DoorList, {
    objCoords = vector3(431.4119, -1000.772, 26.69661),
    objHeading = 0,
    slides = true,
    garage = true,
    objHash = 2130672747,
    locked = true,
    audioRemote = true,
    maxDistance = 6,
    authorizedJobs = {
        ['police'] = 0,
        ['offpolice'] = 0,
    }
})

-- gabz_mrpd    GARAGE ROLLER DOOR 2
table.insert(Config.DoorList, {
    objCoords = vector3(452.3005, -1000.772, 26.69661),
    objHeading = 0,
    slides = true,
    garage = true,
    objHash = 2130672747,
    locked = true,
    audioRemote = true,
    maxDistance = 6,
    authorizedJobs = {
        ['police'] = 0,
        ['offpolice'] = 0,
    }
})

-- gabz_mrpd    BACK GATE
table.insert(Config.DoorList, {
    objCoords = vector3(488.8948, -1017.212, 27.14935),
    objHeading = 90,
    slides = true,
    objHash = -1603817716,
    locked = true,
    audioRemote = true,
    maxDistance = 6,
    authorizedJobs = {
        ['police'] = 0,
        ['offpolice'] = 0,
    }
})

-- gabz_mrpd    BACK DOORS
table.insert(Config.DoorList, {
    maxDistance = 2,
    locked = true,
    doors = {
        {
            objHash = -692649124,
            objHeading = 0,
            objCoords = vector3(467.3686, -1014.406, 26.48382),
        },
        {
            objHash = -692649124,
            objHeading = 180,
            objCoords = vector3(469.7743, -1014.406, 26.48382),
        },
    },
    authorizedJobs = {
        ['police'] = 0,
        ['offpolice'] = 0,
    }
})

-- gabz_mrpd    MUGSHOT
table.insert(Config.DoorList, {
    objHash = -1406685646,
    objCoords = vector3(475.9539, -1010.819, 26.40639),
    locked = true,
    fixText = true,
    objHeading = 180,
    maxDistance = 2,
    authorizedJobs = {
        ['police'] = 0,
    }
})

-- gabz_mrpd    CELL ENTRANCE 1
table.insert(Config.DoorList, {
    objCoords = vector3(476.6157, -1008.875, 26.48005),
    objHeading = 270,
    objHash = -53345114,
    maxDistance = 2,
    locked = true,
    audioLock = {
        ['file'] = 'metal-locker.ogg',
        ['volume'] = '0.35',
    },
    audioUnlock = {
        ['file'] = 'metallic-creak.ogg',
        ['volume'] = '0.7',
    },
    authorizedJobs = {
        ['police'] = 0,
    }
})

-- gabz_mrpd    CELL ENTRANCE 2
table.insert(Config.DoorList, {
    objCoords = vector3(481.0084, -1004.118, 26.48005),
    objHeading = 180,
    objHash = -53345114,
    maxDistance = 2,
    locked = true,
    audioLock = {
        ['file'] = 'metal-locker.ogg',
        ['volume'] = '0.35',
    },
    audioUnlock = {
        ['file'] = 'metallic-creak.ogg',
        ['volume'] = '0.7',
    },
    authorizedJobs = {
        ['police'] = 0,
    }
})

-- gabz_mrpd    CELL 1
table.insert(Config.DoorList, {
    objCoords = vector3(477.9126, -1012.189, 26.48005),
    objHeading = 0,
    objHash = -53345114,
    maxDistance = 2,
    locked = true,
    audioLock = {
        ['file'] = 'metal-locker.ogg',
        ['volume'] = '0.35',
    },
    audioUnlock = {
        ['file'] = 'metallic-creak.ogg',
        ['volume'] = '0.7',
    },
    authorizedJobs = {
        ['police'] = 0,
    }
})

-- gabz_mrpd    CELL 2
table.insert(Config.DoorList, {
    objCoords = vector3(480.9128, -1012.189, 26.48005),
    objHeading = 0,
    objHash = -53345114,
    maxDistance = 2,
    locked = true,
    audioLock = {
        ['file'] = 'metal-locker.ogg',
        ['volume'] = '0.35',
    },
    audioUnlock = {
        ['file'] = 'metallic-creak.ogg',
        ['volume'] = '0.7',
    },
    authorizedJobs = {
        ['police'] = 0,
    }
})

-- gabz_mrpd    CELL 3
table.insert(Config.DoorList, {
    objCoords = vector3(483.9127, -1012.189, 26.48005),
    objHeading = 0,
    objHash = -53345114,
    maxDistance = 2,
    locked = true,
    audioLock = {
        ['file'] = 'metal-locker.ogg',
        ['volume'] = '0.35',
    },
    audioUnlock = {
        ['file'] = 'metallic-creak.ogg',
        ['volume'] = '0.7',
    },
    authorizedJobs = {
        ['police'] = 0,
    }
})

-- gabz_mrpd    CELL 4
table.insert(Config.DoorList, {
    objCoords = vector3(486.9131, -1012.189, 26.48005),
    objHeading = 0,
    objHash = -53345114,
    maxDistance = 2,
    locked = true,
    audioLock = {
        ['file'] = 'metal-locker.ogg',
        ['volume'] = '0.35',
    },
    audioUnlock = {
        ['file'] = 'metallic-creak.ogg',
        ['volume'] = '0.7',
    },
    authorizedJobs = {
        ['police'] = 0,
    }
})

-- gabz_mrpd    CELL 5
table.insert(Config.DoorList, {
    objCoords = vector3(484.1764, -1007.734, 26.48005),
    objHeading = 180,
    objHash = -53345114,
    maxDistance = 2,
    locked = true,
    audioLock = {
        ['file'] = 'metal-locker.ogg',
        ['volume'] = '0.35',
    },
    audioUnlock = {
        ['file'] = 'metallic-creak.ogg',
        ['volume'] = '0.7',
    },
    authorizedJobs = {
        ['police'] = 0,
    }
})

-- gabz_mrpd    LINEUP
table.insert(Config.DoorList, {
    fixText = true,
    objHash = -288803980,
    objCoords = vector3(479.06, -1003.173, 26.4065),
    locked = true,
    objHeading = 90,
    maxDistance = 2,
    authorizedJobs = {
        ['police'] = 0,
    }
})

-- gabz_mrpd    OBSERVATION I
table.insert(Config.DoorList, {
    fixText = true,
    objHash = -1406685646,
    objCoords = vector3(482.6694, -983.9868, 26.40548),
    locked = true,
    objHeading = 270,
    maxDistance = 2,
    authorizedJobs = {
        ['police'] = 0,
    }
})

-- gabz_mrpd    INTERROGATION I
table.insert(Config.DoorList, {
    fixText = true,
    objHash = -1406685646,
    objCoords = vector3(482.6701, -987.5792, 26.40548),
    locked = true,
    objHeading = 270,
    maxDistance = 2,
    authorizedJobs = {
        ['police'] = 0,
    }
})

-- gabz_mrpd    OBSERVATION II
table.insert(Config.DoorList, {
    fixText = true,
    objHash = -1406685646,
    objCoords = vector3(482.6699, -992.2991, 26.40548),
    locked = true,
    objHeading = 270,
    maxDistance = 2,
    authorizedJobs = {
        ['police'] = 0,
    }
})

-- gabz_mrpd    INTERROGATION II
table.insert(Config.DoorList, {
    fixText = true,
    objHash = -1406685646,
    objCoords = vector3(482.6703, -995.7285, 26.40548),
    locked = true,
    objHeading = 270,
    maxDistance = 2,
    authorizedJobs = {
        ['police'] = 0,
    }
})

-- gabz_mrpd    EVIDENCE
table.insert(Config.DoorList, {
    fixText = true,
    objHash = -692649124,
    objCoords = vector3(475.8323, -990.4839, 26.40548),
    locked = true,
    objHeading = 134.7,
    maxDistance = 2,
    authorizedJobs = {
        ['police'] = 0,
    }
})

-- gabz_mrpd    ARMOURY 1
table.insert(Config.DoorList, {
    fixText = true,
    objHash = -692649124,
    objCoords = vector3(479.7507, -999.629, 30.78927),
    locked = true,
    objHeading = 90,
    maxDistance = 2,
    authorizedJobs = {
        ['police'] = 0,
    }
})

-- gabz_mrpd    ARMOURY 2
table.insert(Config.DoorList, {
    fixText = true,
    objHash = -692649124,
    objCoords = vector3(487.4378, -1000.189, 30.78697),
    locked = true,
    objHeading = 181.28,
    maxDistance = 2,
    authorizedJobs = {
        ['police'] = 0,
    }
})

-- gabz_mrpd    SHOOTING RANGE
table.insert(Config.DoorList, {
    maxDistance = 2,
    locked = true,
    doors = {
        {
            objHash = -692649124,
            objHeading = 0,
            objCoords = vector3(485.6133, -1002.902, 30.78697),
        },
        {
            objHash = -692649124,
            objHeading = 180,
            objCoords = vector3(488.0184, -1002.902, 30.78697),
        },
    },
    authorizedJobs = {
        ['police'] = 0,
    }
})

-- gabz_mrpd    ROOFTOP
table.insert(Config.DoorList, {
    objCoords = vector3(464.3086, -984.5284, 43.77124),
    objHeading = 90.000465393066,
    slides = false,
    garage = false,
    maxDistance = 2,
    fixText = true,
    objHash = -692649124,
    locked = true,
    lockpick = false,
    audioRemote = false,
    authorizedJobs = {
        ['police'] = 0,
    }
})

-- gabz_mrpd    BOLLARDS 1
table.insert(Config.DoorList, {
    textCoords = vector3(410.0258, -1028.32, 29.2202),
    objCoords = vector3(410.0258, -1024.22, 29.2202),
    objHeading = 270,
    slides = true,
    setText = true,
    garage = true,
    objHash = -1635161509,
    maxDistance = 6,
    fixText = false,
    locked = true,
    lockpick = false,
    audioRemote = true,
    authorizedJobs = {
        ['police'] = 0,
    }
})

-- gabz_mrpd    BOLLARDS 2
table.insert(Config.DoorList, {
    textCoords = vector3(410.0258, -1020.19, 29.2202),
    objCoords = vector3(410.0258, -1024.226, 29.22022),
    objHeading = 270,
    slides = true,
    maxDistance = 6,
    garage = true,
    objHash = -1868050792,
    setText = true,
    fixText = false,
    locked = true,
    lockpick = false,
    audioRemote = true,
    authorizedJobs = {
        ['police'] = 0,
    }
})


-- prison
table.insert(Config.DoorList, {
	locked = true,
	slides = true,
	objHeading = 0.080532789230347,
	authorizedJobs = { ['police']=0 },
	objCoords = vector3(1839.601, 2588.299, 44.95518),
	lockpick = false,
	fixText = false,
	objHash = -1612152164,
	garage = false,
	audioRemote = false,
	maxDistance = 6.0,		
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- prison
table.insert(Config.DoorList, {
	locked = true,
	slides = true,
	objHeading = 90.080513000488,
	authorizedJobs = { ['police']=0 },
	objCoords = vector3(1836.558, 2594.45, 44.95518),
	lockpick = false,
	fixText = false,
	objHash = -1612152164,
	garage = false,
	audioRemote = false,
	maxDistance = 6.0,		
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- prison
table.insert(Config.DoorList, {
	locked = true,
	slides = true,
	objHeading = 90.080513000488,
	authorizedJobs = { ['police']=0 },
	objCoords = vector3(1831.514, 2594.452, 44.95518),
	lockpick = false,
	fixText = false,
	objHash = -1612152164,
	garage = false,
	audioRemote = false,
	maxDistance = 6.0,		
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- prison
table.insert(Config.DoorList, {
	locked = true,
	slides = false,
	objHeading = 179.99987792969,
	authorizedJobs = { ['police']=0 },
	objCoords = vector3(1797.761, 2596.565, 46.38731),
	lockpick = false,
	fixText = false,
	objHash = -1156020871,
	garage = false,
	audioRemote = false,
	maxDistance = 2.0,		
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- prison
table.insert(Config.DoorList, {
	locked = true,
	slides = true,
	objHeading = 179.99998474121,
	authorizedJobs = { ['police']=0 },
	objCoords = vector3(1819.995, 2603.825, 44.67921),
	lockpick = false,
	fixText = false,
	objHash = -1228223417,
	garage = false,
	audioRemote = false,
	maxDistance = 6.0,		
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- prison
table.insert(Config.DoorList, {
	locked = true,
	slides = true,
	objHeading = 90.0,
	authorizedJobs = { ['police']=0 },
	objCoords = vector3(1844.998, 2604.812, 44.63978),
	lockpick = false,
	fixText = false,
	objHash = 741314661,
	garage = false,
	audioRemote = false,
	maxDistance = 6.0,		
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- prison
table.insert(Config.DoorList, {
	locked = true,
	slides = false,
	objHeading = 269.95935058594,
	authorizedJobs = { ['police']=0 },
	objCoords = vector3(1772.604, 2597.686, 45.8366),
	lockpick = false,
	fixText = false,
	objHash = -688867873,
	garage = false,
	audioRemote = false,
	maxDistance = 2.0,		
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- prison
table.insert(Config.DoorList, {
	locked = true,
	slides = false,
	objHeading = 359.95935058594,
	authorizedJobs = { ['police']=0 },
	objCoords = vector3(1775.008, 2597.116, 45.83894),
	lockpick = false,
	fixText = false,
	objHash = -688867873,
	garage = false,
	audioRemote = false,
	maxDistance = 2.0,		
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- prison
table.insert(Config.DoorList, {
	locked = true,
	slides = false,
	objHeading = 359.95935058594,
	authorizedJobs = { ['police']=0 },
	objCoords = vector3(1777.96, 2597.123, 45.83838),
	lockpick = false,
	fixText = false,
	objHash = -688867873,
	garage = false,
	audioRemote = false,
	maxDistance = 2.0,		
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- prison
table.insert(Config.DoorList, {
	locked = true,
	slides = false,
	objHeading = 359.95935058594,
	authorizedJobs = { ['police']=0 },
	objCoords = vector3(1780.898, 2597.126, 45.83871),
	lockpick = false,
	fixText = false,
	objHash = -688867873,
	garage = false,
	audioRemote = false,
	maxDistance = 2.0,		
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- prison
table.insert(Config.DoorList, {
	locked = true,
	slides = false,
	objHeading = 359.95935058594,
	authorizedJobs = { ['police']=0 },
	objCoords = vector3(1780.898, 2597.126, 45.83871),
	lockpick = false,
	fixText = false,
	objHash = -688867873,
	garage = false,
	audioRemote = false,
	maxDistance = 2.0,		
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- prison
table.insert(Config.DoorList, {
	locked = true,
	slides = true,
	objHeading = 269.95935058594,
	authorizedJobs = { ['police']=0 },
	objCoords = vector3(1782.592, 2590.896, 44.77684),
	lockpick = false,
	fixText = false,
	objHash = -1612152164,
	garage = false,
	audioRemote = false,
	maxDistance = 6.0,		
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- prison
table.insert(Config.DoorList, {
	locked = true,
	slides = true,
	objHeading = 271.19573974609,
	authorizedJobs = { ['police']=0 },
	objCoords = vector3(1749.826, 2564.035, 46.18301),
	lockpick = false,
	fixText = false,
	objHash = -1156020871,
	garage = false,
	audioRemote = false,
	maxDistance = 6.0,		
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- prison
table.insert(Config.DoorList, {
	locked = true,
	slides = false,
	lockpick = false,
	maxDistance = 2.5,
	doors = {
		{objHash = -1156020871, objHeading = 92.468780517578, objCoords = vector3(1749.918, 2560.666, 46.18301)},
		{objHash = 1181661112, objHeading = 179.88110351562, objCoords = vector3(1739.091, 2560.569, 44.69802)}
 },
	audioRemote = false,
	authorizedJobs = { ['police']=0 },		
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- prison
table.insert(Config.DoorList, {
	locked = true,
	slides = false,
	lockpick = false,
	maxDistance = 2.5,
	doors = {
		{objHash = -1156020871, objHeading = 89.658508300781, objCoords = vector3(1714.391, 2562.921, 46.18288)},
		{objHash = -1156020871, objHeading = 269.53720092773, objCoords = vector3(1714.402, 2566.373, 46.18288)}
 },
	audioRemote = false,
	authorizedJobs = { ['police']=0 },		
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- prison
table.insert(Config.DoorList, {
	locked = true,
	slides = false,
	lockpick = false,
	maxDistance = 2.5,
	doors = {
		{objHash = -1156020871, objHeading = 269.02227783203, objCoords = vector3(1686.89, 2566.308, 46.18288)},
		{objHash = -1156020871, objHeading = 88.882637023926, objCoords = vector3(1686.864, 2562.856, 46.18288)}
 },
	audioRemote = false,
	authorizedJobs = { ['police']=0 },		
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- prison
table.insert(Config.DoorList, {
	locked = true,
	slides = true,
	objHeading = 359.75610351562,
	authorizedJobs = { ['police']=0 },
	objCoords = vector3(1615.964, 2581.14, 44.57089),
	lockpick = false,
	fixText = false,
	objHash = 741314661,
	garage = false,
	audioRemote = false,
	maxDistance = 6.0,		
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- prison
table.insert(Config.DoorList, {
	locked = true,
	slides = false,
	lockpick = false,
	maxDistance = 2.5,
	doors = {
		{objHash = -1156020871, objHeading = 136.9983215332, objCoords = vector3(1618.727, 2573.553, 46.18288)},
		{objHash = -1156020871, objHeading = 317.05065917969, objCoords = vector3(1616.22, 2575.879, 46.18288)}
 },
	audioRemote = false,
	authorizedJobs = { ['police']=0 },		
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- prison
table.insert(Config.DoorList, {
	locked = true,
	slides = false,
	lockpick = false,
	maxDistance = 2.5,
	doors = {
		{objHash = -1156020871, objHeading = 121.56001281738, objCoords = vector3(1623.663, 2526.344, 46.18288)},
		{objHash = -1156020871, objHeading = 301.62149047852, objCoords = vector3(1621.898, 2529.151, 46.18288)}
 },
	audioRemote = false,
	authorizedJobs = { ['police']=0 },		
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- prison
table.insert(Config.DoorList, {
	locked = true,
	slides = false,
	lockpick = false,
	maxDistance = 2.5,
	doors = {
		{objHash = -1156020871, objHeading = 158.85523986816, objCoords = vector3(1668.744, 2493.012, 46.18288)},
		{objHash = -1156020871, objHeading = 339.00164794922, objCoords = vector3(1665.504, 2494.206, 46.18288)}
 },
	audioRemote = false,
	authorizedJobs = { ['police']=0 },		
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- prison
table.insert(Config.DoorList, {
	locked = true,
	slides = false,
	lockpick = false,
	maxDistance = 2.5,
	doors = {
		{objHash = -1156020871, objHeading = 317.2532043457, objCoords = vector3(1712.604, 2490.042, 46.18295)},
		{objHash = -1156020871, objHeading = 137.46308898926, objCoords = vector3(1715.117, 2487.725, 46.18295)}
 },
	audioRemote = false,
	authorizedJobs = { ['police']=0 },		
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- prison
table.insert(Config.DoorList, {
	locked = true,
	slides = false,
	lockpick = false,
	maxDistance = 2.5,
	doors = {
		{objHash = -1156020871, objHeading = 260.47552490234, objCoords = vector3(1721.332, 2510.969, 46.18288)},
		{objHash = -1156020871, objHeading = 80.306419372559, objCoords = vector3(1720.758, 2507.54, 46.18288)}
 },
	audioRemote = false,
	authorizedJobs = { ['police']=0 },		
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- prison
table.insert(Config.DoorList, {
	locked = true,
	slides = false,
	lockpick = false,
	maxDistance = 2.5,
	doors = {
		{objHash = -1156020871, objHeading = 348.01516723633, objCoords = vector3(1762.904, 2535.084, 46.18301)},
		{objHash = -1156020871, objHeading = 168.01651000977, objCoords = vector3(1766.218, 2534.34, 46.18301)}
 },
	audioRemote = false,
	authorizedJobs = { ['police']=0 },		
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- prison
table.insert(Config.DoorList, {
	locked = true,
	slides = true,
	objHeading = 179.99998474121,
	authorizedJobs = { ['police']=0 },
	objCoords = vector3(1799.608, 2616.975, 44.60325),
	lockpick = false,
	fixText = false,
	objHash = 741314661,
	garage = false,
	audioRemote = false,
	maxDistance = 6.0,		
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})