/// @description Destroy Bullet

image_alpha = 1 - (image_index/20);
image_xscale += spd/40+0.1;
image_yscale += spd/40+0.1;
speed = spd * (delta_time/10000);
if (image_alpha <= 0) instance_destroy();