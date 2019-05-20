/// @desc Load Game Info
if file_exists("savedgame.sav") && instance_exists(obj_player){
	
	var _wrapper = LoadJSONFromFile("savedgame.sav");
	var _list = _wrapper[? "ROOT"];
	var _map = _list[|0];

	//Audio Volumes
	global.audio_vol_master = _map[?"audio_vol_master"];
	global.audio_vol_music = _map[?"audio_vol_music"];
	global.audio_vol_itemsfx = _map[?"audio_vol_itemsfx"];
	global.audio_vol_menusfx = _map[?"audio_vol_menusfx"];
	global.audio_vol_othersfx = _map[?"audio_vol_othersfx"];
	
	audio_group_set_gain(audiogroup_music,		global.audio_vol_music * global.audio_vol_master,		0);
	audio_group_set_gain(audiogroup_items,		global.audio_vol_itemsfx * global.audio_vol_master,		0);
	audio_group_set_gain(audiogroup_gui,		global.audio_vol_menusfx * global.audio_vol_master,		0);
	audio_group_set_gain(audiogroup_default,	global.audio_vol_othersfx * global.audio_vol_master,	0);

	//Difficulty
	global.difficulty_preset = _map[?"difficulty_preset"];
	global.difficulty_respawn = _map[?"difficulty_respawn"];
	global.difficulty_apples = _map[?"difficulty_apples"];
	global.difficulty_enemy_strength = _map[?"difficulty_enemy_strength"];
	global.difficulty_enemy_placement = _map[?"difficulty_enemy_placement"];

	//Graphics
	global.guisize_h = _map[?"guisize_h"];
	global.guisize_w = _map[?"guisize_w"];
	global.gui_size = _map[?"gui_size"];
	global.fullscreen = _map[?"fullscreen"];

	//Game Completion
	global.levelcompletion_jail = _map[?"levelcompletion_jail"];
	global.levelcompletion_mafi = _map[?"levelcompletion_mafi"];
}
