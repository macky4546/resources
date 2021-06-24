fx_version 'cerulean'
game 'gta5'

description 'QB-VehicleShop'
version '1.0.0'

ui_page 'html/index.html'

client_scripts {
    'client/main.lua',
    'config.lua',
    'client/showroom.lua',
    'client/customshowroom.lua',
}

server_scripts {
    'server/main.lua',
    'config.lua'
}

files {
    'html/index.html',
    'html/style.css',
    'html/reset.css',
    'html/script.js',
    'html/img/*.png',
    'html/img/site-bg.jpg',
}