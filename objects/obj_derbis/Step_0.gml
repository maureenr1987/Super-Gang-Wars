image_alpha -= (delta_time/1000000)*2;
speed = spd * (delta_time/10000);
size += (delta_time/1000000)
image_xscale = size;
image_yscale = size;
if (image_alpha <= 0) instance_destroy();