/// @desc
if (room == 0) audio_stop_all();

switch(room){
	case rm_Menu:
		new_current_music = emptysound;
		break;
	
	case rm_jail_1_cell:
	case rm_jail_2_longhall:
	case rm_jail_3_ladder:
	case rm_jail_4:
		new_current_music = Devil_Dragon_Tatoo___Danger_Way;
		break
	
	
}

if (new_current_music != current_music) {
	audio_stop_sound(current_audio_playing);
	current_music = new_current_music;
	current_audio_playing = audio_play_sound(current_music,500,true);
}