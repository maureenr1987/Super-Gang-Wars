/// @desc (use1) place/detnate
if (instance_exists(mine)){
	if (mine.Owner == Owner){
		with (mine){
			event_user(0);
			AddToInventory("obj_item_mine_manual",-1,Owner)
		}
	}
}
else {
	mine = instance_create_layer(x, y, "Items", obj_mine_manual);
	mine.x += lengthdir_x(20,Owner.face);
	mine.y += lengthdir_y(20,Owner.face);
	mine.Owner = Owner;
}
