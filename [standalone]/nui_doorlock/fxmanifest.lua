fx_version 'cerulean'
game 'gta5'

version '1.10.0'
description 'https://github.com/qbcore-framework/nui_doorlock'
versioncheck 'https://raw.githubusercontent.com/qbcore-framework/nui_doorlock/main/fxmanifest.lua'

server_scripts {
	'config.lua',
	'configs/**/*.lua',
	'server/*.lua'
}

client_scripts {
	'config.lua',
	'configs/**/*.lua',
	'client/*.lua'
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
