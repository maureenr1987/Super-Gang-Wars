/// @desc
cam = view_camera[0];
orig_w = camera_get_view_width(cam);
orig_h = camera_get_view_height(cam);
display_set_gui_size(orig_w,orig_h);
w = display_get_gui_width();
h = display_get_gui_height();

global.debug = 0;

window_set_fullscreen(true);

global.inv = [
	//"obj_baseitem",
	"obj_item_startgun",
	"obj_item_lesser_warden_gun",
	"obj_item_medium_warden_gun",
	"obj_item_higher_warden_gun"
];

target_x = 0;
target_y = 0;