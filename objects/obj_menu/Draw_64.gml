/// @desc Draw Menu
draw_set_font(font_menu);
draw_set_halign(fa_left);
draw_set_valign(fa_bottom);

for (var i = 0; i < menu_items; i++){
	var txt = menu[i];
	var xx = menu_x;
	var yy = menu_y - (menu_itemheight * (i * 1.5));
	
	if (menu_cursor == i){
		DrawSetText(clr,font_menu,fa_left,fa_bottom)
		OutlineTextColor(xx,yy,"> "+txt,out,clr,1)
	}
	else {
		DrawSetText(clr,font_menu,fa_left,fa_bottom)
		OutlineTextColor(xx,yy,txt,clr,out,1)
	}
}	

DrawSetText(c_white,font_title,fa_center,fa_bottom)
OutlineTextColor(w/2, h/2,"SUPER GANG WARS",clr,out,1);