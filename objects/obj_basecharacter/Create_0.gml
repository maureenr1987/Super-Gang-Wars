/*
Event User 0 - Create
Event User 1 - Input
Event User 2 - Step
Event_User 3 - Dead
*/

global.showID = true;

#region Reset controls
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
#endregion

#region First middle and last name
if (name == "random") RandomizeID();
else {
	firstname = name;
	middlename = "";
	lastname = "";
}
#endregion

#region Set level and other stats
Setxp(id)
RecalcStats(id)
current_hp = hp;
#endregion

#region Random shizz
//Damage flicker
flicker = 0;

//Character is alive
dead = false;

//Character is allowed to move
cancontrol = true;

//Random money start
currency = irandom_range(lvl*10,lvl*20);

//String is for automating the getting of sprites in animation
sprite = string_delete(sprite_get_name(sprite_index),string_length(sprite_get_name(sprite_index))-3,4);
#endregion

#region Set up inventory
//Create empty inventory
inventory = ds_list_create();
ds_list_add(inventory, CreateItemDS("obj_baseitem",1));
ds_list_mark_as_map(inventory,0);

//Reset item related stuff
current_item_out = 1;
current_item = 0;
current_item_1 = 0;
current_item_2 = 0;
current_item_delay_1 = 0;
current_item_delay_2 = 0;

physitem = emptyobj;
SpawnItem();

//Give Start item if character has one
if (startitem == "random") AddToInventory(global.inv[irandom(array_length_1d(global.inv)-1)],1,self);
else if (startitem != "noone") AddToInventory(startitem,1,self);
#endregion

////Custom create
event_user(0);