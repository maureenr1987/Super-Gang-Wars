/// @desc (dead)
//Spawn experience
var objxp = instance_create_layer(x, y, "Player", obj_xp);
objxp.xp = lvl * 5;
		
if (global.difficulty == 1) {
	instance_create_layer(0,0,"Overlay",obj_load)
}
else {
	SlideTransition(trans_mode.restart);
}