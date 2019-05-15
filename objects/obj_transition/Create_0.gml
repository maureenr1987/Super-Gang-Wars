/// @description size vars and mode setup
cam = view_camera[0];
w = display_get_gui_width();
h = display_get_gui_height();

enum trans_mode{
	off,
	next,
	prev,
	goto,
	restart,
	intro,
	endgame
}

mode = trans_mode.intro;
percent = 1;
target = room;

target_x = 0;
target_y = 0;
