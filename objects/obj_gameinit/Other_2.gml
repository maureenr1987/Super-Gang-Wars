/// @desc
#region Global vars
global.debug = 0;
global.inv = [
	//"obj_baseitem",
	"obj_item_startgun",
	"obj_item_warden_baton",
	"obj_item_medium_warden_gun",
	"obj_item_higher_warden_gun",
	"obj_item_draco_buster",
	
	"obj_item_grenade",
	"obj_item_molotov_cocktail",
	"obj_item_nail_bat",
	"obj_item_tommy_gun"
];

//Audio Volumes
global.audio_vol_master = 1;
global.audio_vol_music = 0.5;
global.audio_vol_itemsfx = 0.7;
global.audio_vol_menusfx = 1;
global.audio_vol_othersfx = 0.7;

//Difficulty
global.difficulty_preset = 0;
global.difficulty_respawn = true;
global.difficulty_apples = 20;
global.difficulty_enemy_strength = 0;
global.difficulty_enemy_placement = 0;

//Graphics
global.guisize_h = 360;
global.guisize_w = 640;
global.gui_size = 0;
global.fullscreen = true;

//Game Completion
global.levelcompletion_jail = 0;
global.levelcompletion_mafi = 0;

audio_group_load(audiogroup_music);
audio_group_load(audiogroup_items);
audio_group_load(audiogroup_gui);
audio_group_load(audiogroup_footstep);
#endregion

#region Spawn game objects
instance_create_layer(0,0,"Transition",obj_transition);
instance_create_layer(0,0,"Overlay",obj_hud);
instance_create_layer(0,0,"Overlay",obj_vignette);
instance_create_layer(0,0,"Overlay",obj_camera);
instance_create_layer(0,0,"Overlay",obj_lighting_init);
instance_create_layer(0,0,"Overlay",obj_musicplayer);
instance_create_layer(0,0,"Overlay",obj_menuctrl);

#endregion

window_set_cursor(cr_none);
window_set_fullscreen(global.fullscreen);

