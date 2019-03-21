/// @desc


var pl = menu_controller;

switch (menu_current){
	
	case itembuy:
		for (var i = 0; i < array_length_1d(menu_current); i++){
			//Heading is always white text
			if (i == 0) OutlineTextColor(menu_anchor_x, menu_anchor_y+i*15,menu_current[i],c_white,c_black,1)
			
			//Is an item
			else if (i != array_length_1d(menu_current)-1){
				
				//Make item buffer
				var itembuffer = instance_create_layer(0,0,"hidden",asset_get_index(menu_current[i]));
			
				//Highlight currently selected item
				if (menu_cursor == i) OutlineTextColor(menu_anchor_x, menu_anchor_y+i*15,"> "+string(itembuffer.name)+" $"+string(itembuffer.price),c_white,c_black,1)
				
				//Gray everything else on the list
				else OutlineTextColor(menu_anchor_x, menu_anchor_y+i*15,"   "+string(itembuffer.name)+" $"+string(itembuffer.price),c_gray,c_black,1)
				
				instance_destroy(itembuffer);
			}
			
			//Is cancel
			else{
				//Highlight currently selected item
				if (menu_cursor == i) OutlineTextColor(menu_anchor_x, menu_anchor_y+i*15,"> Cancel",c_white,c_black,1);
		
				//Gray everything else on the list
				else OutlineTextColor(menu_anchor_x, menu_anchor_y+i*15,"   Cancel",c_gray,c_black,1)
			}
			
		}
		break;

	case itembuy_quantity:
		OutlineText(menu_anchor_x,menu_anchor_y,itembuy_quantity)
		if (menu_cursor != 0) OutlineText(menu_anchor_x,menu_anchor_y+15,menu_cursor);
		else OutlineText(menu_anchor_x,menu_anchor_y+15,"Cancel");
		break;
	
	case message:
		OutlineText(menu_anchor_x,menu_anchor_y,message);
		break;
		
	case itemsell:
			
		//Heading is always white text
		OutlineTextColor(menu_anchor_x, menu_anchor_y,menu_current,c_white,c_black,1);
		var textheight = 0;
		
		//Items loop
		for (var i = 1; i <= ds_list_size(pl.inventory)-1; i++){

			//Highlitght Current Item
			if (i == menu_cursor) {
				textheight += 15;
				var itembuffer = instance_create_layer(x, y,"hidden",asset_get_index(ds_map_find_value(ds_list_find_value(pl.inventory,i),"item")));
				OutlineTextColor(menu_anchor_x,menu_anchor_y+textheight,"> x"+string(ds_map_find_value(ds_list_find_value(pl.inventory,i),"quantity"))+" "+itembuffer.name+" $"+string(itembuffer.price),c_white,c_black,1.5);
				instance_destroy(itembuffer);
			}
			//No Highlight
			else {
				textheight += 15;
				var itembuffer = instance_create_layer(x, y,"hidden",asset_get_index(ds_map_find_value(ds_list_find_value(pl.inventory,i),"item")));
				OutlineTextColor(menu_anchor_x,menu_anchor_y+textheight,"   x"+string(ds_map_find_value(ds_list_find_value(pl.inventory,i),"quantity"))+" "+itembuffer.name+" $"+string(itembuffer.price),c_gray,c_black,1);
				instance_destroy(itembuffer);
			}
			
		}
		
		//Inventory is completely empty
		if (textheight == 0){
			textheight += 15;
			OutlineTextColor(menu_anchor_x, menu_anchor_y+textheight,"   Nigga you broke!",c_gray,c_black,1);
			broke = true;
		}
		else{
			textheight += 15;
			//Highlight currently selected item
			if (menu_cursor == ds_list_size(pl.inventory)) OutlineTextColor(menu_anchor_x, menu_anchor_y+textheight,"> Cancel",c_white,c_black,1.5);
		
			//Gray everything else on the list
			else OutlineTextColor(menu_anchor_x, menu_anchor_y+textheight,"   Cancel",c_gray,c_black,1);
			broke = false;
		}

		break;
		
	case itemsell_quantity:
		OutlineText(menu_anchor_x,menu_anchor_y,itemsell_quantity)
		if (menu_cursor != 0) OutlineText(menu_anchor_x,menu_anchor_y+15,menu_cursor);
		else OutlineText(menu_anchor_x,menu_anchor_y+15,"Cancel");
		break;

	default:
		for (var i = 0; i < array_length_1d(menu_current); i++){
			//Heading is always white text
			if (i == 0) OutlineTextColor(menu_anchor_x, menu_anchor_y+i*15,menu_current[i],c_white,c_black,1)
		
			//Highlight currently selected item
			else if (menu_cursor == i) OutlineTextColor(menu_anchor_x, menu_anchor_y+i*15,"> "+menu_current[i],c_white,c_black,1)
		
			//Gray everything else on the list
			else OutlineTextColor(menu_anchor_x, menu_anchor_y+i*15,"   "+menu_current[i],c_gray,c_black,1)
		}
		break;
}