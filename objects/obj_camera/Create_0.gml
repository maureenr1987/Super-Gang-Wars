/// @description Set up Camera
if (room != 0) target = obj_player; else target = emptyobj;
cam = view_camera[0];

zoom = 0.7;
target_zoom = 0.7;

orig_w = camera_get_view_width(cam);
orig_h = camera_get_view_height(cam);

cam_width = camera_get_view_width(cam);
cam_height = camera_get_view_height(cam);

shake_length = 0;
shake_magnitude = 0;
shake_remain = 0;
buff = 16;