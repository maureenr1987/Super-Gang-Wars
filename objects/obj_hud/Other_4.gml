/// @desc
if (room == rm_Menu || room == rm_LevelSelect) {
	//Delete old player object and make a new one
	if instance_exists(obj_player) instance_destroy(obj_player);
	instance_create_layer(0,0,"Player",obj_player);
	obj_player.cancontrol = false;
	
	//Load Player Info
	LoadPlayerInfo();
	LoadAchievements();
	
	//Reset audio
	audio_stop_all();
	
}

//If in any other room save the players
else {
	obj_player.cancontrol = true;
	SaveGame()
}
ResetControls(self)

