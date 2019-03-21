/// @desc
w = display_get_gui_width();
h = display_get_gui_height();



menu_anchor_x = w-250;
	if (menu_current == itembuy_quantity || menu_current == itemsell_quantity){
		if keyboard_check_pressed(ord("W")) || gamepad_button_check_pressed(0, gp_padu) menu_cursor++; if (menu_cursor >= menu_length) menu_cursor = 0;
		if keyboard_check_pressed(ord("S")) || gamepad_button_check_pressed(0, gp_padd) menu_cursor--; if (menu_cursor < 0) menu_cursor = menu_length-1;
	}
	else {
		if keyboard_check_pressed(ord("W")) || gamepad_button_check_pressed(0, gp_padu){
			menu_cursor--; if (menu_cursor < 1) menu_cursor = menu_length-1;
		}
		if keyboard_check_pressed(ord("S")) || gamepad_button_check_pressed(0, gp_padd){
			menu_cursor++; if (menu_cursor >= menu_length) menu_cursor = 1;
		}
	}

//User confirmed currently selecter option
if (menu_controller.key_interact  || keyboard_check_pressed(vk_enter)){
	ScreenShake(4,30);
	
	//Some vars that get used a lot
	var pl = menu_controller;
	var invlength = ds_list_size(pl.inventory);

	
	//Check if the current menu is the start menu
	switch (menu_current){
		
		case start:
			switch(menu_current[menu_cursor]){
				case "Buy": ChangeMenu(itembuy, array_length_1d(itembuy),1) break;
				case "Sell": if (invlength > 0) ChangeMenu(itemsell, invlength+1,1); else { message = "Did you drop your pocket?"; menu_current = message;} break;
				case "Exit": instance_destroy(); break;
			}
			break;
			
		case itembuy:
			//User selects cancel. Take them to start
			if (menu_cursor == menu_length-1) ChangeMenu(start,array_length_1d(start),1);
			
			//User selects an item. Take them to select quantity
			else {
				//Check if controller can afford 1 of the item
				sItem = string(menu_current[menu_cursor]);
				var itembuffer = instance_create_layer(x, y,"hidden",asset_get_index(sItem));
				sPrice = itembuffer.price;
				if (itembuffer.price <= menu_controller.currency){
					//Save selected item
					ChangeMenu(itembuy_quantity,100,1);
				}
				else {
					message = "Get your broka ass outta here!"
					menu_current = message;
				}
				instance_destroy(itembuffer);
			}
			break;
			
		case itembuy_quantity:
			//User selects cancel
			if (menu_cursor == 0) ChangeMenu(start, array_length_1d(start), 1);
				
			//buy quantity menu
			else {
				sQuan = menu_cursor;
				var itembuffer = instance_create_layer(x, y,"hidden",asset_get_index(sItem));

				if (itembuffer.price*sQuan <= menu_controller.currency) ChangeMenu(itembuy_confirmation, 3, 2);
				else {
					message = "Get your broka ass outta here!"
					menu_current = message;
				}
				instance_destroy(itembuffer)
			}
			break;
			
		case itembuy_confirmation:
			//User selects no
			if (menu_cursor == 2) ChangeMenu(start, array_length_1d(start), 1);
			
			//User selects yes
			else {
				message = "Thank you for your purchase!";
				menu_current = message;
				menu_controller.currency -= sPrice*sQuan;
				AddToInventory(sItem,sQuan,menu_controller);
			}
			break;
		
		case message: ChangeMenu(start, array_length_1d(start), 1); break;
			
		case itemsell:
			//User selects cancel or has no items			
			if (menu_cursor == invlength || invlength <= 1) ChangeMenu(start, array_length_1d(start), 1);
			
			//User selects an item
			else {
				sItem = ds_map_find_value(ds_list_find_value(pl.inventory,menu_cursor),"item");
				sItemIndex = menu_cursor;
				var itembuffer = instance_create_layer(x, y,"hidden",asset_get_index(sItem));
				sPrice = itembuffer.price;
				instance_destroy(itembuffer)
				ChangeMenu(itemsell_quantity, 100, 1);
			}
			break;
			
		case itemsell_quantity:
			//User selects cancel
			if (menu_cursor == 0) ChangeMenu(start, array_length_1d(start), 1);
			
			//User selects an item
			else {
				sQuan = menu_cursor;
				if (sQuan <= ds_map_find_value(ds_list_find_value(pl.inventory,sItemIndex),"quantity")) ChangeMenu(itemsell_confirmation, 3,1)
				else {
					message = "Get your broka ass outta here!"
					menu_current = message;
				}				
			}
			break;
			
		case itemsell_confirmation:
			//User selects no
			if (menu_cursor == 2) ChangeMenu(start, array_length_1d(start), 1);
			//User selects yes
			else {
				message = "Thank you for your trash!"
				menu_current = message;
				menu_controller.currency += sPrice*sQuan;
				AddToInventory(sItem,-sQuan,menu_controller);
				
			}
			break;
	}
}
