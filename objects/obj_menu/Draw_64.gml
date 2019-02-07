/// @desc Draw Menu
draw_set_font(font_menu);
draw_set_halign(fa_left);
draw_set_valign(fa_bottom);

for (var i = 0; i < menu_items; i++){
	var txt = menu[i];
	var xx = menu_x;
	var yy = menu_y - (menu_itemheight * (i * 1.5));
	
	if (menu_cursor == i){
		txt = string_insert("> ", txt, 0);
		var col = c_white;
		var out = $bd3a38;
		//$701be6;
	}
	else {
		var col = $bd3a38;
		var out = c_black;
	}
	
	
	DrawSetText(col,font_menu,fa_left,fa_bottom)
	OutlineTextColor(xx,yy,txt,col,out,1)
	
	DrawSetText(c_white,font_title,fa_center,fa_bottom)
	OutlineTextColor(w/2, h/2,"Life the Game 2",c_white,$bd3a38,1.5);
}