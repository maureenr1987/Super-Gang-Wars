/// @description Destroy Bullet
speed = missile_speed;
missile_speed += (missile_speed / 15) * (delta_time/10000)/2;
missile_lifespan -= 16.6;
if (missile_lifespan <= 0) instance_destroy();

//Trail
repeat(5) {
		var missiletrail = instance_create_layer(x + lengthdir_x(5, direction), y + lengthdir_y(5, direction), "Player", obj_missiletrail);
		missiletrail.direction = image_angle -180 + random_range(-3, 3);
		missiletrail.image_xscale = irandom_range(0.1,0.5);
		missiletrail.image_yscale = missiletrail.image_xscale;
}

if place_meeting(x, y, obj_wall){
	event_user(0);
}