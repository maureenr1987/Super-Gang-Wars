/// @desc (use) place mine
mine = instance_create_layer(x, y, "Items", obj_mine_timed);
mine.x += lengthdir_x(20,Owner.face);
mine.y += lengthdir_y(20,Owner.face);
mine.time = time;
AddToInventory("obj_item_mine_timed",-1,Owner);
