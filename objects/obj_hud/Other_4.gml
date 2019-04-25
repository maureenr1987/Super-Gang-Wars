/// @desc
if (room == 0 || room == 1) {
	if instance_exists(obj_player) instance_destroy(obj_player);
	instance_create_layer(0,0,"Player",obj_player);
	event_user(0)
	audio_stop_all();
	obj_player.cancontrol = false;
} 
else {
	event_user(0)
	obj_player.cancontrol = true;
	instance_create_layer(0,0,"Overlay",obj_save);
}
ResetControls(self)

