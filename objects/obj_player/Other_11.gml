/// @desc (input)
////Input
if (cancontrol) {
	//Get player keyboard input
	if !gamepad_is_connected(0) {
		if keyboard_check(ord("A")) key_left = 1; else key_left = 0;
		if keyboard_check(ord("D")) key_right = 1; else key_right = 0;
		if keyboard_check(ord("W")) key_up = 1; else key_up = 0;
		if keyboard_check(ord("S")) key_down = 1; else key_down = 0;
		x_axis = key_right - key_left;
		y_axis = key_down - key_up;
		
		key_jump = keyboard_check(vk_space);
		if (use2_pressed) key_use2 = mouse_check_button_pressed(mb_right); else key_use2 = mouse_check_button(mb_right);
		if (use1_pressed) key_use1 = mouse_check_button_pressed(mb_left); else  key_use1 = mouse_check_button(mb_left);
		key_interact = keyboard_check_pressed(ord("E"));
		
		key_switchnext = mouse_wheel_down() || keyboard_check_pressed(vk_tab);
		key_switchprev = mouse_wheel_up();
	}
	
	//Get player controller input
	else {
		x_axis = gamepad_axis_value(0, gp_axislh);
		y_axis = gamepad_axis_value(0, gp_axislv);
		
		key_jump = gamepad_button_check(0, gp_face1);
		if (use2_pressed) key_use2 = gamepad_button_check_pressed(0, gp_shoulderlb); else key_use2 = gamepad_button_check(0, gp_shoulderlb);
		if (use1_pressed) key_use1 = gamepad_button_check_pressed(0, gp_shoulderrb); else key_use1 = gamepad_button_check(0, gp_shoulderrb);
		key_interact = gamepad_button_check_pressed(0, gp_face2);
		
		key_switchnext = gamepad_button_check_pressed(0, gp_padl) || gamepad_button_check_pressed(0, gp_shoulderr);
		key_switchprev = gamepad_button_check_pressed(0, gp_padr) || gamepad_button_check_pressed(0, gp_shoulderl);
	}
}
