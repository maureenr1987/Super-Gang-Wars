/// @desc AddToInventory (item,quantity,who)
/// @arg item
/// @arg quantity+
/// @arg who

	//Check if new item is already in the inventory and if it does save it's index
	var exists = false;
	for (var i = 1; i <= ds_list_size(argument2.inventory) - 1; i++){
		var list = ds_list_find_value(argument2.inventory,i);
		var item = ds_map_find_value(list,"item");
		if (argument0 == item){
			var index = i;
			exists = true;
		}
	}

	//If the item exists then add the quantity and if the quantity ends up less than 0 the delete the item from the inventory
	if (exists){
		var list = ds_list_find_value(argument2.inventory,index);
		var newq = ds_map_find_value(list,"quantity")+argument1;
		if (newq >= 1) {
			ds_map_replace(list,"quantity",newq)
			ds_list_replace(argument2.inventory,index,list);
		}
		else {
			ds_list_delete(argument2.inventory,index)
		}
	}

	//If the item doesn't exist then create a slot for it
	else {
		ds_list_add(argument2.inventory, CreateItemDS(argument0,argument1));
	}
