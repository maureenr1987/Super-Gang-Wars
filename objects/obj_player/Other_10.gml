/// @desc (begin)
plx = 0;
ply = 0;

passwordlist = ds_list_create();
AddPassword("",self);


lvl = irandom_range(5,10);
Setxp(self);
RecalcStats(self);
current_hp = hp;