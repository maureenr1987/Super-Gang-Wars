/// @desc
instance_create_layer(0,0,"Overlay",obj_bettermenu);

//Delete old player object and make a new one
if instance_exists(obj_player) instance_destroy(obj_player);
instance_create_layer(0,0,"Player",obj_player);
obj_player.cancontrol = false;
	
//Load Achievements
if file_exists("savedgame.sav") { LoadGameInfo(); LoadPlayerInfo(); }
else SaveGame();

	
//Reset audio
audio_stop_all();