/// @description Draw black bars

if (mode != trans_mode.off){
	draw_set_color(c_black);
	draw_rectangle(0, 0, w, percent * (h/2), false);
	draw_rectangle(0, h, w, h - (percent * (h/2)), false);
}