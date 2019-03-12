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
	//Check if the current menu is the start menu
	switch (menu_current){
		
		case start:
			switch(menu_current[menu_cursor]){
				case "Buy":
					menu_current = itembuy;
					menu_length = array_length_1d(itembuy);
					menu_cursor = 1;
					break;
				case "Sell":
					menu_current = itemsell;
					menu_length = array_length_1d(itemsell);
					menu_cursor = 1;
					break;
				case "Exit":
					instance_destroy();
					break;
			}
			break;
			
			
		//Check if the current menu is the buy item selection
		case itembuy:
			//User selects cancel
			if (menu_current[menu_cursor] == "Cancel"){
				menu_current = start;
				menu_length = array_length_1d(start);
				menu_cursor = 1;
			}
			//User selects an item
			else {
				menu_current = itembuy_quantity;
				menu_length = 100;
				menu_cursor = 1;
			}
			break;
			
			
		//buy item quantity select menu
		case itembuy_quantity:
			//User selects cancel
			if (menu_cursor == 0){
				menu_current = start;
				menu_length = array_length_1d(start);
				menu_cursor = 1;
			}
			//buy quantity menu
			else {
				buy_num = menu_cursor;
				menu_current = itembuy_confirmation;
				menu_length = array_length_1d(itembuy_confirmation);
				menu_cursor = 2;
			}
			break;
			
			
		case itembuy_confirmation:
			//User selects no
			if (menu_cursor == 2){
				menu_current = start;
				menu_length = array_length_1d(start);
				menu_cursor = 1;
			}
			//User selects yes
			else {
				menu_current = itembuy_message;
			}
			break;
		
		case itembuy_message:
		case itemsell_message:
			menu_current = start;
			menu_length = array_length_1d(start);
			menu_cursor = 1;
			break;
			
		case itemsell:
			//User selects cancel
			if (menu_current[menu_cursor] == "Cancel"){
				menu_current = start;
				menu_length = array_length_1d(start);
				menu_cursor = 1;
			}
			//User selects an item
			else {
				menu_current = itemsell_quantity;
				menu_length = 100;
				menu_cursor = 1;
			}
			break;
			
		case itemsell_quantity:
			//User selects cancel
			if (menu_cursor == 0){
				menu_current = start;
				menu_length = array_length_1d(start);
				menu_cursor = 1;
			}
			//User selects an item
			else {
				buy_num = menu_cursor;
				menu_current = itemsell_confirmation;
				menu_length = array_length_1d(itemsell_confirmation);
				menu_cursor = 2;
			}
			break;
			
		case itemsell_confirmation:
			//User selects no
			if (menu_cursor == 2){
				menu_current = start;
				menu_length = array_length_1d(start);
				menu_cursor = 1;
			}
			//User selects yes
			else {
				menu_current = itemsell_message;
			}
			break;
	}
}
