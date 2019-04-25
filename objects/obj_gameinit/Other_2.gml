/// @desc
#region Load Achievements
if file_exists("savedgame.sav") && instance_exists(obj_player) LoadAchievements();
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
