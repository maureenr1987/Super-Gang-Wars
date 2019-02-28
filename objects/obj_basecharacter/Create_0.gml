/*
Event User 0 - Create
Event User 1 - Input
Event User 2 - Step
*/

global.showID = true;

/*if gamepad_is_connected(0)*/ gamepad_set_axis_deadzone(0, 0.1);
//Reset controls
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
firstname = "Joe"
middlename = "Geena"
lastname = "Smith"
gender = "male"

//Randomize Idenity
RandomizeID(self);

//Set player level and other stats
lvl = 1;
xp = 0;
RecalcStats(self);

//Inventory an items
inventory = [
	"obj_baseitem",
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
	"obj_item_lazergun"
];

inventory_quantity = [
	1,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0
];
currentitem = 0;
physitem = obj_baseitem;

//Thing to collide with
flicker = 0;
dead = false;
cancontrol = true;

////Custom create
event_user(0);