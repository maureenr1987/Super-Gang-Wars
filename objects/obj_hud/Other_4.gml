/// @desc
if (room == 0) if instance_exists(obj_player) instance_destroy(obj_player);
if (room == 0) instance_create_layer(2000,2000,"Player",obj_player);


obj_player.x = target_x;
obj_player.y = target_y;
ResetControls(self)