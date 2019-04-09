/// @desc (input)
////AI
var nextx = x + x_axis * walksp * delta_time/10000;

//Turn around on wall
if place_meeting(nextx, y, obj_wall){
	x_axis *= -1
}

//Turn around on ledge
if !place_meeting(nextx, y + 30, obj_wall) && place_meeting(x, y + 30, obj_wall){
	x_axis *= -1
}

// Check if nemesis exists
if instance_exists(nemesis){

	//Find nearest instance of nemesis
	var c_nemesis = instance_nearest(x,y,nemesis);	
	var c_nemesis_dir = point_direction(x, y, c_nemesis.x, c_nemesis.y);
	
	//Only look for the enemy if they haven't been found
	if (!foundnemesis){
		//Check if the nemesis is a character and then if they're visible.
		if (object_get_parent(c_nemesis.object_index) == obj_basecharacter) if (c_nemesis.is_visable) {
		
			//Check if nemesis is within 15 degreese of enemy's facing direction
			if (c_nemesis_dir > 270) c_nemesis_dir -= 360;
			if (distance_to_object(c_nemesis) <= look_dist) && (c_nemesis_dir <= face+15) && (c_nemesis_dir >= face-15) {
			
				//Check how many obj_wall(s) are obstructing the view.
				ds_list_clear(walllist);
				collision_line_list(x,y,c_nemesis.x,c_nemesis.y,obj_wall,false,true,walllist,false);
			
				//If there is no walls the enemy is found
				if ds_list_empty(walllist) foundnemesis = true;
			}
		}
	}
	
	//The enemy is found so now eliminate him
	if (foundnemesis){
		//Check if nemesis is within a certain distance of the enemy
		if point_in_circle(c_nemesis.x, c_nemesis.y, x, y, look_dist){
		
			//Reset jump and useitem
			key_jump = false;
			key_use1 = false;
			key_use2 = false;
		
			//Take out item if it isn't out already
			if(!instance_exists(physitem)) SpawnItem();
			
			//Go in the direction of the nemesis
			
			if (l < 1){
			//If too close then back away
			if point_in_circle(c_nemesis.x, c_nemesis.y, x, y, look_dist*.33){
				y_axis = 0;
				if ( abs(lengthdir_x(2.5, c_nemesis_dir-180)) > 1.5) x_axis = sign(lengthdir_x(1, c_nemesis_dir-180)); else x_axis = 0; l = 10;
			} 
			//If at a good distance stay
			else if point_in_circle(c_nemesis.x, c_nemesis.y, x, y, look_dist*.66){
				y_axis = 0;
				x_axis = 0;
				if (abs(face-c_nemesis_dir) > 90) if (abs(lengthdir_x(2.5, c_nemesis_dir)) > 1.5) x_axis = sign(lengthdir_x(1, c_nemesis_dir)); else x_axis = 0;
			}
			//If too far away then chase
			else {
				if ( abs(lengthdir_y(2.5, c_nemesis_dir)) > 1.5) y_axis = sign(lengthdir_y(1, c_nemesis_dir)); else y_axis = 0;
				if ( abs(lengthdir_x(2.5, c_nemesis_dir)) > 1.5) x_axis = sign(lengthdir_x(1, c_nemesis_dir)); else x_axis = 0;
			}
			
			}l--;

			//Check if nemesis is within 15 degrees of where self is facing
			if (c_nemesis_dir <= face+15) && (c_nemesis_dir >= face-15) {
				key_use1 = true;		
			}
			
			//Randomly jump sometimes
			if(random(1) < 0.01 && y > c_nemesis.y) {
				key_jump = true;
			}
		
			//If there is a wall jump over it
			if place_meeting(nextx, y, obj_wall){
				key_jump = true;
			}
		
			//Jump off ledges if the player is at a higher elevation
			if !place_meeting(nextx, y + 30, obj_wall) && place_meeting(x, y + 30, obj_wall) && (random(1) < 0.01){
				key_jump = true;
			}
		}
	
		//nemesis not in sight
		else foundnemesis = false;
	}
	//nemesis not in sight
	else {
		key_use1 = false;
		key_use2 = false;
		key_jump = false;
		y_axis = 0;
		x_axis = sign(x_axis);
		//put away item
		if instance_exists(physitem) && (physitem.CurrentDelay <= 0) instance_destroy(physitem);
	}
}

