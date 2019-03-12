/// @desc

// Inherit the parent event
event_inherited();

if (Owner.key_use1) {
	if (anglecurrent*anglespeed >= anglerange) anglespeed *= -1;
	anglecurrent += anglespeed;
	image_angle = Owner.face + anglecurrent;
} 
else anglespeed = 0;