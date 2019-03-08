/// @description Update Camera

//Update camera position
if (instance_exists(target)){
	x += (target.x - x) * (delta_time/100000) / 2;
	y += (target.y - y) * (delta_time/100000) / 2;
}
zoom += (target_zoom - zoom) * 0.1;

//Update camera view
camera_set_view_size(cam, orig_w * zoom, orig_h * zoom);
cam_width = camera_get_view_width(cam);
cam_height = camera_get_view_height(cam);

x = clamp(x, cam_width * 0.5 + buff, room_width - cam_width * 0.5 - buff);
y = clamp(y, cam_height * 0.5 + buff, room_height - cam_height * 0.5 - buff);

x += random_range(-shake_remain,shake_remain);
y += random_range(-shake_remain,shake_remain);
shake_remain = max(0,shake_remain - ((1/shake_length)*shake_magnitude));

camera_set_view_pos(cam, x - cam_width * 0.5, y - cam_height * 0.5);

//Switch zoom
if keyboard_check_pressed(ord("Z")) || gamepad_button_check_pressed(0, gp_stickr) {
	if (target_zoom >= 0.9) target_zoom = 0.5; else target_zoom += 0.2;
}

//Parallax Backgrounds
var xxx = 2;
for (var i = 0; i <= 10; i++){
	var bg = "bg_" + string(i);
	xxx += .1;
	
	if (layer_exists(bg)){
		layer_x(bg,(x / xxx) * zoom)
	}
}

//Set GUI size
display_set_gui_size(camera_get_view_width(cam),camera_get_view_height(cam));