/// @desc
var i = 0;
var array_len = array_length_1d(menu_pages);
repeat(array_len){
	ds_grid_destroy(menu_pages[i]);
	i++;
}

if instance_exists(obj_player) obj_player.cancontrol = true;