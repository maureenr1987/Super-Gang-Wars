/// @desc
if (instance_exists(obj_player)){
	var pl = obj_player;
	
	////Draw Identification/Status Card
	//Local vars
	var NAME = pl.firstname + " " + pl.middlename + " " + pl.lastname;
	var GEND =  " (" + pl.gender + ")";
	var LVL = "lvl. " + string(pl.lvl);
	var HP = "HP " + string(floor(pl.current_hp))  + " / " + string(pl.hp);
	var XP = "XP " + string(pl.currentexp) + "/" + string(pl.tonextlvl);

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
	OutlineText(x, y+10, NAME + GEND)//,c_white,c_black);
	OutlineText(x, y+30,LVL)//,c_white,c_black);
	
	//hp
	OutlineText(x, y+40,HP)//,c_white,c_black);
	if (pl.flicker > 0 ) draw_healthbar(x + string_width(HP)+5, y+45 , x+boxwidth-5, y+50, (pl.current_hp / pl.hp) * 100 , c_dkgray , c_red, c_red, 0, true, true);
	else draw_healthbar(x + string_width(HP)+5, y+45 , x+boxwidth-5, y+50, (pl.current_hp / pl.hp) * 100 , c_dkgray , c_red, c_lime, 0, true, true);
	
	//other stats
	OutlineText(x, y+60, "HP - " + string(pl.hp))
	OutlineText(x+70, y+60, "ATK - " + string(pl.atk))
	OutlineText(x+70, y+70, "DEF - " + string(pl.def))
	OutlineText(x+140, y+60, "SATK - " + string(pl.satk))
	OutlineText(x+140, y+70, "SDEF - " + string(pl.sdef))
	OutlineText(x, y+70, "SPD - " + string(pl.spd))
	
	//xp
	OutlineText(x, y+90,XP)//,c_white,c_black);
	draw_healthbar(x + string_width(XP)+5, y+95 , x+boxwidth-5, y+100, (pl.currentexp / pl.tonextlvl) * 100 , c_dkgray , c_yellow, c_orange, 0, true, true);
	
	//========================================================================================================================================================
	
	////Draw Inventory and Item Preview Icon
	var boxwidth = 140;
	
	//Figure out box height
	var boxheight = 145;
	for (var i = 0; i < array_length_1d(obj_player.inventory); i++){
		if (obj_player.inventory_quantity[i]) boxheight += 10;
	}

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
	for (var i = 1; i < array_length_1d(obj_player.inventory); i++){
		if (obj_player.inventory_quantity[i] > 0){
			var itembuffer = instance_create_layer(x, y,"hidden",asset_get_index(obj_player.inventory[i]))
			if (obj_player.inventory_quantity[i]) textheight += 10;
			//Highlight Current Item
			if (i == obj_player.currentitem) {
				OutlineTextColor(x,textheight,"> "+string(obj_player.inventory_quantity[i]),c_white,c_black,1);
				OutlineTextColor(x+35,textheight,itembuffer.name,c_white,c_black,1.5);
			}
			//No Highlight
			else {
				OutlineTextColor(x,textheight,"   "+string(obj_player.inventory_quantity[i]),c_gray,c_black,1);
				OutlineTextColor(x+35,textheight,itembuffer.name,c_gray,c_black,1);
			}
			instance_destroy(itembuffer);
		}
	}
	
	//Check if inventory is empty
	if (textheight == 135) OutlineTextColor(x,textheight,"Your invemtory is empty",c_gray,c_black,1);
	
	//Display Item Preview
	var previewanchor_x = x+boxwidth+5;
	var previewanchor_y = y+115;
	
	//Create item buffer
	var itembuffer = instance_create_layer(x, y,"hidden",asset_get_index(obj_player.inventory[obj_player.currentitem]));
	
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