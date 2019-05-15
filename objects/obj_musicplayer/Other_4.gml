/// @desc
if (room == 0) audio_stop_all();

switch(room){
	case rm_Menu:
		new_current_music = music_night_crawler;
		break;
		
	case rm_LevelSelect:
		new_current_music = music_tenderness_134;
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
		new_current_music = music_arches_129__1_;
		break
		
	case rm_jail_10:
		new_current_music = music_PM_ATG_3_110BPM_E;
		break
		
	case rm_mafi_1:
	case rm_mafi_2:
	case rm_mafi_3:
	case rm_mafi_4:
	case rm_mafi_5:
	case rm_mafi_6:
	case rm_mafi_7:
	case rm_mafi_8:
	case rm_mafi_9:
		new_current_music = music_last_chance_103;
		break;
	case rm_mafi_10:
		new_current_music = music_PM_ATG_3_110BPM_B;
		break;
		
	case rm_1950_1:
		new_current_music = music_last_chance_103;
		break;
}

if (new_current_music != current_music) {
	audio_stop_sound(current_audio_playing);
	current_music = new_current_music;
	current_audio_playing = audio_play_sound(current_music,500,true);
}