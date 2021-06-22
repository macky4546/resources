game {'gta5'}

fx_version 'cerulean'

--lua54 'yes'

ui_page 'html/ui.html'
files {
	'html/pricedown.ttf',
	'html/cursor.png',
	'html/background.png',
	'html/styles.css',
	'html/scripts.js',
	'html/debounce.min.js'
}

client_scripts {
	'client/main.lua',
}

server_script "server/main.lua"
