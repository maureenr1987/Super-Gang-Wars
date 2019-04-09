/// @description
draw_self();

if (flicker > 0) {
	flicker--
	shader_set (sh_white);
	draw_self();
	shader_reset();
}


////Is the Player Visible?
var cam = view_camera[0];

gui_x = display_get_width() * (x - camera_get_view_x(cam)) / camera_get_view_width(cam);
gui_y = display_get_height() * (y - camera_get_view_y(cam)) / camera_get_view_height(cam);


value = 0;
for (var i = -24; i<=24; i+=4){
	colour = draw_getpixel(gui_x,gui_y+i);
	value += color_get_value(colour);
}
value /= 12;
colour = draw_getpixel(gui_x,gui_y+i);
is_visable = (value > 10);