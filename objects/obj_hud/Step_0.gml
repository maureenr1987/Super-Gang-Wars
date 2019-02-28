/// @desc set gui size/Quit/Restart/Debug
w = display_get_gui_width();
h = display_get_gui_height();

//Quit game
if keyboard_check_pressed(vk_escape) || gamepad_button_check_pressed(0, gp_select){
	SlideTransition(trans_mode.endgame);
}

//Reset game
if keyboard_check_pressed(ord("R")) || gamepad_button_check_pressed(0, gp_start){
	SlideTransition(trans_mode.goto, rm_Menu);
}

//Debugmode
if keyboard_check_pressed(vk_f1){// || gamepad_button_check_pressed(0, gp_start){
	if (global.debug) global.debug = false; else global.debug = true;
}

//fill inventory
if keyboard_check_pressed(vk_f2){
	for (var i = 0; i < array_length_1d(obj_player.inventory)-1; i++){
		obj_player.inventory_quantity[i] = 99;
	}
}

if keyboard_check(vk_f3){
	obj_player.xp += floor(obj_player.tonextlvl/20);
	RecalcStats(obj_player);
}