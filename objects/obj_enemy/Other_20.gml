/// @desc (dead)
var xp = instance_create_layer(x,y,"Items",obj_xp);
xp.xp = lvl;



//Spawn the currentitem
var itembuffer = instance_create_layer(x, y,"hidden",asset_get_index(ds_map_find_value(ds_list_find_value(inventory, currentitem),"item")));
var dropped_item = instance_create_layer(x,y,"Items",obj_dropped_item);
dropped_item.item = string(object_get_name(itembuffer.object_index));
dropped_item.item_sprite = itembuffer.sprite_index;
instance_destroy(itembuffer)