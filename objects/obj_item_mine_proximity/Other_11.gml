/// @desc (use) place mine
mine = instance_create_layer(x, y, "Items", obj_mine_proximity);
mine.x += lengthdir_x(20,Owner.face);
mine.y += lengthdir_y(20,Owner.face);
mine.Owner = Owner;
AddToInventory("obj_item_mine_proximity",-1,Owner)