//Set the continue text
if (global.world_jail != 0) menu_items = ["Continue","Quit"]; else menu_items = ["New Game","Quit"];

//Control Menu
if (obj_menuctrl.up){
	menu_cursor++; if (menu_cursor >= array_length_1d(menu_items)) menu_cursor = 0;
}
if (obj_menuctrl.down){
	menu_cursor--; if (menu_cursor < 0) menu_cursor = array_length_1d(menu_items) - 1;
}

//Do the thing
if (obj_menuctrl.next){
	//Decide which room to go to
	switch (menu_items[menu_cursor]){
		case "New Game": SlideTransition(trans_mode.goto, rm_jail_1,448,448); break;
		case "Continue": SlideTransition(trans_mode.goto, rm_LevelSelect,0,0); break;
		case "Quit": SlideTransition(trans_mode.endgame); break;
	}
	ScreenShake(4,30)
	menu_control = false;
}