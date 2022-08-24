fx_version 'cerulean'
game 'gta5'

author 'Himeni'
version '1.0.0'
lua54 'yes'

dependencies {
    'es_extended',
    'esx_menu_default'
}

client_scripts {
    '@es_extended/locale.lua',
    'config.lua',
    'client/main.lua'
}

server_scripts {
    '@es_extended/locale.lua',
    'config.lua',
    'server/main.lua'
}