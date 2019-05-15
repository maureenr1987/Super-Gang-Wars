/// @desc Draw Menu
draw_set_font(font_menu);
draw_set_halign(fa_left);
draw_set_valign(fa_bottom);

for (var i = 0; i < array_length_1d(menu_items); i++){
	
	
	if (menu_cursor == i){
		DrawSetText(c_black,font_menu,fa_left,fa_bottom)
		OutlineTextColor(w*0.05, h*0.75+i*40,"> "+menu_items[i],out,c_black,1);
	}
	else {
		DrawSetText(c_black,font_menu,fa_left,fa_bottom)
		OutlineTextColor(w*0.05,h*0.75+i*40,menu_items[i],c_black,out,1);
	}
}	

draw_sprite(spr_game_title,inx,w/2,h/2-25);