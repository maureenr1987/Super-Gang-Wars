/// @desc

if instance_exists(obj_menu){
	use_x_axis = false;
	use_y_axis = true;
	x_axis_can_hold = false;
	x_axis_can_hold = false;
}
if instance_exists(obj_levelselect){
	use_x_axis = true;
	use_y_axis = false;
	x_axis_can_hold = false;
	x_axis_can_hold = false;
}
if instance_exists(obj_bettermenu){
	if (!obj_bettermenu.inputting) {
		use_x_axis = false;
		use_y_axis = true;
		x_axis_can_hold = false;
		x_axis_can_hold = false;
	} 
	else {
		var ds_grid = obj_bettermenu.menu_pages[obj_bettermenu.page];
		switch(ds_grid[# 1, obj_bettermenu.menu_option[obj_bettermenu.page]]){
			case menu_element_type.slider:
				use_x_axis = true;
				use_y_axis = false;
				x_axis_can_hold = true;
				y_axis_can_hold = false;
				break;
			default:
				use_x_axis = true;
				use_y_axis = false;
				x_axis_can_hold = false;
				y_axis_can_hold = false;
				break;
		}
	}
}
if instance_exists(obj_betterpause){
	if (!obj_betterpause.inputting) {
		use_x_axis = false;
		use_y_axis = true;
		x_axis_can_hold = false;
		x_axis_can_hold = false;
	} 
	else {
		var ds_grid = obj_betterpause.menu_pages[obj_betterpause.page];
		switch(ds_grid[# 1, obj_betterpause.menu_option[obj_betterpause.page]]){
			case menu_element_type.slider:
				use_x_axis = true;
				use_y_axis = false;
				x_axis_can_hold = true;
				y_axis_can_hold = false;
				break;
			default:
				use_x_axis = true;
				use_y_axis = false;
				x_axis_can_hold = false;
				y_axis_can_hold = false;
				break;
		}
	}
}