/// @desc
draw_self();
if (overlap) && (global.showID) {
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_roundrect_ext(x-16, y-64-32, x+16, y-64, 15, 15, false);
	draw_sprite(spr_Marker, 0, x, y-64);
	draw_set_alpha(1);

	//Draw text
	DrawSetText(c_white, font_sign, fa_center, fa_top);
	
	if !gamepad_is_connected(0) draw_text(x, y-60-32, "E"); else draw_text(x, y-60-32, "A");
}