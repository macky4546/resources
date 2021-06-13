fx_version 'cerulean'
games { 'gta5' }

author 'Guardian'
description 'AnotherLife RP'
version '1.0.0'

loadscreen 'html/index.html'

files {
    'html/index.html',
	'html/assets/logo.png',
    'html/css/style.css',
	'html/js/main.js',
    'html/assets/bgvideo.mp4',
	--'html/assets/music.mp3'
}

loadscreen_manual_shutdown 'yes'

client_script 'client/client.lua'