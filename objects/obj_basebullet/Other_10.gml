/// @desc

// Inherit the parent event
event_inherited();

//Sparks
repeat(5) {
	var spark = instance_create_layer(x, y, "Player", obj_spark);
	spark.direction =  proj_Owner.face - 180 + random_range(-30, 30);
}