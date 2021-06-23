Config = Config or {}

Config.AllowedVehicles = {
   [1] = {model = "taxi", label = "Standard Cab"},
}

Config.Meter = {
    ["defaultPrice"] = 1.60
}

Config.Locations = {
    ["vehicle"] = {
      vector4(909.5, -177.35, 74.22, 238.5),
    }
}

Config.NPCLocations = {
    TakeLocations = {
        [1] = vector4(257.61, -380.57, 44.71, 340.5), 
        [2] = vector4(-48.58, -790.12, 44.22, 340.5), 
        [3] = vector4(240.06, -862.77, 29.73, 341.5), 
        [4] = vector4(826.0, -1885.26, 29.32, 81.5), 
        [5] = vector4(350.84, -1974.13, 24.52, 318.5), 
        [6] = vector4(-229.11, -2043.16, 27.75, 233.5), 
        [7] = vector4(-1053.23, -2716.2, 13.75, 329.5), 
        [8] = vector4(-774.04, -1277.25, 5.15, 171.5), 
        [9] = vector4(-1184.3, -1304.16, 5.24, 293.5), 
        [10] = vector4(-1321.28, -833.8, 16.95, 140.5), 
        [11] = vector4(-1613.99, -1015.82, 13.12, 342.5), 
        [12] = vector4(-1392.74, -584.91, 30.24, 32.5), 
        [13] = vector4(-515.19, -260.29, 35.53, 201.5), 
        [14] = vector4(-760.84, -34.35, 37.83, 208.5), 
        [15] = vector4(-1284.06, 297.52, 64.93, 148.5), 
        [16] = vector4(-808.29, 828.88, 202.89, 200.5),
    },
    DeliverLocations = {
        [1] = vector4(-1074.39, -266.64, 37.75, 117.5), 
        [2] = vector4(-1412.07, -591.75, 30.38, 298.5), 
        [3] = vector4(-679.9, -845.01, 23.98, 269.5), 
        [4] = vector4(-158.05, -1565.3, 35.06, 139.5), 
        [5] = vector4(442.09, -1684.33, 29.25, 320.5), 
        [6] = vector4(1120.73, -957.31, 47.43, 289.5), 
        [7] = vector4(1238.85, -377.73, 69.03, 70.5), 
        [8] = vector4(922.24, -2224.03, 30.39, 354.5), 
        [9] = vector4(1920.93, 3703.85, 32.63, 120.5), 
        [10] = vector4(1662.55, 4876.71, 42.05, 185.5), 
        [11] = vector4(-9.51, 6529.67, 31.37, 136.5), 
        [12] = vector4(-3232.7, 1013.16, 12.09, 177.5), 
        [13] = vector4(-1604.09, -401.66, 42.35, 321.5), 
        [14] = vector4(-586.48, -255.96, 35.91, 210.5),
        [15] = vector4(23.66, -60.23, 63.62, 341.5), 
        [16] = vector4(550.3, 172.55, 100.11, 339.5), 
        [17] = vector4(-1048.55, -2540.58, 13.69, 148.5), 
        [18] = vector4(-9.55, -544.0, 38.63, 87.5), 
        [19] = vector4(-7.86, -258.22, 46.9, 68.5), 
        [20] = vector4(-743.34, 817.81, 213.6, 219.5), 
        [21] = vector4(218.34, 677.47, 189.26, 359.5), 
        [22] = vector4(263.2, 1138.81, 221.75, 203.5), 
        [23] = vector4(220.64, -1010.81, 29.22, 160.5), 
    }
}

