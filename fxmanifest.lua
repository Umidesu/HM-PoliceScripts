fx_version 'cerulean'
game 'gta5'

author 'Himeni'
version '1.0.0'
lua54 'yes'

dependencies {
    'es_extended'
}

client_scripts {
    'config.lua',
    'client/radar.lua',
    'client/notify.lua'
}

server_scripts {
    'config.lua',
    'server/main.lua'
}