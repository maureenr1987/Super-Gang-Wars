/// @desc Progress text
global.showID = false;
letters += random_range(0, spd) * delta_time/10000;
text_current = string_copy(text, 1, floor(letters));
if (text != text_current && string_length(text_current) %20 <= 10) text_current += "_"; 
else if (text != text_current) text_current += " ";

draw_set_font(font_sign);

if (h == 0) h = string_height(text)

w = string_width(text_current)

//Destroy when done
if (letters >= length) { 
	if keyboard_check_pressed(vk_anykey) event_user(0);
	else if (gamepad_axis_value(0, gp_axislh) > 0.1 || gamepad_axis_value(0, gp_axislh) < -0.1) event_user(0);
	else if (gamepad_axis_value(0, gp_axislv) > 0.1 || gamepad_axis_value(0, gp_axislv) < -0.1) event_user(0);
	else {
		var yeet = false;
		for ( var i = gp_face1; i < gp_axisrv; i++ ) {
			if gamepad_button_check( 0, i ) yeet = true;
			}
		if (yeet) event_user(0);
	}
}