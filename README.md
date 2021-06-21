# Only change the IP if you're using a server with multiple network interfaces, otherwise change the port only.
endpoint_add_tcp "0.0.0.0:30120"
endpoint_add_udp "0.0.0.0:30120"

set mysql_connection_string "mysql://root:@127.0.0.1/anotherlife2.0?debug=true&charset=utf8mb4"

set sv_enforceGameBuild 2189

ensure pma_voice
setr voice_useNativeAudio 1
setr voice_useSendingRangeOnly 1
setr voice_zoneRadius 16
setr voice_enableProximityCycle 1
setr voice_enableRadios 1
setr voice_enablePhones 1
setr voice_enableRadioSubmix 1
setr voice_defaultCycle "N"
setr voice_defaultVolume "0.5"


# These resources will start by default.
ensure mapmanager
ensure chat
ensure spawnmanager
ensure sessionmanager
ensure basic-gamemode
start hardcap
ensure rconlog


# Other Core Resources
start LegacyFuel
start srp-ipl
start warmenu
start ghmattimysql

# Qbus Core Resources
start qb-logs
start society
start qb-multicharacter
start qb-spawn
start qb-inventory
start cosmo_hud
start qb-weapons
start qb-garages
start qb-policejob
start PolyZone
# # Qbus resources


start qb-doorlock
start qb-api
start qb-givevehicle
start qb-smallresources
start qb-weathersync
start qb-interior
start taxi_app
start qb-houses
start qb-vehicleshop
start qb-radialmenu
start qb-phone
start qb-vehiclekeys
start qb-truckrobbery
start qb-apartments
start qb-storerobbery
start nui_doorlock
start qb-weed
start qb-shops
start qb-tattooshop
start qb-lockpick
start qb-houserobbery
start qb-lapraces
start qb-carwash
start qb-occasions
start qb-drugs
start qb-jewellery
start qb-bankrobbery
start qb-fitbit
start qb-commandbinding
# qb-radio
# burgers
start farming
start mining
start qbus-chickenjob
start qb-vehiclerental
start qb-companies
start qb-vehicletuning
start qb-justice
start rp-radio
# hospital
start qb-ambulancejob
start mechanicjob
start qb-casino
start qb-blackjack
start qb-drugs
start qb-hotdogjob
start qb-mailjob
start qb-luckywheel
start nh-context
start pokeBox
start qb-cards
start qb-cardshop

start qb-trucker
start qb-tow
start qb-crafting
start qb-taxi
start qb-news
start qb-clothing
start qb-scrapyard
start qb-recycle
start qb-cityhall
start qb-pawnshop
start qb-admin
start qb-scoreboard
start qb-diving
start qb-instances
start tacos
start interact-sound
start fishing


# Other resources

start addonweapons
start vehiclehandling
start vehiclefailure


start qb-loading
start koil-debug
start interact-sound
start diceroll
start notes
start 3dme
start linden_outlawalert
start progressbar
start mdt
start pdblips
start safecracker
start 3dme
start animations
start policeradar
start prison
start hackgame
start banking
start notes
start lscustoms
start noshuff
start bt-target

start cartracker
start m4
start g17
start x26
start pdmegapack
start sheriffcar
start ambulance
start sheriffmav
start assets_clothes

#Interiors
start gabz_mrpd
start gabz_vu_extra_world
start gabz_haters
start gabz_harmony
start gabz_pillbox
start pablito_taco
start prison-map-addon
start prisonfence
start prison2
start xnArena
start paletopd
start ult-rehab
start nw_comedyClub
start nw_bahamaMama
start weazelnews
start sc1_sherdept
start vespuccipd
start mosleynutt
start roc_arena
start start tunershop
start j17_courthouse
start burgershot
start DLCiplLoader

# This allows players to use scripthook-based plugins such as the legacy Lambda Menu.
# Set this to 1 to allow scripthook. Do note that this does _not_ guarantee players won't be able to use external plugins.
sv_scriptHookAllowed 0

# Uncomment this and set a password to enable RCON. Make sure to change the password - it should look like rcon_password "YOURPASSWORD"
rcon_password "anakin12"

# A comma-separated list of tags for your server.
# For example:
# - sets tags "drifting, cars, racing"
# Or:
# - sets tags "roleplay, military, tanks"
sets tags "roleplay"

# A valid locale identifier for your server's primary language.
# For example "en-US", "fr-CA", "nl-NL", "de-DE", "en-GB", "pt-BR"
sets locale "en-US" 
# please DO replace root-AQ on the line ABOVE with a real language! :)

# Set an optional server info and connecting banner image url.
# Size doesn't matter, any banner sized image will be fine.
#sets banner_detail "https://url.to/image.png"
#sets banner_connecting "https://url.to/image.png"

# Set your server's hostname
sv_hostname "AnotherLife 2.0"

# Set your server's Project Name
sets sv_projectName "AnotherLife 2.0"

# Set your server's Project Description
sets sv_projectDesc "AnotherLife 2.0"

# Nested configs!
#exec server_internal.cfg

# Loading a server icon (96x96 PNG file)
#load_server_icon myLogo.png

# convars which can be used in scripts
set temp_convar "hey world!"

# Remove the `#` from the below line if you do not want your server to be listed in the server browser.
# Do not edit it if you *do* want your server listed.
#sv_master1 ""

# Add system admins
add_ace group.admin command allow # allow all commands
add_ace group.admin command.quit deny # but don't allow quit
add_principal identifier.steam:110000101304757 group.admin # add the admin to the group

# enable OneSync (required for server-side state awareness)
set onesync on

# Server player slot limit (see https://fivem.net/server-hosting for limits)
sv_maxclients 64

# Steam Web API key, if you want to use Steam authentication (https://steamcommunity.com/dev/apikey)
# -> replace "" with the key
set steam_webApiKey "9511940A7E8DE749922BD84F75788AFF"

# License key for your server (https://keymaster.fivem.net)
sv_licenseKey 6tcny57f35r28x59l9i6b36c5ukef6dz