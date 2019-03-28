/// @desc AddToInventory (password,who)
/// @arg password
/// @arg who

//Check if new item is already in the inventory and if it does save it's index
var index = ds_list_find_index(argument1.passwordlist,argument0);

//If the item doesn't exist then create a slot for it
if (index == -1) {
	ds_list_add(argument1.passwordlist,argument0);
}
