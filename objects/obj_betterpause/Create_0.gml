/// @desc
//Outline
out = c_red;
inx = 0;

global.pause = true;

enum pausemenu_page {
	main,
	settings,
	audio,
	graphics,
	height
};

ds_menu_main = create_menu_page(
	["RESUME",			menu_element_type.script_runner,	resume_game],
	["SETTINGS",		menu_element_type.page_transfer,	pausemenu_page.settings],
	["EXIT LEVEL",		menu_element_type.script_runner,	exit_to_menu]
);

ds_menu_settings = create_menu_page(
	["AUDIO",			menu_element_type.page_transfer,	pausemenu_page.audio],
	["GRAPHICS",		menu_element_type.page_transfer,	pausemenu_page.graphics],
	["BACK",			menu_element_type.page_transfer,	pausemenu_page.main]
);

ds_menu_audio = create_menu_page(
	["MASTER",			menu_element_type.slider,			change_volume,			global.audio_vol_master,			[0,1]],
	["MUSIC",			menu_element_type.slider,			change_volume,			global.audio_vol_music,				[0,1]],
	["ITEM SFX",		menu_element_type.slider,			change_volume,			global.audio_vol_itemsfx,			[0,1]],
	["MENU SFX",		menu_element_type.slider,			change_volume,			global.audio_vol_menusfx,			[0,1]],
	["OTHER SFX",		menu_element_type.slider,			change_volume,			global.audio_vol_othersfx,			[0,1]],
	["BACK",			menu_element_type.page_transfer,	pausemenu_page.settings]
);

ds_menu_graphics = create_menu_page(
	["WINDOW MODE",		menu_element_type.toggle,			change_window_mode,		!global.fullscreen,					[0,1]],
	["AMBIENT DARKNESS",menu_element_type.slider,			change_ambient_shadow,	global.ambientShadowIntensity,		[0,2]],
	["GUI SIZE",		menu_element_type.shift,			change_gui_size,		global.gui_size,					["NORMAL", "SMALL", "VERY SMALL"]],
	["BACK",			menu_element_type.page_transfer,	pausemenu_page.settings]
);

page = 0;
menu_pages = [ds_menu_main, ds_menu_settings, ds_menu_audio, ds_menu_graphics];
var i = 0;
var array_len = array_length_1d(menu_pages);
repeat(array_len){
	menu_option[i] = 0;
	i++;
}

inputting = false;