/// @desc (input)
////Input
if (cancontrol) {
	//Get player keyboard input
	if !gamepad_is_connected(0) {
		key_left = keyboard_check(ord("A"))
		key_right = keyboard_check(ord("D"))
		key_up = keyboard_check(ord("W"))
		key_down =  keyboard_check(ord("S"))
		
		x_axis = key_right - key_left;
		y_axis = key_down - key_up;
		
		key_jump = keyboard_check(vk_space);
		if (use1_pressed) key_use1 = mouse_check_button_pressed(mb_left); else  key_use1 = mouse_check_button(mb_left);
		if (use2_pressed) key_use2 = mouse_check_button_pressed(mb_right); else key_use2 = mouse_check_button(mb_right);
		key_interact = keyboard_check_pressed(ord("E"));
		
		key_switchnext = mouse_wheel_down() || keyboard_check_pressed(vk_tab);
		key_switchprev = mouse_wheel_up();
	}
	
	//Get player controller input
	else {
		x_axis = gamepad_axis_value(0, gp_axislh);
		y_axis = gamepad_axis_value(0, gp_axislv);
		
		if (x_axis == 0 && y_axis == 0) {
			key_left = gamepad_button_check(0,gp_padl)
			key_right = gamepad_button_check(0,gp_padr)
			key_up = gamepad_button_check(0,gp_padu)
			key_down = gamepad_button_check(0,gp_padd)
			
			x_axis = key_right - key_left;
			y_axis = key_down - key_up;
		}
		
		key_jump = gamepad_button_check(0, gp_face1);
		if (use1_pressed) key_use1 = gamepad_button_check_pressed(0, gp_shoulderrb); else key_use1 = gamepad_button_check(0, gp_shoulderrb);
		if (use2_pressed) key_use2 = gamepad_button_check_pressed(0, gp_shoulderlb); else key_use2 = gamepad_button_check(0, gp_shoulderlb);
		key_interact = gamepad_button_check_pressed(0, gp_face2);
		
		key_switchnext = gamepad_button_check_pressed(0, gp_shoulderr);
		key_switchprev = gamepad_button_check_pressed(0, gp_shoulderl);
	}
}


