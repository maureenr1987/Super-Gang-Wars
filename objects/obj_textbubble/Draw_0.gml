/// @desc

//draw the box + marker
DrawSetText(c_white, font_sign, fa_center, fa_bottom);
draw_set_color(c_black);
draw_set_alpha(0.5);
draw_roundrect_ext(x-string_width(text)*0.5-padding,y-string_height(text)-padding/2, x+string_width(text)*0.5+padding,y+padding/2,15,15,false);
draw_sprite(spr_Marker, 0, x, y+padding/2);
draw_set_alpha(1);

//Draw text
DrawSetText(c_white, font_sign, fa_center, fa_bottom);
draw_text(x, y, text);
