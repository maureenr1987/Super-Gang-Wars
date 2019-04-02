/// @description 
if (other != Owner) {
	other.flicker = 5;
	other.forcedir = direction
	other.forcespd = 6;
	CalcDamage(Owner, other, flame_power)
	event_user(0);
	
	var txt = instance_create_layer(x, y,"Overlay",obj_feedback)
	txt.text = "-" + string(CalcDamage(Owner, other, flame_power))
}
