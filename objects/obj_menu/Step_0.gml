display_set_gui_size(camera_get_view_width(cam),camera_get_view_height(cam));
w = display_get_gui_width();
h = display_get_gui_height();


menu_x = w - (w*.05) + yeet;
menu_y = h - (h*.05);

yeet += (menu_x_target - menu_x) / menu_speed * (delta_time/10000);

if (menu_control){
	if keyboard_check_pressed(ord("W")) || gamepad_button_check_pressed(0, gp_padu){
		menu_cursor++; if (menu_cursor >= menu_items) menu_cursor = 0;
	}
	if keyboard_check_pressed(ord("S")) || gamepad_button_check_pressed(0, gp_padd){
		menu_cursor--; if (menu_cursor < 0) menu_cursor = menu_items - 1;
	}
	if keyboard_check_pressed(vk_enter) || gamepad_button_check_pressed(0, gp_face1){
		menu_x_target = w + 200;
		menu_committed = menu_cursor;
		ScreenShake(4,30)
		menu_control = false
	}
}

if (menu_x > w + 150 && menu_committed != -1){
	switch (menu_committed){
		case 2: default: SlideTransition(trans_mode.goto, rm_bigroom); break;
		case 0: game_end(); break;
	}
}