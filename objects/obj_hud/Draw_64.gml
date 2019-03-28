/// @desc
if (instance_exists(obj_player) && room != rm_Menu){
	var pl = obj_player;
	
	////Draw Identification/Status Card
	//Local vars
	var NAME = pl.firstname + " " + pl.middlename + " " + pl.lastname;
	var GEND =  " (" + pl.gender + ")";
	var LVL = "lvl. " + string(pl.lvl);
	var CUR = "Currency: " + string(pl.currency);
	var HP = "HP " + string(floor(pl.current_hp))  + " / " + string(pl.hp);
	var XP = "XP " + string(pl.currentxp) + "/" + string(pl.tonextlvl);

	DrawSetText(c_black,font_stats,fa_center,fa_top);
	x = 5;
	y = 0;
	
	var boxwidth = 200;
	if (boxwidth < string_width(NAME + GEND) ) boxwidth = string_width(NAME + GEND) + 5;
	
	//draw rectangle
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_roundrect_ext(x-15, y+5, x+boxwidth, y+110 , 10, 10, false);
	draw_roundrect_ext(x-15, y+5, x+boxwidth, y+110 , 10, 10, true);
	draw_set_alpha(1);
	
	//draw name
	DrawSetText(c_black,font_stats,fa_left,fa_top);
	OutlineText(x, y+10, NAME + GEND);
	OutlineText(x, y+30, LVL);
	OutlineText(x+boxwidth-5-string_width(CUR), y+30, CUR);
	
	//hp
	OutlineText(x, y+40,HP)
	if (pl.flicker > 0 ) draw_healthbar(x + string_width(HP)+5, y+45 , x+boxwidth-5, y+50, (pl.current_hp / pl.hp) * 100 , c_dkgray , c_red, c_red, 0, true, true);
	else draw_healthbar(x + string_width(HP)+5, y+45 , x+boxwidth-5, y+50, (pl.current_hp / pl.hp) * 100 , c_dkgray , c_red, c_lime, 0, true, true);
	
	//other stats
	DrawSetText(c_gray,font_stats,fa_left,fa_top)
	draw_text(x, y+60, "HP - " + string(pl.hp))
	draw_text(x+70, y+60, "ATK - " + string(pl.atk))
	draw_text(x+70, y+70, "DEF - " + string(pl.def))
	draw_text(x+140, y+60, "SATK - " + string(pl.satk))
	draw_text(x+140, y+70, "SDEF - " + string(pl.sdef))
	draw_text(x, y+70, "SPD - " + string(pl.spd))
	
	//xp
	OutlineText(x, y+90,XP)
	draw_healthbar(x + string_width(XP)+5, y+95 , x+boxwidth-5, y+100, (pl.currentxp / pl.tonextlvl) * 100 , c_dkgray , c_yellow, c_orange, 0, true, true);
	
	//========================================================================================================================================================
	
	////Draw Inventory and Item Preview Icon
	var boxwidth = 140;
	
	//Figure out box height
	var boxheight = 145 + ds_list_size(pl.inventory) * 10;

	//Draw inventory box
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_roundrect_ext(x-15, y+115, x+boxwidth, boxheight, 10, 10, false);
	draw_set_alpha(1);
	
	//Set font
	DrawSetText(c_black,font_stats,fa_left,fa_top);
	
	//Inventory
	OutlineText(x, y+120,"Inventory")

	//Populate inventory
	var textheight = 135;
	
	for (var i = 1; i < ds_list_size(pl.inventory); i++){
		
		var list = ds_list_find_value(pl.inventory,i);
		var item = ds_map_find_value(list,"item");
		var quan = ds_map_find_value(list,"quantity");
		var itembuffer = instance_create_layer(x, y,"hidden",asset_get_index(item));
	
		textheight += 10;
		
		//Highlight Current Item
		if (i == obj_player.currentitem) {
			//DrawSetText(c_gray,font_stats,fa_left,fa_top)
			OutlineTextColor(x,textheight,"> x"+string(quan),c_white,c_black,1);
			OutlineTextColor(x+35,textheight,itembuffer.name,c_white,c_black,1.5);
		}
		//No Highlight
		else {
			DrawSetText(c_gray,font_stats,fa_left,fa_top)
			draw_text(x,textheight,"   x"+string(quan));
			draw_text(x+35,textheight,itembuffer.name);
		}
		instance_destroy(itembuffer);
	}
	
	//Check if inventory is empty
	if (textheight == 135) OutlineTextColor(x,textheight,"Your invemtory is empty",c_gray,c_black,1);
	
	
	if (pl.currentitem != 0 && pl.currentitem <= ds_list_size(pl.inventory)-1){
	//Display Item Preview
	var previewanchor_x = x+boxwidth+5;
	var previewanchor_y = y+115;
	
	//Create item buffer
	var itembuffer = instance_create_layer(x, y,"hidden",asset_get_index(ds_map_find_value(ds_list_find_value(pl.inventory, pl.currentitem),"item")));
	
	//Save sprite origin
	var offset_x = itembuffer.sprite_xoffset;
	var offset_y = itembuffer.sprite_yoffset;
	
	//Move sprite origin to center
	sprite_set_offset(itembuffer.sprite_index,sprite_get_width(itembuffer.sprite_index)/2,sprite_get_height(itembuffer.sprite_index)/2);
	
	//draw rectangle
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	if (sprite_get_height(itembuffer.sprite_index) >= 32) draw_roundrect_ext(previewanchor_x, previewanchor_y, previewanchor_x+sprite_get_width(itembuffer.sprite_index)+10, previewanchor_y+sprite_get_height(itembuffer.sprite_index)+10, 10, 10, false);
	else draw_roundrect_ext(previewanchor_x, previewanchor_y, previewanchor_x+42, previewanchor_y+42, 10, 10, false);
	draw_set_alpha(1);
	
	//Draw item icon
	if (sprite_get_height(itembuffer.sprite_index) >= 32) draw_sprite(itembuffer.sprite_index,0,previewanchor_x+5+sprite_get_width(itembuffer.sprite_index)/2,previewanchor_y+5+sprite_get_height(itembuffer.sprite_index)/2);
	else draw_sprite(itembuffer.sprite_index,0,previewanchor_x+5+16,previewanchor_y+5+16);
	//Move sprite origin back to normal
	sprite_set_offset(itembuffer.sprite_index,offset_x,offset_y);
	
	//Destroy item buffer
	instance_destroy(itembuffer);
	}
	
	if (global.debug){
		OutlineTextColor(w-110, 30,"x_axis = " + string(pl.x_axis),c_lime,c_black,1)
		OutlineTextColor(w-110, 45,"y_axis = " + string(pl.y_axis),c_lime,c_black,1)
	}
}

if (global.debug){
	DrawSetText(c_white,font_stats,fa_left,fa_top)
	OutlineTextColor(w-110, 0,"delta_time = " + string(delta_time/1000),c_lime,c_black,1);
	OutlineTextColor(w-110, 15,"fps = " + string(fps),c_lime,c_black,1)
	
		
		

}
