/// @description Progress the transition
display_set_gui_size(camera_get_view_width(cam),camera_get_view_height(cam));
w = display_get_gui_width();
h = display_get_gui_height();

if (mode != trans_mode.off){
	if (mode == trans_mode.intro){
		percent = max(0,percent - max ((percent/15)*(delta_time/10000),0.005));
	}
	else {
		percent = min(1, percent + max (((1 - percent)/15)*(delta_time/10000),0.005));
	}
	if (percent == 1) || (percent == 0){
		switch (mode) {
			case trans_mode.intro:
				mode = trans_mode.off
				break;

			case trans_mode.next:
				mode = trans_mode.intro
				room_goto_next()
				break;
			
			case trans_mode.goto:
				mode = trans_mode.intro
				room_goto(target)
				if (target == 0 && instance_exists(obj_player)) instance_destroy(obj_player);
				break;
			
			case trans_mode.restart:
				game_restart();
				break;
			case trans_mode.endgame:
				mode = trans_mode.intro
				game_end();
				break;
		}
	}
}