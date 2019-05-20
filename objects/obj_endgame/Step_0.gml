/// @desc
if !instance_exists(resource_){
	
	//save diff
	
	SaveGame();
	SlideTransition(trans_mode.goto,rm_Menu,0,0);
	Once = false;
}