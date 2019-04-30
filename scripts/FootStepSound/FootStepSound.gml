var snd = emptysound;
switch (room) {

	case rm_jail_1:
	case rm_jail_2:
	case rm_jail_3:
	case rm_jail_4:
	case rm_jail_5:
	case rm_jail_6:
	case rm_jail_7:
	case rm_jail_8:
	case rm_jail_9:
		snd = choose(snd_footstep_concrete_1,snd_footstep_concrete_2,snd_footstep_concrete_3,snd_footstep_concrete_4,snd_footstep_concrete_5,snd_footstep_concrete_6)
		break;
}
audio_play_sound(snd,100,false);