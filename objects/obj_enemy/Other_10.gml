/// @desc (begin)
Setxp(self);
RecalcStats(self);
current_hp = hp;



x_axis = 0.5 * image_xscale;
foundnemesis = false;

if (ds_list_size(inventory) > 1) currentitem = irandom_range(1,ds_list_size(inventory)-1);
SpawnItem();

current_item_out = 1;
current_item = 1;
current_item_1 = 1;
current_item_2 = 2;

walllist = ds_list_create();