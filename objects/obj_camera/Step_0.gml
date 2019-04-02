/// @description Update Camera
if (room != 0) target = obj_player; else target = emptyobj;

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

//if instance_exists(obj_player) camera_set_view_angle(cam,obj_player.face);



//Switch zoom
if keyboard_check_pressed(ord("Z")) || gamepad_button_check_pressed(0, gp_stickr) {
	if (target_zoom >= 0.9) target_zoom = 0.5; else target_zoom += 0.2;
}


//Move camera
if !gamepad_is_connected(0) {
	key_cam_left = keyboard_check(vk_left);
	key_cam_right = keyboard_check(vk_right);
	key_cam_up = keyboard_check(vk_up);
	key_cam_down = keyboard_check(vk_down);
	
	x_cam_axis = key_cam_right - key_cam_left;
	y_cam_axis = key_cam_down - key_cam_up;
} 
else {
	x_cam_axis = gamepad_axis_value(0,gp_axisrh);
	y_cam_axis = gamepad_axis_value(0,gp_axisrv);
}



x += x_cam_axis * 10;
y += y_cam_axis * 10;



