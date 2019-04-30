/// @desc
if (menu_current == 1){
	if (obj_menuctrl.left) coor[0]-- if (coor[0] <= 0) coor[0] = 3;
	if (obj_menuctrl.right) coor[0]++ if (coor[0] > 3) coor[0] = 1;
	if (obj_menuctrl.up)  coor[1]-- if (coor[1] <= 0) coor[1] = 3;
	if (obj_menuctrl.down) coor[1]++ if (coor[1] > 3) coor[1] = 1;
} 
else if (menu_current == 2){
	if (obj_menuctrl.up) menu_cursor-- if (menu_cursor <= 0) menu_cursor = 4;
	if (obj_menuctrl.down) menu_cursor++ if (menu_cursor > 4) menu_cursor = 1;
}

//Player presses next
if (obj_menuctrl.next) {
	
	//If the player is on stage selection then move on to difficuty selection
	if (menu_current == 1){
		menu_current = 2;
		menu_cursor = 1;
		audio_play_sound(snd_menu_next,1,false);
	}
	//If the player is on difficulty selection then teleport them to the level
	else if (menu_current == 2){
		//The player selected a difficulty
		if (menu_cursor != 4) {
			global.difficulty = menu_cursor;
			//if (coor[0] == 1 && coor[1] == 1) 
			//if (coor[0] == 2 && coor[1] == 1) 
			//if (coor[0] == 3 && coor[1] == 1) 

			//if (coor[0] == 1 && coor[1] == 2) 
			//if (coor[0] == 2 && coor[1] == 2) 
			//if (coor[0] == 3 && coor[1] == 2) 

			//if (coor[0] == 1 && coor[1] == 3) SlideTransition(trans_mode.goto, rm_mafi_1,448,448);
			if (coor[0] == 2 && coor[1] == 3) SlideTransition(trans_mode.goto, rm_jail_1,448,448);
			//if (coor[0] == 3 && coor[1] == 3)
		}
		//The player selected cancel
		else menu_current = 1;
	}
}

//Player presses back
if (obj_menuctrl.prev) {
	if (menu_current == 1) SlideTransition(trans_mode.goto,rm_Menu,0,0);
	else if (menu_current == 2){ menu_current = 1; menu_cursor = 3;}
}