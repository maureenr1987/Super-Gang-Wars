/// @description
draw_self();

if (flicker > 0) {
	flicker--
	shader_set (sh_white);
	draw_self();
	shader_reset();
}