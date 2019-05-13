/// @desc

if instance_exists(obj_menu){
	use_x_axis = false;
	use_y_axis = true;
}
if instance_exists(obj_levelselect){
	if (obj_levelselect.menu_current == 1){
		use_x_axis = true;
		use_y_axis = false;
	} else if (obj_levelselect.menu_current == 2){
		use_x_axis = false;
		use_y_axis = true;
	}
}