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
ds_map_add(_map, "difficulty", global.difficulty);
ds_map_add(_map, "x", pl.x)
ds_map_add(_map, "y", pl.y)
ds_map_add(_map, "room", room);

//Save level completion
ds_map_add(_map, "world_jail", global.world_jail);
ds_map_add(_map, "world_1950", global.world_1950);
ds_map_add(_map, "world_musi", global.world_musi);
ds_map_add(_map, "world_cact", global.world_cact);
ds_map_add(_map, "world_casi", global.world_casi);
ds_map_add(_map, "world_notr", global.world_notr);
ds_map_add(_map, "world_spac", global.world_spac);
ds_map_add(_map, "world_mafi", global.world_mafi);
ds_map_add(_map, "world_yurt", global.world_yurt);

//Wrap root list in a MAP!
var _wrapper = ds_map_create();
ds_map_add_list(_wrapper, "ROOT", _root_list)

var _string = json_encode(_wrapper);
SaveStringToFile("savedgame.sav", _string);

//NUKE the data
ds_map_destroy(_wrapper);

}