//Check if owner is trying to use the item
if (use) {
	//Use the item
	event_user(1);
	
	//Play use sound and randomize pitch
	var snd = audio_play_sound(use_sfx,1,false);
	audio_sound_pitch(snd,random_range(0.93,1.07));
	
	//Shake screen
	if (Owner.object_index == obj_player) ScreenShake(use_shake, 10);
	
	//Set delay till next use
	if (Owner.current_item_out == 1) Owner.current_item_delay_1 = use_delay; 
	else Owner.current_item_delay_2 = use_delay;
}
use = false;


//Custom step event
event_user(2);

//Item rest/face positoin
if (Owner.hsp == 0 && Owner.current_item_delay_1 <= -50 && Owner.current_item_delay_2 <= -50 && !use) {
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