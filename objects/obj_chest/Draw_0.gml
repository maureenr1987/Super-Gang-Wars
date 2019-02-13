/// @desc
draw_self();
if (overlap) && (!opened){
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_roundrect_ext(x, y-64, x+32, y-32, 15, 15, false);
	draw_sprite(spr_Marker, 0, x+16, y-32);
	draw_set_alpha(1);

	//Draw text
	DrawSetText(c_white, font_sign, fa_center, fa_top);
	if !gamepad_is_connected(0) draw_text(x+16, y-60, "E"); else draw_text(x+16, y-60, "A");
}