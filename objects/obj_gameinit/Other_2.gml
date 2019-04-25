/// @desc
#region Load Achivments
if file_exists("savedgame.sav") && instance_exists(obj_player){
	var _wrapper = LoadJSONFromFile("savedgame.sav");
	var _list = _wrapper[? "ROOT"];
	var _map = _list[|0];
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
else {
	global.difficulty = 1;
	global.world_jail = 0;
	global.world_1950 = 0;
	global.world_musi = 0;
	global.world_cact = 0;
	global.world_casi = 0;
	global.world_notr = 0;
	global.world_spac = 0;
	global.world_mafi = 0;
	global.world_yurt = 0;
}
#endregion

#region Spawn game objects
instance_create_layer(0,0,"Overlay",obj_transition);
instance_create_layer(0,0,"Overlay",obj_hud);
instance_create_layer(0,0,"Overlay",obj_vignette);
instance_create_layer(0,0,"Overlay",obj_camera);
instance_create_layer(0,0,"Overlay",obj_lighting_init);
instance_create_layer(0,0,"Overlay",obj_musicplayer);

#endregion
