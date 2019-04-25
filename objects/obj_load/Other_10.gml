/// @desc Load Achievements

if file_exists("savedgame.sav") && instance_exists(obj_player){
	
	var _wrapper = LoadJSONFromFile("savedgame.sav");
	var _list = _wrapper[? "ROOT"];
	var _map = _list[|0];

	
	global.difficulty = _map[?"difficulty"];
	
	//Level completion
	global.world_jail = _map[?"world_jail"];
	global.world_1950 = _map[?"world_1950"];
	global.world_musi = _map[?"world_musi"];
	global.world_cact = _map[?"world_cact"];
	global.world_casi = _map[?"world_casi"];
	global.world_notr = _map[?"world_notr"];
	global.world_spac = _map[?"world_spac"];
	global.world_mafi = _map[?"world_mafi"];
	global.world_yurt = _map[?"world_yurt"];
}
