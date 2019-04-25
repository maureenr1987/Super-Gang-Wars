/// @desc
otxtbbl = emptyobj;

if instance_exists(obj_player){
	var index = ds_list_find_index(obj_player.passwordlist,password);
	if (index == -1) {
		sprite_index = Spr_TriggerLocked;
	}
}