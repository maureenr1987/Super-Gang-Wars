/// @desc (input)
////AI
var nextx = x + x_axis * walksp * delta_time/10000;

if place_meeting(nextx, y, obj_wall) {
	x_axis *= -1
}
if !place_meeting(nextx, y + 30, obj_wall) && place_meeting(x, y + 30, obj_wall){
	x_axis *= -1
}
if (instance_exists(obj_player)){
	if point_in_circle(obj_player.x, obj_player.y, x, y, 150) {
		var playerdir = point_direction(x, y, obj_player.x, obj_player.y);
		y_axis = lengthdir_y(1, playerdir);
		x_axis = lengthdir_x(1, playerdir);
		key_use = true;
		if place_meeting(nextx, y, obj_wall){
			key_jump = true;
		}
		if !place_meeting(nextx, y + 30, obj_wall) && place_meeting(x, y + 30, obj_wall) && (y_axis >= 0){
			key_jump = true;
		}
		if(!instance_exists(physitem)) SpawnItem(self);
	}
	else {
		key_use = false;
		key_jump = false;
		y_axis = 0;
		if(instance_exists(physitem)) instance_destroy(physitem);
		}
}
x_axis = sign(x_axis);