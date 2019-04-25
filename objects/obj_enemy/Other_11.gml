/// @desc (input)
////AI
var nextx = x + x_axis * walksp * delta_time/10000;

// Check if nemesis exists
if instance_exists(nemesis){

	//Find nearest instance of nemesis
	var c_nemesis = instance_nearest(x,y,nemesis);	
	var c_nemesis_dir = point_direction(x, y, c_nemesis.x, c_nemesis.y);
	
	#region //Vision
	//Only look for the nemesis if they haven't been found
	if (!foundnemesis){

		//Check if nemesis is within 15 degreese of facing direction
		if (c_nemesis_dir > 270) c_nemesis_dir -= 360;
		if (distance_to_object(c_nemesis) <= look_dist) && (c_nemesis_dir <= face+look_angle/2) && (c_nemesis_dir >= face-look_angle/2) {
			
			//Check how many obj_wall(s) are obstructing the view.
			ds_list_clear(walllist);
			collision_line_list(x,y,c_nemesis.x,c_nemesis.y,obj_wall,false,true,walllist,false);
			
			//Check if the nemesis is a character and then if they're visible.
			if (object_get_parent(c_nemesis.object_index) == obj_basecharacter) {
			
				//If there is no walls and the nemesis is visible the nemesis is found
				if ds_list_empty(walllist) && (c_nemesis.is_visable) foundnemesis = true;
			}
			else {
				//If there is no walls the nemesis is found
				if ds_list_empty(walllist) foundnemesis = true;
			}
		}
	}
			
	
	#endregion
	
	#region //Attack
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
			
			//The NPC's behavior for movement
			//If too close then back away
			if point_in_circle(c_nemesis.x, c_nemesis.y, x, y, chase_dist){
				y_axis = 0;
				if ( abs(lengthdir_x(2.5, c_nemesis_dir-180)) > 1.5) x_axis = sign(lengthdir_x(1, c_nemesis_dir-180)); else x_axis = 0;
			} 
			//If at a good distance stay
			else if point_in_circle(c_nemesis.x, c_nemesis.y, x, y, retreat_dist){
				y_axis = 0;
				x_axis = 0;
			}
			//If too far away then chase
			else {
				if ( abs(lengthdir_y(2.5, c_nemesis_dir)) > 1.5) y_axis = sign(lengthdir_y(1, c_nemesis_dir)); else y_axis = 0;
				if ( abs(lengthdir_x(2.5, c_nemesis_dir)) > 1.5) x_axis = sign(lengthdir_x(1, c_nemesis_dir)); else x_axis = 0;
			}
			
			//Look at Nemesis
			if ( abs(lengthdir_x(2.5, c_nemesis_dir)) > 1.5) x_cam_axis = sign(lengthdir_x(1, c_nemesis_dir)); else x_cam_axis = 0;
			if ( abs(lengthdir_y(2.5, c_nemesis_dir)) > 1.5) y_cam_axis = sign(lengthdir_y(1, c_nemesis_dir)); else y_cam_axis = 0;

			//Check if nemesis is within 15 degrees of where self is facing
			if point_in_triangle(c_nemesis.x,c_nemesis.y,x,y,x+lengthdir_x(look_dist,face+look_angle*0.5),y+lengthdir_y(look_dist,face+look_angle*0.5),x+lengthdir_x(look_dist,face-look_angle*0.5),y+lengthdir_y(look_dist,face-look_angle*0.5)) {
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
	#endregion
	
	#region //Wander
	//nemesis not in sight
	else {
		
		//Turn around on wall
		if place_meeting(nextx, y, obj_wall){
			x_axis *= -1
		}

		//Turn around on ledge
		if !place_meeting(nextx, y + 30, obj_wall) && place_meeting(x, y + 30, obj_wall){
			x_axis *= -1
		}
		
		//Reset to Wander
		key_use1 = false;
		key_use2 = false;
		key_jump = false;
		y_axis = 0;
		x_axis = sign(x_axis);
		x_cam_axis = 0;
		y_cam_axis = 0;
		
		//If sitting still get moving
		if (x_axis == 0) x_axis = sign(image_xscale);
		
		//Put away item
		if instance_exists(physitem) && (physitem.CurrentDelay <= 0) instance_destroy(physitem);
	}
	#endregion
}
