/// @desc Open

image_speed = 1;

if (image_index > image_number-1){
	image_speed = 0; 
	instance_destroy(wall);
}