fx_version 'cerulean'

game 'gta5'

author 'Elite Development'

description 'QBCore Chopshop'

version '1.0.0'

client_scripts{
    'client/client.lua',
    'client/targets.lua',
    'client/ped.lua',
    'client/trashsearch.lua',
}

server_scripts{
    'server/server.lua',
    'server/trashsearch.lua',
}

shared_scripts{
    'config.lua',
}