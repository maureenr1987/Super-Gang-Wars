/// @desc
//Outline
out = c_red;
inx = 0;

global.pause = true;

enum menu_page {
	main,
	settings,
	audio,
	difficulty,
	graphics,
	height
};

enum menu_element_type {
	script_runner,
	page_transfer,
	slider,
	shift,
	toggle,
	input
}

ds_menu_main = create_menu_page(
	["CONTINUE",		menu_element_type.script_runner,	continue_game],
	["SETTINGS",		menu_element_type.page_transfer,	menu_page.settings],
	["EXIT",			menu_element_type.script_runner,	end_game]
);

ds_menu_settings = create_menu_page(
	["AUDIO",			menu_element_type.page_transfer,	menu_page.audio],
	["DIFFICULTY",		menu_element_type.page_transfer,	menu_page.difficulty],
	["GRAPHICS",		menu_element_type.page_transfer,	menu_page.graphics],
	["BACK",			menu_element_type.page_transfer,	menu_page.main]
);

ds_menu_audio = create_menu_page(
	["MASTER",			menu_element_type.slider,			change_volume,			global.audio_vol_master,			[0,1]],
	["MUSIC",			menu_element_type.slider,			change_volume,			global.audio_vol_music,				[0,1]],
	["ITEM SFX",		menu_element_type.slider,			change_volume,			global.audio_vol_itemsfx,			[0,1]],
	["MENU SFX",		menu_element_type.slider,			change_volume,			global.audio_vol_menusfx,			[0,1]],
	["OTHER SFX",		menu_element_type.slider,			change_volume,			global.audio_vol_othersfx,			[0,1]],
	["BACK",			menu_element_type.page_transfer,	menu_page.settings]
);

ds_menu_difficulty = create_menu_page(
	["PRESETS",			menu_element_type.shift,			change_difficulty,		global.difficulty_preset,			["SWEET", "MILD", "SPICY", "HOT", "WILD", "CUSTOM"]],
	["RESPAWN",			menu_element_type.toggle,			change_difficulty,		!global.difficulty_respawn,			["ON", "OFF"]],
	["APPLES",			menu_element_type.shift,			change_difficulty,		global.difficulty_apples,			["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13","14", "15", "16", "17", "18", "19", "20"]],
	["ENEMY",			menu_element_type.shift,			change_difficulty,		global.difficulty_enemy_strength,	["WEAK", "NORMAL", "STRONG", "TERRIBLE"]],
	["ENEMY PLACEMENT", menu_element_type.shift,			change_difficulty,		global.difficulty_enemy_placement,	["UNIFORM",	"RANDOM"]],
	["BACK",			menu_element_type.page_transfer,	menu_page.settings]
);

ds_menu_graphics = create_menu_page(
	["WINDOW MODE",		menu_element_type.toggle,			change_window_mode,		!global.fullscreen,					[0,1]],
	["AMBIENT DARKNESS",menu_element_type.slider,			change_ambient_shadow,	global.ambientShadowIntensity,		[0,2]],
	["GUI SIZE",		menu_element_type.shift,			change_gui_size,		global.gui_size,					["NORMAL", "SMALL", "VERY SMALL"]],
	["BACK",			menu_element_type.page_transfer,	menu_page.settings]
);

page = 0;
menu_pages = [ds_menu_main, ds_menu_settings, ds_menu_audio, ds_menu_difficulty, ds_menu_graphics];
var i = 0;
var array_len = array_length_1d(menu_pages);
repeat(array_len){
	menu_option[i] = 0;
	i++;
}

inputting = false;