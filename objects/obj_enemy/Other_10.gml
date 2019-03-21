/// @desc (begin)

lvl = irandom_range(1,10);
Setxp(self);
RecalcStats(self);
current_hp = hp;

x_axis = 0.5;

//Set all item quantities to 1
for (var i = 1; i <= array_length_1d(global.inv)-1; i++){
	AddToInventory(global.inv[i],1,self)
}

currentitem = irandom_range(1,ds_list_size(inventory)-1);
SpawnItem();
foundnemesis = false;

