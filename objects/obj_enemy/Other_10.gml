lvl = irandom_range(1,100);
Setxp(self);
RecalcStats(self);
current_hp = hp;

x_axis = 0.5;

//Set all item quantities to 1
for (var i = 0; i <= array_length_1d(inventory)-1; i++){ inventory_quantity[i] = 5;}

currentitem = irandom_range(1,9);
SpawnItem(self);

foundnemesis = false;