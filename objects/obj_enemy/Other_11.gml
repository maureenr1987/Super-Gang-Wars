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
	
	//Check if nemesis is within 15 degreese of enemy's facing direction
	if (c_nemesis_dir > 270) c_nemesis_dir -= 360;
	if point_in_circle(c_nemesis.x, c_nemesis.y, x, y, look_dist) && (c_nemesis_dir <= face+15) && (c_nemesis_dir >= face-15) foundnemesis = true;
	
	if (foundnemesis){
	
		//Check if nemesis is within a certain distance of the enemy
		if point_in_circle(c_nemesis.x, c_nemesis.y, x, y, look_dist){
		
			key_jump = false;
			key_use2 = false;
		
			//Take out item
			if(!instance_exists(physitem)) SpawnItem(self);
		
			//Go in the direction of the nemesis
			if (x-8 <= c_nemesis.x && x+8 >= c_nemesis.x){
			}
			else{
				y_axis = lengthdir_y(1, c_nemesis_dir);
				x_axis = lengthdir_x(1, c_nemesis_dir);
			}
			
			//Walk fast at firts
			if (distance_to_object(c_nemesis)/look_dist >= .5) x_axis = sign(x_axis);
		
			//Check if there is a wall in the way
			if(collision_line(x,y, lengthdir_x(look_dist,face), lengthdir_y(look_dist,face), obj_wall, false, false)){
			
				//Check if nemesis is within 15 degrees of where self is facing
				if (c_nemesis_dir <= face+15) && (c_nemesis_dir >= face-15){

					//Check what item is currently in use
					switch (asset_get_index(inventory[currentitem])){
						case obj_item_basegun:
						case obj_item_gun2:
						case obj_item_gun3:
						case obj_item_gun4:
							key_use1 = true
							break;

						case obj_item_basespear:
						case obj_item_basesword:
							key_use1 = true
							break;
							
						case obj_item_mine_manual:
							//Check if manual mine has been placed
							if instance_exists(physitem.mine){

								//If it has wait for nemesis to get near it
								if collision_circle(physitem.mine.x, physitem.mine.y, 15, nemesis, false, false) && (physitem.CurrentDelay <= 0) key_use1 = true;
							}
							//place mine
							else key_use1 = true;
							break;
	
						case obj_item_mine_proximity:
						case obj_item_mine_timed:
							key_use1 = true;
							break;
					}				
				}
			}
		
			//Randomly jump sometimes
			if(random(1) < 0.01 && y > c_nemesis.y) {
				key_jump = true;
			}
		
			//If there is a wall jump over it
			if place_meeting(nextx, y, obj_wall){
				key_jump = true;
			}
		
			//Jump off ledges
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

