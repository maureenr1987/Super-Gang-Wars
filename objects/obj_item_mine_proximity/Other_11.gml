
mine = instance_create_layer(x, y, "Items", obj_mine_proximity);
mine.x += lengthdir_x(20,Owner.face);
mine.y += lengthdir_y(20,Owner.face);
mine.Owner = Owner;

