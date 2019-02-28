/// @desc
cam = view_camera[0];
orig_w = camera_get_view_width(cam);
orig_h = camera_get_view_height(cam);
display_set_gui_size(orig_w,orig_h);
w = display_get_gui_width();
h = display_get_gui_height();

global.debug = false;