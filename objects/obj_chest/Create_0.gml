/// @desc
otxtbbl = obj_menu;
image_speed = 0;

var possiblecontent = global.inv;
var possiblecontent_quantity = irandom(10)

rand = irandom_range(1,array_length_1d(possiblecontent)-1);
content = possiblecontent[rand];
content_quantity = possiblecontent_quantity;
opened = false;
overlap = false;
