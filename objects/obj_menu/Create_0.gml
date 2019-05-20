/// @desc GUI/Vars/Menu Setup
cam = view_camera[0];

//set gui size
display_set_gui_size(640,360);
w = display_get_gui_width();
h = display_get_gui_height();


//Setup menu
menu_items = ["Continue","Quit"];
menu_cursor = 0;
menu_control = true;

//Outline
out = c_red;
inx = 0;
