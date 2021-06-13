fx_version 'cerulean'
name 'cosmo_hud'
description 'cosmo_hud for fivem, uses library from loading.io'
ui_page 'html/ui.html'
author 'CosmoKramer'
game 'gta5'

files {
    'html/ui.html',
    'html/script.js',
    'html/style.css',
    'html/loading-bar.js',
    'html/nitrous.png'
}


client_scripts {
    'config.lua',
    'client/client.lua',
    'client/stress.lua',
    'client/cruisecontrol.lua'
}

server_script 'server/server.lua'