/// @desc

if instance_exists(obj_levelselect) || instance_exists(obj_menu){

up = false;
down = false;
left = false;
right = false;

#region //Horizontal Directions
if (use_x_axis){
	var x_axis = sign(gamepad_axis_value(0,gp_axislh));
	if (x_axis != 0) && (!axis_x_pressed){
		if (x_axis == -1) left = true;
		if (x_axis == 1) right = true;
		axis_x_pressed = true;
	} 
	else if (x_axis == 0) {
		left = keyboard_check_pressed(ord("A")) || keyboard_check_pressed(vk_left) || gamepad_button_check_pressed(0,gp_padl);
		right = keyboard_check_pressed(ord("D")) || keyboard_check_pressed(vk_right) || gamepad_button_check_pressed(0,gp_padr);
		axis_x_pressed = false;
	}
}
#endregion

#region //Vertical Directions
if (use_y_axis){
	var y_axis = sign(gamepad_axis_value(0,gp_axislv));
	if (y_axis != 0) && (!axis_y_pressed){
		if (y_axis <= -1) up = true;
		if (y_axis >= 1) down = true;
		axis_y_pressed = true;
	} 
	else if (abs(y_axis) != 1){
		up = keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up) || gamepad_button_check_pressed(0,gp_padu);
		down =  keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down) || gamepad_button_check_pressed(0,gp_padd);
		axis_y_pressed = false;
	}
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