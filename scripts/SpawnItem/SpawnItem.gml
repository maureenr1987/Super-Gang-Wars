/// @desc SpawnItem()
//If the item that the character is holding in the world does not match the one marked in their inventory, then discard it and spawn the correct item
if (!dead) && (!instance_exists(physitem) || object_get_name(physitem.object_index) != ds_map_find_value(ds_list_find_value(inventory,current_item),"item")){
	//Destroy 
	if (instance_exists(physitem)) instance_destroy(physitem);

	//Spawn current item
	physitem = instance_create_layer(x, y,"Items",asset_get_index(ds_map_find_value(ds_list_find_value(inventory, current_item),"item")));

	//Set item position
	physitem.x = x + lengthdir_x(physitem.Itempositioncenter_x, face);
	physitem.y = y + lengthdir_y(physitem.Itempositioncenter_x, face) + physitem.Itempositioncenter_y;
	physitem.image_angle = face;
	physitem.image_yscale = image_yscale;
	physitem.Owner = self;
	use_pressed = physitem.use_pressed;
}
