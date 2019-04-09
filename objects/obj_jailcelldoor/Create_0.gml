/// @desc
otxtbbl = emptyobj;
open = false;

image_speed = 0;

wall = instance_create_layer(x+15,y,"Walls",obj_wall);
wall.image_xscale = 0.1;
wall.image_yscale = 2;
wall.polygon = polygon_from_instance(wall.id);