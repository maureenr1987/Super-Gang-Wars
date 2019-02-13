/// @desc SpawnItem(who)
/// @arg who

with (argument0){
	if (instance_exists(physitem)) if (physitem.Owner = argument0) instance_destroy(physitem);
	physitem = instance_create_layer(x, y,"Items", asset_get_index(inventory[currentitem]));
	physitem.x = x + lengthdir_x(physitem.Itempositioncenter_x, face);
	physitem.y = y + lengthdir_y(physitem.Itempositioncenter_x, face) + physitem.Itempositioncenter_y;
	physitem.image_angle = face;
	physitem.Owner = self;
	argument0.hit_pressed = physitem.hit_pressed;
	argument0.use_pressed = physitem.use_pressed;
}