/// @description Progress the transition
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
				mode = trans_mode.intro;
				room_goto_next();
				obj_player.x = target_x;
				obj_player.y = target_y;
				obj_camera.x = target_x;
				obj_camera.y = target_y;
				break;
				
			case trans_mode.prev:
				mode = trans_mode.intro;
				room_goto_previous();
				obj_player.x = target_x;
				obj_player.y = target_y;
				obj_camera.x = target_x;
				obj_camera.y = target_y;
				break;
			
			case trans_mode.goto:
				mode = trans_mode.intro;
				room_goto(target);
				obj_player.x = target_x;
				obj_player.y = target_y;
				obj_camera.x = target_x;
				obj_camera.y = target_y;
				break;
			
			case trans_mode.restart:
				game_restart();
				break;
			case trans_mode.endgame:
				mode = trans_mode.intro;
				game_end();
				break;
		}
	}
}