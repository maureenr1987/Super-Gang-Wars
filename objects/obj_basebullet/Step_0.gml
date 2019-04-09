/// @description Destroy Bullet
speed = proj_speed * (delta_time/10000)/2;
proj_lifespan -= 16.6;
if (proj_lifespan <= 0) instance_destroy();