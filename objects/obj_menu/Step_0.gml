w = display_get_gui_width();
h = display_get_gui_height();

if (global.world_jail != 0) menu = ["Quit","Continue"]; else menu = ["Quit","New Game"];

menu_x = w - (w*.05) + yeet;
menu_y = h - (h*.05);

yeet += (menu_x_target - menu_x) / menu_speed * (delta_time/10000);

if (menu_control){
	if keyboard_check_pressed(ord("W")) || gamepad_button_check_pressed(0, gp_padu){
		menu_cursor++; if (menu_cursor >= menu_items) menu_cursor = 0;
		audio_play_sound(snd_button_press,1,false) 
	}
	if keyboard_check_pressed(ord("S")) || gamepad_button_check_pressed(0, gp_padd){
		menu_cursor--; if (menu_cursor < 0) menu_cursor = menu_items - 1;
		audio_play_sound(snd_button_press,1,false) 
	}
	if keyboard_check_pressed(vk_enter) || gamepad_button_check_pressed(0, gp_face1){
		menu_x_target = w + 200;
		menu_committed = menu_cursor;
		ScreenShake(4,30)
		menu_control = false
		audio_play_sound(snd_activatemine,1,false)
	}
}

if (menu_x > w + 150 && menu_committed != -1){
	switch (menu[menu_committed]){
		case "New Game": SlideTransition(trans_mode.goto, rm_jail_1,448,448); break;
		case "Continue": SlideTransition(trans_mode.goto, rm_LevelSelect,0,0); break;
		case "Quit": game_end(); break;
	}
}
