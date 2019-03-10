/// @description
//Check if owner uses/hits item
if (CurrentDelay <= 0){
	if (Use) {
		event_user(1);
		var snd = audio_play_sound(use_sfx,1,false)
		audio_sound_pitch(snd,random_range(0.93,1.07))
		ScreenShake(shakeonusemagnitude, 10);
		CurrentDelay = UseDelay;
	}
	if (Hit) {
		event_user(2);
		var snd = audio_play_sound(hit_sfx,1,false)
		audio_sound_pitch(snd,random_range(0.93,1.07))
		ScreenShake(shakeonusemagnitude, 10);
		CurrentDelay = HitDelay;
	}
	Use = false;
	Hit = false;
}

//Subtract delay
CurrentDelay -= delta_time/1000;

//Custom step event
event_user(3);
event_user(4);

//Item rest/face positoin
if (Owner.hsp == 0 && CurrentDelay <= -50 && !Use && !Hit ) {
	if (Owner.face == 180 || Owner.face == 0){
		x = Owner.x;
		image_angle = Owner.face - (25 * image_yscale)
		doesdamage = false;
	}
}

//Item distance from center
else {
	x += lengthdir_x(Itemdistancefromcenter, image_angle);
	y += lengthdir_y(Itemdistancefromcenter, image_angle);
}