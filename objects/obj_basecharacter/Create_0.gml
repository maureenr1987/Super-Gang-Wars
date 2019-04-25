event_inherited();
polygon = polygon_from_instance(id);
/*
Event User 0 - Create
Event User 1 - Input
Event User 2 - Step
Event_User 3 - Dead
*/

global.showID = true;

//Reset controls
gamepad_set_axis_deadzone(0, 0.3);
ResetControls(self)

//Reset Movements
hsp = 0;
vsp = 0;
jmp = 9;
grv = 0.2;
face = 0;

//Reset Forces
forcespd = 0;
forcedir = 0;

//Idenity
RandomizeID(gender);

//Set level and other stats

Setxp(id)
RecalcStats(id)
current_hp = hp;

//Inventory an items
inventory = ds_list_create();
ds_list_add(inventory, CreateItemDS("obj_baseitem",1));
ds_list_mark_as_map(inventory,0);

currentitem = 0;
physitem = emptyobj;

//Thing to collide with
flicker = 0;
dead = false;
cancontrol = true;

//Random money start
currency = irandom_range(lvl*10,lvl*20)

//Visibility
is_visable = true;
colour = $000000;

//Give Start item
if (startitem == "random") AddToInventory(global.inv[irandom(array_length_1d(global.inv)-1)],1,self);
else if (startitem != "noone") AddToInventory(startitem,1,self);

////Custom create
event_user(0);


sprite = string_delete(sprite_get_name(sprite_index),string_length(sprite_get_name(sprite_index))-3,4)
