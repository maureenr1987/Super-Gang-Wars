/// @desc functions keys


//Subtract delay
HideHUDTimer -= delta_time/1000;

//Quit game
if keyboard_check_pressed(vk_escape) || gamepad_button_check_pressed(0, gp_select){
	SlideTransition(trans_mode.endgame);
}

//Reset game
if keyboard_check_pressed(ord("R")) || gamepad_button_check_pressed(0, gp_start){
	if keyboard_check(vk_alt) SlideTransition(trans_mode.restart)
	else LoadRevivePlayer();
}

//Debugmode
if keyboard_check_pressed(vk_f1){
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
	if keyboard_check(vk_alt) obj_player.xp -= floor(obj_player.tonextlvl/20);
	else obj_player.xp += floor(obj_player.tonextlvl/20);
	RecalcStats(obj_player);
}

