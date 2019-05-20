/// @desc SAVE GAME

if instance_exists(obj_load) instance_destroy();

instance_exists(obj_player){
	
var pl = obj_player;

//initialize save game.
var _root_list = ds_list_create();

var _map = ds_map_create();

ds_list_add(_root_list, _map)
ds_list_mark_as_map(_root_list,0)

//obj is supposed to be obj_player.
ds_map_add (_map, "obj", object_get_name(pl.object_index));

//Identification
ds_map_add(_map, "firstname", pl.firstname);
ds_map_add(_map, "middlename", pl.middlename);
ds_map_add(_map, "lastname", pl.lastname);
ds_map_add(_map, "gender", pl.gender);

//Stats
ds_map_add(_map, "xp", pl.xp);

//Saveroom
ds_map_add(_map, "x", pl.x)
ds_map_add(_map, "y", pl.y)
ds_map_add(_map, "room", room);

//Audio Volumes
ds_map_add(_map, "audio_vol_master", global.audio_vol_master);
ds_map_add(_map, "audio_vol_music", global.audio_vol_music);
ds_map_add(_map, "audio_vol_itemsfx", global.audio_vol_itemsfx);
ds_map_add(_map, "audio_vol_menusfx", global.audio_vol_menusfx);
ds_map_add(_map, "audio_vol_othersfx", global.audio_vol_othersfx);

//Difficulty
ds_map_add(_map, "difficulty_preset", global.difficulty_preset);
ds_map_add(_map, "difficulty_respawn", global.difficulty_respawn);
ds_map_add(_map, "difficulty_apples", global.difficulty_apples);
ds_map_add(_map, "difficulty_enemy_strength", global.difficulty_enemy_strength);
ds_map_add(_map, "difficulty_enemy_placement", global.difficulty_enemy_placement);

//Graphics
ds_map_add(_map, "guisize_h", global.guisize_h);
ds_map_add(_map, "guisize_w", global.guisize_w);
ds_map_add(_map, "gui_size", global.gui_size);
ds_map_add(_map, "fullscreen", global.fullscreen);

//Game Completion
ds_map_add(_map, "levelcompletion_jail", global.levelcompletion_jail);
ds_map_add(_map, "levelcompletion_mafi", global.levelcompletion_mafi);

//Wrap root list in a MAP!
var _wrapper = ds_map_create();
ds_map_add_list(_wrapper, "ROOT", _root_list)

var _string = json_encode(_wrapper);
SaveStringToFile("savedgame.sav", _string);

//NUKE the data
ds_map_destroy(_wrapper);

}