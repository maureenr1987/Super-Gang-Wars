/// @desc

// Inherit the parent event
event_inherited();

if (global.difficulty_enemy_placement) {
	instance_create_layer(x,y,"Enemy",obj_random_enemy);
	instance_destroy(physitem)
	instance_destroy();
}

switch (global.difficulty_enemy_strength) {
	case 0:
		look_angle = 15;
		break;
	case 1:
		look_angle = 30;
		break;
	case 2:
		look_angle = 50;
		break;
	case 3:
		look_angle = 70;
		break;
}