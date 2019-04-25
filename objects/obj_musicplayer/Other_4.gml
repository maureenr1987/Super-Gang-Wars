/*/// @desc
if (room == 0) audio_stop_all();

switch(room){
	case rm_Menu:
		new_current_music = emptysound;
		break;
	
	case rm_jail_1:
	case rm_jail_2:
	case rm_jail_3:
	case rm_jail_4:
	case rm_jail_5:
	case rm_jail_6:
	case rm_jail_7:
	case rm_jail_8:
	case rm_jail_9:
		new_current_music = Devil_Dragon_Tatoo___Stealth;
		break
		
	case rm_jail_10:
		new_current_music = Devil_Dragon_Tatoo___Culmination;
		break
}

if (new_current_music != current_music) {
	audio_stop_sound(current_audio_playing);
	current_music = new_current_music;
	current_audio_playing = audio_play_sound(current_music,500,true);
}