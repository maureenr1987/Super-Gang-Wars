/// @desc
otxtbbl = emptyobj;
opened = false;
overlap = false;

if instance_exists(obj_player){
//Check if new item is already in the inventory and if it does save it's index
var index = ds_list_find_index(obj_player.passwordlist,password);

//If the item doesn't exist then create a slot for it
if (index != -1) {
	instance_destroy();
}
}
