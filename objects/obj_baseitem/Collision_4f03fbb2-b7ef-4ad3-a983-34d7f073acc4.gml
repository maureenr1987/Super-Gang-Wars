if (other != Owner){
	if (doesdamage) {
		other.flicker = 5;
		other.forcedir = Owner.face;
		other.forcespd = 6;
		CalcDamage(Owner, other, hit_atkpower,true);
		
		var txt = instance_create_layer(x, y,"Overlay",obj_feedback)
		txt.text = "-" + string(CalcDamage(Owner, other, hit_atkpower,true))
	}
	 doesdamage = false;
}