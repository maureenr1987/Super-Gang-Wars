/// @desc
other.xp += floor((other.neededxp/other.lvl)/5);
instance_destroy();
RecalcStats(other);

audio_play_sound(snd_ping,5,false);