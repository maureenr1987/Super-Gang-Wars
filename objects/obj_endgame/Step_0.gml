/// @desc
if !instance_exists(resource_){
	if (global.world_jail < global.difficulty) global.world_jail = global.difficulty;
	if (global.world_mafi < global.difficulty) global.world_mafi = global.difficulty;
	SaveGame();
	SlideTransition(trans_mode.goto,rm_Menu,0,0);
	Once = false;
}