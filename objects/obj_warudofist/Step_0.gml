/// @description Destroy Bullet
speed = bullet_speed * (delta_time/10000)/2;
lifespan -= (delta_time/1000)/2;
if (lifespan <= 0) instance_destroy();