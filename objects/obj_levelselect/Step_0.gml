
if (obj_menuctrl.left) coor[0]-- if (coor[0] <= 0) coor[0] = 3;
if (obj_menuctrl.right) coor[0]++ if (coor[0] > 3) coor[0] = 1;
if (obj_menuctrl.up)  coor[1]-- if (coor[1] <= 0) coor[1] = 3;
if (obj_menuctrl.down) coor[1]++ if (coor[1] > 3) coor[1] = 1;
coor[1] = 1;

//Player presses next
if (obj_menuctrl.next) {
	
	//The player selected a difficulty
	if (menu_cursor != 4) {
		switch(level_selected){
			case 7: SlideTransition(trans_mode.goto, rm_jail_1,448,448) break;
			case 8: SlideTransition(trans_mode.goto, rm_mafi_1,384,512) break;
			case 9: SlideTransition(trans_mode.goto, rm_1950_1,448,448) break;
		}
	}
}


//Player presses back
if (obj_menuctrl.prev) {
	SlideTransition(trans_mode.goto,rm_Menu,0,0);
}