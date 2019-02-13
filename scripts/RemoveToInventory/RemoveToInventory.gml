/// @desc SpawnItem(who
/// @arg item
/// @arg quantity-
/// @arg who

//Check if new item is already in the inventory and if true just increase it's quantity
for (var i = 1; i < array_length_1d(argument2.inventory); i++){
	if (argument0 == argument2.inventory[i]) {
		var reet = argument2.inventory_quantity[i] - argument1;
		var item_index = i;
	}
}

if (item_index <= 0) return false;
else {
	argument2.inventory_quantity[item_index] -= argument1;
	return true;
}