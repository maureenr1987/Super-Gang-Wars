/// @desc

if instance_exists(obj_player) && !(room == 0 || room == 1){
	var pl = obj_player;
	#region //Draw Identification/Status Card
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
	
	var boxwidth = 130;
	if (boxwidth < string_width(NAME + GEND) ) boxwidth = string_width(NAME + GEND) + 5;
	
	//draw rectangle
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_roundrect_ext(x-15, y-10, x+boxwidth, y+45 , 10, 10, false);
	draw_set_alpha(1);
	
	text_y = 0;
	
	//Draw Name and Gender
	DrawSetText(c_white,font_stats,fa_left,fa_top);
	draw_text(x, text_y, NAME + GEND);
	text_y += 10;
	
	//Draw Level and Currency
	draw_text(x, text_y, LVL);
	draw_text(x+boxwidth-5-string_width(CUR), text_y, CUR);
	text_y += 10;
	
	//Draw HP and Health Bar
	draw_text(x, text_y, HP)
	if (pl.flicker > 0 ) draw_healthbar(x + string_width(HP)+5, text_y+5 , x+boxwidth-5, text_y+10, (pl.current_hp / pl.hp) * 100 , c_dkgray , c_red, c_red, 0, true, true);
	else draw_healthbar(x + string_width(HP)+5, text_y+5 , x+boxwidth-5, text_y+10, (pl.current_hp / pl.hp) * 100 , c_dkgray , c_red, c_lime, 0, true, true);
	text_y += 10;
	
	/*
	//Other Stats
	DrawSetText(c_gray,font_stats,fa_left,fa_top)
	draw_text(x, text_y, "HP - " + string(pl.hp))
	draw_text(x+70, text_y, "ATK - " + string(pl.atk))
	text_y += 10;
	
	draw_text(x, text_y, "SPD - " + string(pl.spd))
	draw_text(x+70, text_y, "DEF - " + string(pl.def))
	text_y += 10;*/
	
	//xp
	OutlineText(x, text_y,XP)
	draw_healthbar(x + string_width(XP)+5, text_y+5 , x+boxwidth-5, text_y+10, (pl.currentxp / pl.tonextlvl) * 100 , c_dkgray , c_yellow, c_orange, 0, true, true);
	text_y += 20;
	
	#endregion
	
	#region //Draw Item Icon
	/*//if inventory is empty
	if (ds_list_size(pl.inventory) <= 1) { text_y += 5; OutlineTextColor(x,text_y,"Your invemtory is empty",c_gray,c_black,1);}
	
	
	if (ds_map_find_value(ds_list_find_value(pl.inventory,pl.currentitem),"item") != "obj_baseitem"){
	//Display Item Preview
	var previewanchor_x = x+145;
	var previewanchor_y = text_y;
	
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
	}*/
	#endregion
	
	#region //Draw Inventory
	//Draw inventory box
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	if (ds_list_size(pl.inventory) >= 1) draw_roundrect_ext(x-15, text_y-3, x+140, text_y+ds_list_size(pl.inventory)*10+15, 10, 10, false);
	else draw_roundrect_ext(x-15, text_y-3, x+140, text_y+25, 10, 10, false);
	draw_set_alpha(1);

	//Set font
	DrawSetText(c_black,font_stats,fa_left,fa_top);
	
	//Inventory
	OutlineText(x, text_y,"Inventory");
	text_y += 5;

		
	for (var i = 1; i < ds_list_size(pl.inventory); i++){
		
		var list = ds_list_find_value(pl.inventory,i);
		var item = ds_map_find_value(list,"item");
		var quan = ds_map_find_value(list,"quantity");
		var itembuffer = instance_create_layer(x, y,"hidden",asset_get_index(item));
	
		text_y += 10
		
		//Highlight Current Item 1
		if (i == obj_player.current_item_1) {
			OutlineTextColor(x,text_y,"> x"+string(quan),c_white,c_red,1);
			OutlineTextColor(x+35,text_y,itembuffer.name,c_white,c_red,1);
		}
		else if (i == obj_player.current_item_2) {
			OutlineTextColor(x,text_y,"> x"+string(quan),c_white,c_blue,1);
			OutlineTextColor(x+35,text_y,itembuffer.name,c_white,c_blue,1);
		}
		//No Highlight
		else {
			DrawSetText(c_gray,font_stats,fa_left,fa_top)
			draw_text(x,text_y,"   x"+string(quan));
			draw_text(x+45,text_y,itembuffer.name);
		}
		instance_destroy(itembuffer);
	}
	#endregion
}
#region Draw Debug Stuff
if (global.debug){
	DrawSetText(c_white,font_stats,fa_left,fa_top)
	OutlineTextColor(w-110, 0,"delta_time = " + string(delta_time/1000),c_lime,c_black,1);
	OutlineTextColor(w-110, 15,"fps = " + string(fps),c_lime,c_black,1);
	
	if instance_exists(obj_player) && (room != 0) {
		var pl = obj_player;
		
		//Axis
		OutlineTextColor(w-110, 30,"x_axis = " + string(pl.x_axis),c_lime,c_black,1)
		OutlineTextColor(w-110, 45,"y_axis = " + string(pl.y_axis),c_lime,c_black,1)
		OutlineTextColor(w-110, 60,"x_cam_axis = " + string(pl.x_cam_axis),c_lime,c_black,1);
		OutlineTextColor(w-110, 75,"y_cam_axis = " + string(pl.y_cam_axis),c_lime,c_black,1);
		
		//OutlineTextColor(w-110,105,,c_lime,c_black,1)
	}
}
#endregion
