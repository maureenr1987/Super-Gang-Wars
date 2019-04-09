/// @desc (begin)
passwordlist = ds_list_create();
AddPassword("",self);


lvl = irandom_range(5,10);
Setxp(self);
RecalcStats(self);
current_hp = hp;

target_x = 0;
target_y = 0;