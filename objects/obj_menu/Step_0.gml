w = display_get_gui_width();
h = display_get_gui_height();

if (global.world_jail != 0) menu = ["Quit","Continue"]; else menu = ["Quit","New Game"];

menu_x = w - (w*.05) + yeet;
menu_y = h - (h*.05);

yeet += (menu_x_target - menu_x) / menu_speed * (delta_time/10000);

if (menu_control) && (first){
	if (obj_menuctrl.up){
		menu_cursor++; if (menu_cursor >= menu_items) menu_cursor = 0;
	}
	if (obj_menuctrl.down){
		menu_cursor--; if (menu_cursor < 0) menu_cursor = menu_items - 1;
	}
	if (obj_menuctrl.next){
		menu_x_target = w + 200;
		menu_committed = menu_cursor;
		ScreenShake(4,30)
		menu_control = false
	}
}

if (menu_x > w + 150 && menu_committed != -1){
	switch (menu[menu_committed]){
		case "New Game": SlideTransition(trans_mode.goto, rm_jail_1,448,448); break;
		case "Continue": SlideTransition(trans_mode.goto, rm_LevelSelect,0,0); break;
		case "Quit": game_end(); break;
	}
}

first = true;