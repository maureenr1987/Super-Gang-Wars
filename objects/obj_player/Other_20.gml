/// @desc (dead)
//Spawn experience
var objxp = instance_create_layer(x, y, "Player", obj_xp);
objxp.xp = lvl * 5;
		
if (global.difficulty_respawn) LoadRevivePlayer()
	
else {
	SlideTransition(trans_mode.restart);
}