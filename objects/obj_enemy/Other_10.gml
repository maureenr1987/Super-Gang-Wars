/// @desc (begin)
Setxp(self);
RecalcStats(self);
current_hp = hp;

x_axis = 0.5;
foundnemesis = false;

if (ds_list_size(inventory) > 1) currentitem = irandom_range(1,ds_list_size(inventory)-1);
SpawnItem();

walllist = ds_list_create();