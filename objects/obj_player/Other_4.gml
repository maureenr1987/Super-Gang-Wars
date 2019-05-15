/// @desc

// Inherit the parent event
event_inherited();

//Flashlight
fl = instance_create_layer(x,x,"Items",obj_flashlight);
fl.Owner = id;

lp = instance_create_layer(x,x,"Items",obj_playerlamp);
lp.Owner = id;