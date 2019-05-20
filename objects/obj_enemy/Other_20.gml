/// @desc (dead)
var xp = instance_create_layer(x,y,"Overlay",obj_xp);
xp.xp = lvl;



//Chance of Dropping an item is based off enemy strength
switch (global.difficulty_enemy_strength) {
	case 0: var dropchance = .80; break;
	case 1: var dropchance = .60; break;
	case 2: var dropchance = .40; break;
	case 3: var dropchance = .20; break;
}

//Spawn the currentitem
if (random(1) < dropchance) {
	var itembuffer = instance_create_layer(x, y,"hidden",asset_get_index(ds_map_find_value(ds_list_find_value(inventory, currentitem),"item")));
	var dropped_item = instance_create_layer(x,y,"Items",obj_dropped_item);
	dropped_item.item = string(object_get_name(itembuffer.object_index));
	dropped_item.item_sprite = itembuffer.sprite_index;
	instance_destroy(itembuffer)
}