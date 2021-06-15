fx_version "adamant"
game "gta5"

name "rp-radio"
description "An in-game radio which makes use of the pma_voice radio API for FiveM"
author "Frazzle (frazzle9999@gmail.com)"
version "2.2.1"

ui_page "index.html"

dependencies {
	"pma_voice",
}

files {
	"index.html",
	"on.ogg",
	"off.ogg",
}

client_scripts {
	"config.lua",
	"client.lua",
}

server_scripts {
	"server.lua",
}