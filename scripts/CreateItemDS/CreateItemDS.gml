/// @desc CreateItemDS
/// @arg item_obj_string
/// @arg quantity

var newitemcache = ds_map_create();
ds_map_add(newitemcache, "item", argument0);
ds_map_add(newitemcache, "quantity", argument1);
return newitemcache;
