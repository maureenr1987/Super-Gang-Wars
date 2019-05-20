/// @desc

if instance_exists(obj_levelselect) || instance_exists(obj_menu) || instance_exists(obj_bettermenu) || instance_exists(obj_betterpause){
	
up = false;
down = false;
left = false;
right = false;

#region //Horizontal Directions
if (use_x_axis){
	var x_axis = sign(gamepad_axis_value(0,gp_axislh));
	var left_ = keyboard_check(ord("A")) || keyboard_check(vk_left) || gamepad_button_check(0,gp_padl) || (x_axis == -1);
	var right_ = keyboard_check(ord("D")) || keyboard_check(vk_right) || gamepad_button_check(0,gp_padr) || (x_axis == 1);
	if (x_axis_is_pressed && !x_axis_can_hold) { left = false; right = false; } else { left = left_; right = right_; pressed_timer = 200;}
	x_axis_is_pressed = (left_ || right_);
}
#endregion

#region //Vertical Directions
if (use_y_axis){
	var y_axis = sign(gamepad_axis_value(0,gp_axislv));
	var up_ = keyboard_check(ord("W")) || keyboard_check(vk_up) || gamepad_button_check(0,gp_padu) || (y_axis == -1);
	var down_ = keyboard_check(ord("S")) || keyboard_check(vk_down) || gamepad_button_check(0,gp_padd) || (y_axis == 1);
	if (y_axis_is_pressed && !y_axis_can_hold) { up = false; down = false; } else { up = up_; down = down_; pressed_timer = 200; }
	y_axis_is_pressed = (up_ || down_);
}
#endregion

#region //Next / Prev
//Next
next = (keyboard_check_pressed(vk_enter) || gamepad_button_check_pressed(0,gp_face1));

//Prev
prev = (keyboard_check_pressed(vk_backspace) || gamepad_button_check_pressed(0,gp_face2));
#endregion

///Button SFX
if (left || right || up || down) audio_play_sound(snd_menu_click,1,false);
if (next) audio_play_sound(snd_menu_next,1,false);
if (prev) audio_play_sound(snd_menu_prev,1,false);

}


if (!y_axis_is_pressed && !x_axis_is_pressed) pressed_timer = 0;
pressed_timer -= delta_time/1000;
if (pressed_timer <= 0) {
	y_axis_is_pressed = false;
	x_axis_is_pressed = false;
}