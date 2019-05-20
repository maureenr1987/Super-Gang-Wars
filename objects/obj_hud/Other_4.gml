/// @desc
//set gui size
display_set_gui_size(global.guisize_w,global.guisize_h);
w = display_get_gui_width();
h = display_get_gui_height();

if !(room == rm_Menu || room == rm_LevelSelect) {
	obj_player.cancontrol = true;
	SaveGame();
} 
else obj_player.cancontrol = false;
ResetControls(self)