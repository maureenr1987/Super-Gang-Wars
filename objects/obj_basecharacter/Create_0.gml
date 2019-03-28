/*
Event User 0 - Create
Event User 1 - Input
Event User 2 - Step
*/

global.showID = true;

//Reset controls
gamepad_set_axis_deadzone(0, 0.2);
ResetControls(self)

//Reset Movements
hsp = 0;
vsp = 0;
jmp = 9;
grv = 0.2;
walksp = 2;
face = 0;

//Reset Forces
forcespd = 0;
forcedir = 0;

//Idenity
firstname = "";
middlename = "";
lastname = "";
gender = "";

//Randomize Idenity
RandomizeID(self);

//Set level and other stats
lvl = 1;
xp = 0;
RecalcStats(self);
current_hp = hp;

//Inventory an items
inventory = ds_list_create();
ds_list_add(inventory, CreateItemDS("obj_baseitem",1));

currentitem = 0;
physitem = emptyobj;

//Thing to collide with
flicker = 0;
dead = false;
cancontrol = true;

////Custom create
event_user(0);

//Random money start
currency = irandom_range(lvl*10,lvl*20)