/// @desc
var left = keyboard_check_pressed(ord("A")) || gamepad_button_check_pressed(0,gp_padl);
var right = keyboard_check_pressed(ord("D")) || gamepad_button_check_pressed(0,gp_padr);
var up = keyboard_check_pressed(ord("W")) || gamepad_button_check_pressed(0,gp_padu);
var down =  keyboard_check_pressed(ord("S")) || gamepad_button_check_pressed(0,gp_padd);

if (menu_current == 1){
	if (left) coor[0]-- if (coor[0] <= 0) coor[0] = 3;
	if (right) coor[0]++ if (coor[0] > 3) coor[0] = 1;
	if (up)  coor[1]-- if (coor[1] <= 0) coor[1] = 3;
	if (down) coor[1]++ if (coor[1] > 3) coor[1] = 1;
} 
else if (menu_current == 2){
	if (up) menu_cursor-- if (menu_cursor <= 0) menu_cursor = 4;
	if (down) menu_cursor++ if (menu_cursor > 4) menu_cursor = 1;
}

if keyboard_check_pressed(vk_enter) || gamepad_button_check_pressed(0,gp_face1) {
	if (menu_current == 1){
		menu_current = 2;
		menu_cursor = 1;
	}
	else if (menu_current == 2){
		if (menu_cursor == 4) menu_current = 1;
		else {
			global.difficulty = menu_cursor;
			
			/*if (coor[0] == 1 && coor[1] == 1) 
			if (coor[0] == 2 && coor[1] == 1) 
			if (coor[0] == 3 && coor[1] == 1) 

			if (coor[0] == 1 && coor[1] == 2) 
			if (coor[0] == 2 && coor[1] == 2) 
			if (coor[0] == 3 && coor[1] == 2) 

			if (coor[0] == 1 && coor[1] == 3) */
			if (coor[0] == 2 && coor[1] == 3) SlideTransition(trans_mode.goto, rm_jail_1,448,448);
			//if (coor[0] == 3 && coor[1] == 3)
				
		}
	}
}

