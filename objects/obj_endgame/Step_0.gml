/// @desc

if (obj_dragon_montoya.current_hp <= 0 && Once) {
	if (global.world_jail < global.difficulty) global.world_jail = global.difficulty;
	SaveGame();
	SlideTransition(trans_mode.goto,rm_Menu,0,0);
	Once = false;
}