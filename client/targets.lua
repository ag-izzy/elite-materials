
local QBCore = exports['qb-core']:GetCoreObject()

local dumpsters = {
  "prop_snow_dumpster_01",
  "prop_dumpster_4a",
  "prop_cs_dumpster_01a",
  "p_dumpster_t",
  "prop_dumpster_3a",
  "prop_dumpster_4b",
  "prop_dumpster_01a",
  "prop_dumpster_02b",
  "prop_dumpster_02a",
}

CreateThread(function() 
    exports['qb-target']:AddTargetModel(-67533719, {
        options = {
            {
                type = "client",
                event = "pesho:work",
                icon = "fas fa-mask",
                label = "Искам работа",
            },
        },
        distance = 2.5
    })

    exports['qb-target']:AddBoxZone("chopshop", vector3(2407.82, 3031.34, 48.15), 10, 10,  {
      name = "chopshop",
      heading = 0,
      debugPoly = false,
    }, {
      options = {
        {
          type = "client",
          event = "elite-chopshop:client:ChopShop",
          icon = 'fas fa-car',
          label = 'Дай за скрап',
          item = 'key_scrapyard',
        }
      },
      distance = 5,
    })

    exports['qb-target']:AddTargetModel(Config.Objects, {
      options = {
          {
              type = "client",
              event = "elite-trashsearch:client:searchtrash",
              icon = "fas fa-pencil-ruler",
              label = "Претърси кофата",
          },
      },
      distance = 2.1
  })
end)

