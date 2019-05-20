///@desc change_volume
///@arg value

var type = menu_option[page];

switch(type){
	case 0: global.difficulty_preset			= argument0; break;
	case 1: global.difficulty_respawn			= !argument0; break;
	case 2: global.difficulty_apples			= argument0; break;
	case 3: global.difficulty_enemy_strength	= argument0; break;
	case 4: global.difficulty_enemy_placement	= argument0; break;
}


if (type == 0){
	switch(argument0){
		case 0: //sweet
			global.difficulty_respawn = true;
			global.difficulty_apples = 20;
			global.difficulty_enemy_strength = 0; //weak, normal, strong, tyrant
			global.difficulty_enemy_placement = 0; //uniform, random
			break;
		case 1: //mild
			global.difficulty_respawn = true;
			global.difficulty_apples = 15;
			global.difficulty_enemy_strength = 1; //weak, normal, strong, tyrant
			global.difficulty_enemy_placement = 0; //uniform, random
			break;
		case 2: //spicy
			global.difficulty_respawn = false;
			global.difficulty_apples = 15;
			global.difficulty_enemy_strength = 1; //weak, normal, strong, tyrant
			global.difficulty_enemy_placement = 0; //uniform, random
			break;
		case 3: //hot
			global.difficulty_respawn = false;
			global.difficulty_apples = 10;
			global.difficulty_enemy_strength = 2; //weak, normal, strong, tyrant
			global.difficulty_enemy_placement = 0; //uniform, random
			break;
		case 4: //wild
			global.difficulty_respawn = false;
			global.difficulty_apples = 20;
			global.difficulty_enemy_strength = 3; //weak, normal, strong, tyrant
			global.difficulty_enemy_placement = 1; //uniform, random
			break;
	}
}

var ds_grid = menu_pages[page];

//Match preset with global vars
if ( global.difficulty_respawn && global.difficulty_apples == 20 && global.difficulty_enemy_strength == 0 && global.difficulty_enemy_placement == 0) ds_grid[# 3, 0] = 0;
else if ( global.difficulty_respawn && global.difficulty_apples == 15 && global.difficulty_enemy_strength == 1 && global.difficulty_enemy_placement == 0) ds_grid[# 3, 0] = 1;
else if ( !global.difficulty_respawn && global.difficulty_apples == 15 && global.difficulty_enemy_strength == 1 && global.difficulty_enemy_placement == 0) ds_grid[# 3, 0] = 2;
else if ( !global.difficulty_respawn && global.difficulty_apples == 10 && global.difficulty_enemy_strength == 2 && global.difficulty_enemy_placement == 0) ds_grid[# 3, 0] = 3;
else if ( !global.difficulty_respawn && global.difficulty_apples == 20 && global.difficulty_enemy_strength == 3 && global.difficulty_enemy_placement == 1) ds_grid[# 3, 0] = 4;
else ds_grid[# 3, 0] = 5;

//Match menu with global vars

ds_grid[# 3, 1] = !global.difficulty_respawn;
ds_grid[# 3, 2] = global.difficulty_apples;
ds_grid[# 3, 3] = global.difficulty_enemy_strength;
ds_grid[# 3, 4] = global.difficulty_enemy_placement;