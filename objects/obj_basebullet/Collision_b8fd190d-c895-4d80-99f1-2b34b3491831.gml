/// @description 
if (other != Owner) {
	with (other){
		flicker = 5;
		forcedir = other.Owner.face;
		forcespd = 6;
		current_hp -= CalcDamage_satk(other.Owner, self, other.bullet_power)
	}
}
event_user(0);