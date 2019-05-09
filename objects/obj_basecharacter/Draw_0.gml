/// @description
draw_self();

//Hurt Flicker
if (flicker > 0) {
	flicker--
	shader_set (sh_white);
	draw_self();
	shader_reset();
	
	if (object_index == obj_player) ScreenShake(5,10);
}