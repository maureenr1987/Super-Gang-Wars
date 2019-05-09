/// @desc
if (repeatt > 0){
	timer -= delta_time/1000;
	
	if (timer < 0) {
		timer = 100;
		repeatt--
		var snd = audio_play_sound(use_sfx,1,false)
		audio_sound_pitch(snd,random_range(0.93,1.07))
		if (Owner.object_index == obj_player) ScreenShake(use_shake, 10);
		event_user(4)
	}
} 

if (repeatt == 1 && !m) { m = true }