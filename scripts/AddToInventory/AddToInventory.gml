/// @desc SpawnItem(who
/// @arg item
/// @arg quantity+
/// @arg who

//Check if new item is already in the inventory and if true just increase it's quantity
for (var i = 1; i < array_length_1d(argument2.inventory); i++){
	if (argument0 = argument2.inventory[i]) argument2.inventory_quantity[i] += argument1;
}