Config.NpcSkins = {
    [1] = {
        'a_f_m_skidrow_01',
        'a_f_m_soucentmc_01',
        'a_f_m_soucent_01',
        'a_f_m_soucent_02',
        'a_f_m_tourist_01',
        'a_f_m_trampbeac_01',
        'a_f_m_tramp_01',
        'a_f_o_genstreet_01',
        'a_f_o_indian_01',
        'a_f_o_ktown_01',
        'a_f_o_salton_01',
        'a_f_o_soucent_01',
        'a_f_o_soucent_02',
        'a_f_y_beach_01',
        'a_f_y_bevhills_01',
        'a_f_y_bevhills_02',
        'a_f_y_bevhills_03',
        'a_f_y_bevhills_04',
        'a_f_y_business_01',
        'a_f_y_business_02',
        'a_f_y_business_03',
        'a_f_y_business_04',
        'a_f_y_eastsa_01',
        'a_f_y_eastsa_02',
        'a_f_y_eastsa_03',
        'a_f_y_epsilon_01',
        'a_f_y_fitness_01',
        'a_f_y_fitness_02',
        'a_f_y_genhot_01',
        'a_f_y_golfer_01',
        'a_f_y_hiker_01',
        'a_f_y_hipster_01',
        'a_f_y_hipster_02',
        'a_f_y_hipster_03',
        'a_f_y_hipster_04',
        'a_f_y_indian_01',
        'a_f_y_juggalo_01',
        'a_f_y_runner_01',
        'a_f_y_rurmeth_01',
        'a_f_y_scdressy_01',
        'a_f_y_skater_01',
        'a_f_y_soucent_01',
        'a_f_y_soucent_02',
        'a_f_y_soucent_03',
        'a_f_y_tennis_01',
        'a_f_y_tourist_01',
        'a_f_y_tourist_02',
        'a_f_y_vinewood_01',
        'a_f_y_vinewood_02',
        'a_f_y_vinewood_03',
        'a_f_y_vinewood_04',
        'a_f_y_yoga_01',
        'g_f_y_ballas_01',
    },
    [2] = {
        'ig_barry',
        'ig_bestmen',
        'ig_beverly',
        'ig_car3guy1',
        'ig_car3guy2',
        'ig_casey',
        'ig_chef',
        'ig_chengsr',
        'ig_chrisformage',
        'ig_clay',
        'ig_claypain',
        'ig_cletus',
        'ig_dale',
        'ig_dreyfuss',
        'ig_fbisuit_01',
        'ig_floyd',
        'ig_groom',
        'ig_hao',
        'ig_hunter',
        'csb_prolsec',
        'ig_joeminuteman',
        'ig_josef',
        'ig_josh',
        'ig_lamardavis',
        'ig_lazlow',
        'ig_lestercrest',
        'ig_lifeinvad_01',
        'ig_lifeinvad_02',
        'ig_manuel',
        'ig_milton',
        'ig_mrk',
        'ig_nervousron',
        'ig_nigel',
        'ig_old_man1a',
        'ig_old_man2',
        'ig_oneil',
        'ig_orleans',
        'ig_ortega',
        'ig_paper',
        'ig_priest',
        'ig_prolsec_02',
        'ig_ramp_gang',
        'ig_ramp_hic',
        'ig_ramp_hipster',
        'ig_ramp_mex',
        'ig_roccopelosi',
        'ig_russiandrunk',
        'ig_siemonyetarian',
        'ig_solomon',
        'ig_stevehains',
        'ig_stretch',
        'ig_talina',
        'ig_taocheng',
        'ig_taostranslator',
        'ig_tenniscoach',
        'ig_terry',
        'ig_tomepsilon',
        'ig_tylerdix',
        'ig_wade',
        'ig_zimbor',
        's_m_m_paramedic_01',
        'a_m_m_afriamer_01',
        'a_m_m_beach_01',
        'a_m_m_beach_02',
        'a_m_m_bevhills_01',
        'a_m_m_bevhills_02',
        'a_m_m_business_01',
        'a_m_m_eastsa_01',
        'a_m_m_eastsa_02',
        'a_m_m_farmer_01',
        'a_m_m_fatlatin_01',
        'a_m_m_genfat_01',
        'a_m_m_genfat_02',
        'a_m_m_golfer_01',
        'a_m_m_hasjew_01',
        'a_m_m_hillbilly_01',
        'a_m_m_hillbilly_02',
        'a_m_m_indian_01',
        'a_m_m_ktown_01',
        'a_m_m_malibu_01',
        'a_m_m_mexcntry_01',
        'a_m_m_mexlabor_01',
        'a_m_m_og_boss_01',
        'a_m_m_paparazzi_01',
        'a_m_m_polynesian_01',
        'a_m_m_prolhost_01',
        'a_m_m_rurmeth_01',
    }
}
