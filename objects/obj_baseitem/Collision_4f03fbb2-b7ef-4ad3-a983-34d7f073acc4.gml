if (other != Owner){
	if (doesdamage) {
		with (other){
			flicker = 5;
			forcedir = other.Owner.face;
			forcespd = 6;
			current_hp -= CalcDamage_atk(other.Owner, self, other.hit_atkpower);
		}
	}
	 doesdamage = false;
}