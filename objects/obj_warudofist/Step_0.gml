/// @description Destroy Bullet
speed = proj_speed * (delta_time/10000)/2;
proj_lifespan -= (delta_time/1000)/2;
if (proj_lifespan <= 0) instance_destroy();