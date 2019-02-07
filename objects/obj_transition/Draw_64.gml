/// @description Draw black bars

if (mode != trans_mode.off){
	draw_set_color(c_black);
	draw_rectangle(0, 0, w, percent * (h/2), false);
	draw_rectangle(0, h, w, h - (percent * (h/2)), false);
}

DrawSetText(c_white,font_stats,fa_left,fa_top)
OutlineTextColor(w-110, 0,"delta_time = " + string(delta_time/1000),c_lime,c_black,1);
OutlineTextColor(w-110, 15,"fps = " + string(fps),c_lime,c_black,1)