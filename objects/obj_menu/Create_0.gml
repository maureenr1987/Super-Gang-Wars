/// @desc GUI/Vars/Menu Setup
cam = view_camera[0];
orig_w = camera_get_view_width(cam);
orig_h = camera_get_view_height(cam);
display_set_gui_size(orig_w,orig_h);
w = display_get_gui_width();
h = display_get_gui_height();


yeet = 1000;
menu_x_target = 20;

menu_speed = 35; //lower is faster
menu_font = font_menu;
menu_itemheight = font_get_size(font_menu);
menu_committed = -1;
menu_control = true;

menu = ["Quit","Continue"]

menu_items = array_length_1d(menu);
menu_cursor = 1;

clr = c_black;
out = c_red;