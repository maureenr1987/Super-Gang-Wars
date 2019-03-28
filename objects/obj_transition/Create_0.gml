/// @description size vars and mode setup
cam = view_camera[0];
display_set_gui_size(camera_get_view_width(cam),camera_get_view_height(cam));
w = display_get_gui_width();
h = display_get_gui_height();

enum trans_mode{
	off,
	next,
	goto,
	restart,
	intro,
	endgame
}

mode = trans_mode.intro;
percent = 1;
target = room;

plx = 0;
ply = 0;