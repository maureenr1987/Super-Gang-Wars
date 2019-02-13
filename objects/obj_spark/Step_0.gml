image_alpha = 1 - (image_index/5);
y += grv + 1 - (image_alpha * 3);
speed = spd * (delta_time/10000);
if (image_alpha <= 0) instance_destroy();
