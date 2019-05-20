///@desc change_volume
///@arg value

global.gui_size = argument0;

switch (global.gui_size){
	case 0:
		global.guisize_h = 360;
		global.guisize_w = 640;
		break;
	case 1:
		global.guisize_h = 360*1.5;
		global.guisize_w = 640*1.5;
		break;
	case 2:
		global.guisize_h = 360*2;
		global.guisize_w = 640*2;
		break;
}
display_set_gui_size(global.guisize_w,global.guisize_h);