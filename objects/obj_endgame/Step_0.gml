/// @desc

if (obj_dragon_montoya.current_hp <= 0 && Once) {
	if (global.world_jail < global.difficulty) global.world_jail = global.difficulty;
	instance_create_layer(0,0,"Overlay",obj_save);
	SlideTransition(trans_mode.goto,rm_Menu,2000,2000);
	Once = false;
}