Config = {}

Config.Invincible = true 
Config.Frozen = true 
Config.Stoic = true 
Config.FadeIn = true 
Config.DistanceSpawn = 20.0 

Config.MinusOne = true 

Config.GenderNumbers = {
	['male'] = 4,
	['female'] = 5
}

Config.PedList = {

	{
		model = `ig_mp_agent14`, 
		coords = vector4(515.34, 169.83, 99.37, 255.74), 
		gender = 'male'
	},

	{
		model = `csb_agent`, 
		coords = vector4(2409.86, 3031.27, 48.15, 350.01), 
		gender = 'male'
	},

}



Config.CommonItems = {
    'iron',
    'copper',
    'plastic',
    'metalscrap',

}

Config.RareItems = {
    'lockpick',
    'screwdriverset',
    'weed_skunk',

    
}

Config.KeyChopShop = {
    'key_scrapyard',


    
}

Config.ItemTiers = 1

Config.Timer = 15 


Config.RewardTypes = {
    [1] = {
        type = "item"
    },
    [2] = {
        type = "money",
    },
    [3] = {
        type = "nothing",
    }
}



Config.RewardsSmall = {
    [1] = {item = "plastic", minAmount = 1, maxAmount = 3},
    [2] = {item = "iron", minAmount = 1, maxAmount = 2},
    [3] = {item = "pistol_ammo", minAmount = 1, maxAmount = 5},
    [4] = {item = "rolling_paper", minAmount = 1, maxAmount = 8},
    [5] = {item = "metalscrap", minAmount = 1, maxAmount = 5},
    [6] = {item = "copper", minAmount = 1, maxAmount = 1},

}

Config.Objects = {
    `hei_heist_kit_bin_01`,
    `prop_bin_01a`,
    `prop_bin_02a`,
    `prop_bin_03a`,
    `prop_bin_04a`,
    `prop_bin_05a`,
    `prop_bin_06a`,
    `prop_bin_07a`,
    `prop_bin_07b`,
    `prop_bin_07c`,
    `prop_bin_07d`,
    `prop_bin_08a`,
    `prop_bin_08open`,
    `prop_bin_09a`,
    `prop_bin_10a`,
    `prop_bin_10b`,
    `prop_bin_11a`,
    `prop_bin_11b`,
    `prop_bin_12a`,
    `prop_bin_13a`,
    `prop_bin_14a`,
    `prop_bin_14b`,
    `prop_bin_beach_01a`,
    `prop_bin_beach_01d`,
    `prop_bin_delpiero`,
    `prop_bin_delpiero_b`,
    `prop_cs_bin_01`,
    `prop_cs_bin_01_skinned`,
    `prop_cs_bin_02`,
    `prop_cs_bin_03`,
    `prop_gas_binunit01`,
    `prop_gas_smallbin01`,
    `prop_recyclebin_01a`,
    `prop_recyclebin_02_c`,
    `prop_recyclebin_02_d`,
    `prop_recyclebin_02a`,
    `prop_recyclebin_02b`,
    `prop_recyclebin_03_a`,
    `prop_recyclebin_04_a`,
    `prop_recyclebin_04_b`,
    `prop_recyclebin_05_a`,
    `zprop_bin_01a_old`,
    `p_dumpster_t`,
    `prop_cs_dumpster_01a`,
    `prop_dumpster_01a`,
    `prop_dumpster_02a`,
    `prop_dumpster_02b`,
    `prop_dumpster_3a`,
    `prop_dumpster_4a`,
    `prop_dumpster_4b`
}