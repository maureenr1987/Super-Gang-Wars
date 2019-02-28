/// @description Destroy Bullet
speed = bullet_speed * (delta_time/10000)/2;
lifespan -= 16.6;
if (lifespan <= 0) instance_destroy();

if place_meeting(x, y, obj_wall){
	event_user(0);
}