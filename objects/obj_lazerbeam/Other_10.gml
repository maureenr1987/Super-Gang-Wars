/// @description Destroy bullet
repeat(10) {
		var spark = instance_create_layer(x + lengthdir_x(5, direction), y + lengthdir_y(5, direction), "Player", obj_spark);
		spark.direction = image_angle -180 + random_range(-30, 30);
}
instance_destroy();
audio_play_sound(snd_lazer2,1,false)