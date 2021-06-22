fx_version 'cerulean'
game 'gta5'

version '1.10.0'
description 'https://github.com/thelindat/nui_doorlock'

server_scripts {
	'config.lua',
	'configs/*.lua',
	'server/main.lua'
}

client_scripts {
	'config.lua',
	'configs/*.lua',
	'client/main.lua'
}

ui_page {
    'html/door.html',
}

files {
	'html/door.html',
	'html/main.js', 
	'html/style.css',

	'html/sounds/*.ogg',
}
