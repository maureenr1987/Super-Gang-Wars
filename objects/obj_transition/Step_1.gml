/// @desc Quit/Restart

//Quit game
if keyboard_check(vk_escape) || gamepad_button_check_pressed(0, gp_select){
	SlideTransition(trans_mode.endgame);
}

//Reset game
if keyboard_check(ord("R")) || gamepad_button_check_pressed(0, gp_start){
	SlideTransition(trans_mode.goto, rm_Menu);
}