/// @description
draw_self();

//Hurt Flicker
if (flicker > 0) {
	flicker--
	shader_set (sh_white);
	draw_self();
	shader_reset();
}