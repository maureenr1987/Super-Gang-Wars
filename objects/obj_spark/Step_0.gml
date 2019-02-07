image_alpha -= lifespan * (delta_time/10000);
speed = spd * (delta_time/10000);

y += grv + 1 - (image_alpha * 3);

if (image_alpha <= 0) instance_destroy();
