/// @desc (step)

if (repeatt > 0){
	Itempositioncenter_x = 0
	timer -= delta_time/1000;
	
	if (timer <= 0) {
		timer = 200;
		var snd = audio_play_sound(use_sfx,1,false)
		audio_sound_pitch(snd,random_range(0.93,1.07))
		if (Owner.object_index == obj_player) ScreenShake(use_shake, 10);
	}
} 
else Itempositioncenter_x = 10;

if (repeatt == 1 && !m) {
	AddToInventory(string(object_get_name(object_index)),-1,Owner); 
	Owner.current_hp += healthplus; if (Owner.current_hp > Owner.hp) Owner.current_hp = Owner.hp;
	m = true 
}