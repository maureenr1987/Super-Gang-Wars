/// @desc Controlls/Collision/Animation
////Input or AI
if (cancontrol) event_user(1);
else {
	ResetControls(id);
}

#region //Calculate Movement, Face Direction, Force and Death
//Calculate movement
hsp = sign(x_axis) * walksp * (delta_time/10000);
vsp += grv * (delta_time/10000);

//Jump
if place_meeting(x, y + 1,obj_wall) && (key_jump){
	vsp = (jmp * -1);
}
//WallJump
if place_meeting(x + hsp,y, obj_wall) && !place_meeting(x, y + 30,obj_wall) && (key_jump){
	vsp = (jmp * -1);
	forcedir = point_direction(0,0,hsp*-1,0);
	forcespd = 5;
}

//Face Direction
if (x_cam_axis == 0 && y_cam_axis == 0){
	if (x_axis >= 0.8) face = 0; else if (x_axis <= -0.8) face = 180; else if (image_xscale = 1) face = 0; else face = 180;
	if (y_axis > 0.8) face = 270; else if (y_axis < -0.8) face = 90;
} else {
	if (sign(x_cam_axis) >= 0.8) face = 0; else if (sign(x_cam_axis) <= -0.8) face = 180; else if (image_xscale = 1) face = 0; else face = 180;
	if (sign(y_cam_axis) > 0.8) face = 270; else if (sign(y_cam_axis) < -0.8) face = 90;
}
	#region //Old stuff
	//Calculate direction player is 'facing'
	/*if (x_axis != 0 || y_axis != 0){
		var facepoint = point_direction(0,0,x_axis,y_axis);
		if (facepoint <= 45 || facepoint >= 315) && (x_axis >= 0.3) face = 0; else if (facepoint >= 135 && facepoint <= 225 && x_axis <= -0.3) face = 180;
		if (facepoint >= 225 && facepoint <= 315) face = 270; else if (facepoint >= 45 && facepoint <= 135) face = 90;
	}  else if (image_xscale = 1) face = 0; else face = 180;*/#endregion
	
//Force
if (forcespd >= 0) {
	hsp += lengthdir_x(forcespd,forcedir);
	vsp += lengthdir_y(forcespd,forcedir) / 10;
	//Friction
	if place_meeting(x,y+vsp,obj_wall) forcespd -= 0.4; else forcespd -= .15;
}
else forcespd = 0;

//Death 
if (current_hp <= 0) {
	if (!dead){
		event_user(10);
		dead = true
		cancontrol = false;
		ResetControls(self);
		instance_destroy(physitem);
		timer_to_erase_corpse = 5000;
	}
}
else {
	dead = false;
	cancontrol = true;
}
if (dead && object_index != obj_player){
	timer_to_erase_corpse -= delta_time/1000;
	if (timer_to_erase_corpse <= 0) instance_destroy();
}
#endregion

#region //Switch and Use Item
//Use current item

//Set and Use the current item
if (key_use_1) && ((current_item_delay_1 <= 0) || (global.debug && object_index == obj_player)) { current_item_out = 1; current_item = current_item_1; SpawnItem(); physitem.use = true; }
if (key_use_2) && ((current_item_delay_2 <= 0) || (global.debug && object_index == obj_player)) { current_item_out = 2; current_item = current_item_2; SpawnItem(); physitem.use = true; }


//Switch currentitem
if (key_switchnext || key_switchprev){
	if (current_item_out == 1){
		if (key_switchnext) current_item_1++; if (current_item_1 >= ds_list_size(inventory)) current_item_1 = 0;
		if (key_switchprev) current_item_1--; if (current_item_1 < 0) current_item_1 = ds_list_size(inventory) - 1;
		current_item = current_item_1;
		SpawnItem()
	}
	else {
		if (key_switchnext) current_item_2++; if (current_item_2 >= ds_list_size(inventory)) current_item_2 = 0;	
		if (key_switchprev) current_item_2--; if (current_item_2 < 0) current_item_2 = ds_list_size(inventory) - 1;
		current_item = current_item_2;
		SpawnItem()
	}
}

//If the current item is on the last slot and it runs out, then move up the current item by one
if instance_exists(physitem){
	var exists = false;
	
	//Check if item exists in inventory
	for (var i=0; i<=ds_list_size(inventory)-1; i++){ if (object_get_name(physitem.object_index) == ds_map_find_value(ds_list_find_value(inventory,i),"item")) exists = true; }
	
	//If it doesn't exist then switch slots
	if (!exists && current_item == ds_list_size(inventory)) {
		if (current_item_out == 1) { current_item_1 = ds_list_size(inventory)-1; current_item = current_item_1; }
		else { current_item_2 = ds_list_size(inventory)-1; current_item = current_item_2; }
	}
	SpawnItem()
}

//Subtract current item delay
current_item_delay_1 -= delta_time/1000;
current_item_delay_2 -= delta_time/1000;

#endregion

#region //Collision

//Ladders
if place_meeting(x, y+1, obj_ladder){
	var ladder = instance_nearest(x,y,obj_ladder)
	if (sign(y_axis) == -1 && abs(hsp) < 3) { vsp = -5; x = ladder.x + ladder.sprite_width/2;}
	else if (sign(y_axis) == 1 && abs(hsp) < 1) { vsp = 5; x = ladder.x + ladder.sprite_width/2;}
	else if (abs(hsp) < 3) { vsp = 0;}
}

//Horizantal Collision
if place_meeting(x + hsp, y, obj_wall){
	while(!place_meeting(x + sign(hsp), y, obj_wall)){
		x = x + sign(hsp);
	}
	hsp = 0;
}
x += hsp;

//Vertical Collision
if (place_meeting(x,y+vsp,obj_wall)){
	while(!place_meeting(x, y + sign(vsp), obj_wall)){
		y = y + sign(vsp);
	}
	vsp = 0;
}
y += vsp;
#endregion

#region //Custom step for child objects
event_user(2);
#endregion

#region //Animation

//Die
if (current_hp <= 0) {
	sprite_index = asset_get_index(sprite + "dead");
	image_speed = 0;
	if place_meeting(x,y+30,obj_wall) image_index = 1; else image_index = 0;
} 

//Player is falling
else if(!place_meeting(x, y + 1, obj_wall)){
	sprite_index = asset_get_index(sprite + "fall");
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}

//Player Idle or Run
else {
	image_speed = x_axis * image_xscale;
	if (hsp == 0) sprite_index = asset_get_index(sprite + "idle");
	else sprite_index = asset_get_index(sprite + "run");
}
//Flip sprite
if (face == 0) image_xscale = 1; else if (face == 180) image_xscale = -1;
#endregion

#region //Footstep
if (sprite_index == asset_get_index(sprite + "run")) {
	if (image_index >= 2 && image_angle < 3 && !stepped) {
		FootStepSound()
		stepped = true;
	}
	else stepped = false;
}
#endregion