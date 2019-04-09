/// @desc
if (other != proj_Owner) {
	other.flicker = 5;
	other.forcedir = direction
	other.forcespd = proj_knockback;
	CalcDamage(proj_Owner, other, proj_power)
	event_user(0);
	
	var txt = instance_create_layer(x, y,"Overlay",obj_feedback)
	txt.text = "-" + string(CalcDamage(proj_Owner, other, proj_power))
}