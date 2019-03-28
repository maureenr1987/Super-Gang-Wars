/// @desc SAVE GAME

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
ds_map_add(_map, "lvl", pl.lvl);
ds_map_add(_map, "xp", pl.xp);

ds_map_add(_map, "currenthp", pl.current_hp);

ds_map_add(_map, "hp", pl.hp);
ds_map_add(_map, "atk", pl.atk);
ds_map_add(_map, "def", pl.def);
ds_map_add(_map, "satk", pl.satk);
ds_map_add(_map, "sdef", pl.sdef);
ds_map_add(_map, "spd", pl.sdef);

ds_map_add(_map, "totalxp", pl.totalxp);
ds_map_add(_map, "tonextlvl", pl.tonextlvl);
ds_map_add(_map, "currentxp", pl.currentxp);
ds_map_add(_map, "neededxp", pl.neededxp);

ds_map_add(_map, "currentitem", pl.currentitem);


/*
ds_list_mark_as_list(pl.inventory,)
ds_list_mark_as_map()
*/

ds_map_add(_map, "inventory", pl.inventory);




ds_map_add(_map, "x", pl.x);
ds_map_add(_map, "y", pl.y);

ds_map_add(_map, "room", room);

//Wrap root list in a MAP!
var _wrapper = ds_map_create();
ds_map_add_list(_wrapper, "ROOT", _root_list)

var _string = json_encode(_wrapper);
SaveStringToFile("savedgame.sav", _string);

//NUKE the data
ds_map_destroy(_wrapper);

}