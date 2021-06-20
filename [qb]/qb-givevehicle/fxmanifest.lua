fx_version 'cerulean'
game 'gta5'

description 'QB-GiveVehicle'
version '1.0.0'

server_scripts {
	'server/main.lua',
	'config.lua',
	'locales/de.lua',
	'locales/tw.lua',
	'locales/en.lua'
}

client_scripts {
	'client/main.lua',
	'config.lua',
	'locales/de.lua',
	'locales/tw.lua',
	'locales/en.lua'
}

dependency {
	'qb-vehicleshop'
}