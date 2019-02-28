/// @desc
w = display_get_gui_width();
h = display_get_gui_height();

start = [
	"What can I do for you today?",
	"Buy",
	"Sell",
	"Exit"
];

itembuy = [
	"What item would you like to purchase?",
	"obj_item_basegun",
	"obj_item_gun2",
	"obj_item_gun3",
	"obj_item_gun4",
	"obj_item_basespear",
	"obj_item_basesword",
	"obj_item_mine_manual",
	"obj_item_mine_proximity",
	"obj_item_mine_timed",
	"obj_item_missilelauncher",
	"obj_item_lazergun",
	"Cancel"
];

itembuy_quantity = "How many would you like to purchase?";
itembuy_confirmation = [
	"Are you sure about that?",
	"Yes",
	"No"
];
itembuy_message = "Thank you for your purchase!";


itemsell = [
	"What item would you like to sell?",
	"obj_item_basegun",
	"obj_item_gun2",
	"obj_item_gun3",
	"obj_item_gun4",
	"obj_item_basespear",
	"obj_item_basesword",
	"obj_item_mine_manual",
	"obj_item_mine_proximity",
	"obj_item_mine_timed",
	"obj_item_missilelauncher",
	"obj_item_lazergun",
	"Cancel"
];

padding = 10;
menu_font = font_menu; 
menu_cursor = 1;
menu_controller = obj_basecharacter;
menu_current = start;
menu_length = array_length_1d(start);
menu_anchor_x = w-250;
menu_anchor_y = 40;