/// @desc
if (!global.pause) exit;

if instance_exists(obj_player) obj_player.cancontrol = false;

input_up = obj_menuctrl.up;
input_down = obj_menuctrl.down;
input_enter = obj_menuctrl.next;

var ds_grid = menu_pages[page];
var ds_height = ds_grid_height(ds_grid);

if (inputting){
	switch(ds_grid[# 1, menu_option[page]]){
		case menu_element_type.shift:
			var hinput = obj_menuctrl.right - obj_menuctrl.left;
			if(hinput != 0){
				ds_grid[# 3, menu_option[page]] += hinput;
				ds_grid[# 3, menu_option[page]] = clamp(ds_grid[# 3, menu_option[page]], 0, array_length_1d(ds_grid[# 4, menu_option[page]])-1);
			}
			break;
		case menu_element_type.slider:
			var hinput = obj_menuctrl.right - obj_menuctrl.left;
			if(hinput != 0){
				var oof = ds_grid[# 4, menu_option[page]];
				ds_grid[# 3, menu_option[page]] += hinput * 0.01;
				ds_grid[# 3, menu_option[page]] = clamp(ds_grid[# 3, menu_option[page]],oof[0] , oof[1]);
				script_execute(ds_grid[# 2, menu_option[page]], ds_grid[# 3, menu_option[page]]);
			}
			break;
		case menu_element_type.toggle:
			var hinput = obj_menuctrl.right - obj_menuctrl.left;
			if(hinput != 0){
				ds_grid[# 3, menu_option[page]] += hinput;
				ds_grid[# 3, menu_option[page]] = clamp(ds_grid[# 3, menu_option[page]], 0, 1);
			}
			break;
	}
}
else {
	var ochange = input_down - input_up;
	if (ochange != 0) {
		menu_option[page] += ochange;
		if (menu_option[page] > ds_height-1) menu_option[page] = 0;
		if (menu_option[page] < 0) menu_option[page] = ds_height-1;
	}
}

if (input_enter){
	switch(ds_grid[# 1, menu_option[page]]){
		case menu_element_type.script_runner: script_execute(ds_grid[# 2, menu_option[page]]); break;
		case menu_element_type.page_transfer: page = ds_grid[# 2, menu_option[page]]; break;
		case menu_element_type.shift:
		case menu_element_type.slider:
		case menu_element_type.toggle: if (inputting){ script_execute(ds_grid[# 2, menu_option[page]], ds_grid[# 3, menu_option[page]]); }
			inputting = !inputting;
			break;
	}
}

if (obj_menuctrl.prev && page != 0) {
	page = ds_grid[# 2, ds_height-1]
}