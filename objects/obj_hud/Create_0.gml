/// @desc
cam = view_camera[0];
orig_w = camera_get_view_width(cam);
orig_h = camera_get_view_height(cam);
display_set_gui_size(orig_w,orig_h);
w = display_get_gui_width();
h = display_get_gui_height();

global.debug = false;

window_set_fullscreen(true);

global.inv = [
	"obj_baseitem",
	"obj_item_basegun",
	"obj_item_gun2",
	"obj_item_gun3",
	"obj_item_gun4",
	"obj_item_basespear",
	"obj_item_basesword",
	"obj_item_mine_manual",
	"obj_item_mine_proximity",
	"obj_item_mine_timed",
	"obj_item_missilelauncher",
	"obj_item_lazergun",
	"obj_item_flamethrower",
	"obj_item_zawarudo",
	"obj_item_basefood",
	"obj_item_armcannon"
];