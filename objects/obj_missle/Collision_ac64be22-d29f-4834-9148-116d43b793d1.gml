/// @description 
if (other != Owner) {
	other.flicker = 5;
	other.forcedir = direction;
	other.forcespd = 12;
	CalcDamage(Owner, other, missile_power,false)
	
	var txt = instance_create_layer(x, y,"Overlay",obj_feedback)
	txt.text = "-" + string(CalcDamage(Owner, other, missile_power,false))
}
event_user(0);