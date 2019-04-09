/// @desc Close

image_speed = -1;

if !instance_exists(wall){
	wall = instance_create_layer(x+15,y,"Walls",obj_wall);
	wall.image_xscale = 0.1;
	wall.image_yscale = 2;
	wall.polygon = polygon_from_instance(wall.id);
}

if (image_index < 1) image_speed = 0;