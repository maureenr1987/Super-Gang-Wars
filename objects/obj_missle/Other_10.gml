/// @description explode
var expl = instance_create_layer(x, y,"Items",obj_explosion_radial)
expl.forcespd = 10;
instance_destroy();
repeat(100) {
	var derbis = instance_create_layer(x, y, "Items", obj_derbis)
}
