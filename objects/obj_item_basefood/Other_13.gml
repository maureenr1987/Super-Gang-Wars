/// @desc

if (repeatt > 0){
	Itempositioncenter_x = 0
	timer -= delta_time/1000;
	
	if (timer <= 0) {
		timer = 200;
		var snd = audio_play_sound(use1_sfx,1,false)
		audio_sound_pitch(snd,random_range(0.70,1.30))
	}
}
else Itempositioncenter_x = 10;