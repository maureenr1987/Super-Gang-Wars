/// @description 
if (other != Owner) {
	other.flicker = 5;
	other.forcedir = direction
	other.forcespd = 2;
	CalcDamage(Owner, other, bullet_power,false)
	event_user(0);
	
	var txt = instance_create_layer(x, y,"Overlay",obj_feedback)
	txt.text = "-" + string(CalcDamage(Owner, other, bullet_power,false))
}