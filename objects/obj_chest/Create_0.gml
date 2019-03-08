/// @desc
otxtbbl = obj_menu;
image_speed = 0;

var possiblecontent = [
	"obj_baseitem",
	"obj_item_basegun",
	"obj_item_gun2",
	"obj_item_gun3",
	"obj_item_gun4",
	"obj_item_basespear",
	"obj_item_basesword",
	//"obj_item_mine_manual",
	//"obj_item_mine_proximity",
	//"obj_item_mine_timed",
	"obj_item_missilelauncher"//,
	//"obj_item_lazergun"
];
var possiblecontent_quantity = [
	1,
	1,
	1,
	1,
	1,
	1,
	1,
	//10,
	//10,
	//10,
	1//,
	//1
];
rand = irandom_range(1,array_length_1d(possiblecontent)-1);
content = possiblecontent[rand];
content_quantity = possiblecontent_quantity[rand];
opened = false;
overlap = false;
