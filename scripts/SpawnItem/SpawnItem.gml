/// @desc SpawnItem()


	if (instance_exists(physitem)) if (physitem.Owner == self) instance_destroy(physitem);
	var list = ds_list_find_value(inventory, currentitem);
	var item = ds_map_find_value(list,"item");
	
	physitem = instance_create_layer(x, y,"Items",asset_get_index(item));
	physitem.x = x + lengthdir_x(physitem.Itempositioncenter_x, face);
	physitem.y = y + lengthdir_y(physitem.Itempositioncenter_x, face) + physitem.Itempositioncenter_y;
	physitem.image_angle = face;
	physitem.Owner = self;
	use1_pressed = physitem.use1_pressed;
	use2_pressed = physitem.use2_pressed;
