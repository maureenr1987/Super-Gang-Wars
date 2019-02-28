/// @desc
switch (menu_current){
	
	case itembuy:
		for (var i = 0; i < array_length_1d(menu_current); i++){
			//Heading is always white text
			if (i == 0) OutlineTextColor(menu_anchor_x, menu_anchor_y+i*15,menu_current[i],c_white,c_black,1)
		
			//Highlight currently selected item
			else if (menu_cursor == i) OutlineTextColor(menu_anchor_x, menu_anchor_y+i*15,"> "+string(NameObjTranslate(menu_current[i])),c_white,c_black,1)
		
			//Gray everything else on the list
			else OutlineTextColor(menu_anchor_x, menu_anchor_y+i*15,"   "+string(NameObjTranslate(menu_current[i])),c_gray,c_black,1)
		}
		break;
		
	case itemsell:
		for (var i = 0; i < array_length_1d(menu_current)-1; i++){
			//Heading is always white text
			if (i == 0) OutlineTextColor(menu_anchor_x, menu_anchor_y+i*15,menu_current[i],c_white,c_black,1)
		
			//Highlight currently selected item
			else if (menu_cursor == i) OutlineTextColor(menu_anchor_x, menu_anchor_y+i*15,"> "+string(menu_controller.inventory_quantity[i])+" - "+string(NameObjTranslate(menu_current[i])),c_white,c_black,1)
		
			//Gray everything else on the list
			else OutlineTextColor(menu_anchor_x, menu_anchor_y+i*15,"   "+string(menu_controller.inventory_quantity[i])+" - "+string(NameObjTranslate(menu_current[i])),c_gray,c_black,1)
		}
		break;
	
	case itembuy_quantity:
		OutlineText(menu_anchor_x,menu_anchor_y,itembuy_quantity)
		if (menu_cursor != 0) OutlineText(menu_anchor_x,menu_anchor_y+15,menu_cursor);
		else OutlineText(menu_anchor_x,menu_anchor_y+15,"Cancel");
		break;
	
	case itembuy_message:
		OutlineText(menu_anchor_x,menu_anchor_y,itembuy_message);
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