///@desc change_volume
///@arg value

var type = menu_option[page];

switch(type){
	case 0: global.audio_vol_master		= argument0; break;
	case 1: global.audio_vol_music		= argument0; break;
	case 2: global.audio_vol_itemsfx	= argument0; break;
	case 3: global.audio_vol_menusfx	= argument0; break;
	case 4: global.audio_vol_othersfx	= argument0; break;
}

//Set volumes
audio_group_set_gain(audiogroup_music,		global.audio_vol_music * global.audio_vol_master,		0);
audio_group_set_gain(audiogroup_items,		global.audio_vol_itemsfx * global.audio_vol_master,		0);
audio_group_set_gain(audiogroup_gui,		global.audio_vol_menusfx * global.audio_vol_master,		0);
audio_group_set_gain(audiogroup_default,	global.audio_vol_othersfx * global.audio_vol_master,	0);
