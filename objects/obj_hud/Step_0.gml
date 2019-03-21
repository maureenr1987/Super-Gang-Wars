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

//Fill inventory
if keyboard_check_pressed(vk_f2){
	for (var i = 1; i <= array_length_1d(global.inv)-1; i++){
		AddToInventory(global.inv[i],1,obj_player)
	}
}

//Fullscreen
if (keyboard_check_pressed(vk_f11)){
	if (window_get_fullscreen()) window_set_fullscreen(false); else window_set_fullscreen(true);
}

//Add exp
if keyboard_check(vk_f3){
	obj_player.xp += floor(obj_player.tonextlvl/20);
	RecalcStats(obj_player);
}

//Save Game
if keyboard_check(vk_control) && keyboard_check_pressed(ord("S")){
	//Overwrite old save
	if (file_exists(SAVEFILE)) file_delete(SAVEFILE);
	
	//Create new file
	var file;
	file = file_text_open_write(SAVEFILE);
	file_text_write_real(file,room);
}