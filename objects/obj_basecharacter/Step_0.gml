/// @desc Controlls/Collision/Animation
polygon = polygon_from_instance(id)
////Input or AI
if (cancontrol) event_user(1);
else {
	ResetControls(self);
}


////Movement
//Calculate movement
hsp = x_axis * walksp * (delta_time/10000);
vsp += grv * (delta_time/10000);




if (place_meeting(x, y + 1,obj_wall)) && (key_jump){
	vsp = (jmp * -1);
}

//Calculate direction player is 'facing'
/*if (x_axis != 0 || y_axis != 0){
	var facepoint = point_direction(0,0,x_axis,y_axis);
	if (facepoint <= 45 || facepoint >= 315) && (x_axis >= 0.3) face = 0; else if (facepoint >= 135 && facepoint <= 225 && x_axis <= -0.3) face = 180;
	if (facepoint >= 225 && facepoint <= 315) face = 270; else if (facepoint >= 45 && facepoint <= 135) face = 90;
}  else if (image_xscale = 1) face = 0; else face = 180;*/



if (x_cam_axis == 0 && y_cam_axis == 0){
	if (x_axis >= 0.8) face = 0; else if (x_axis <= -0.8) face = 180; else if (image_xscale = 1) face = 0; else face = 180;
	if (y_axis > 0.8) face = 270; else if (y_axis < -0.8) face = 90;
} else {
	if (sign(x_cam_axis) >= 0.8) face = 0; else if (sign(x_cam_axis) <= -0.8) face = 180; else if (image_xscale = 1) face = 0; else face = 180;
	if (sign(y_cam_axis) > 0.8) face = 270; else if (sign(y_cam_axis) < -0.8) face = 90;
}


/*
////Is the Player Visible?
var val = 0;
for (var i=0; i <= 32; i++){
	val += color_get_value(draw_getpixel(640,360-16+i)) + color_get_value(draw_getpixel(640-16+i,360));
}
is_visable = (val > 0);*/


//Force
if (forcespd >= 0) {
	hsp += lengthdir_x(forcespd,forcedir);
	vsp += lengthdir_y(forcespd,forcedir) / 10;
	//Friction
	if place_meeting(x,y+vsp,obj_wall) forcespd -= 0.4; else forcespd -= .15;
}
else forcespd = 0;


////Items
//Use/Hit current item
if (key_use1) if (instance_exists(physitem)) physitem.use1 = true;
//Hit with current item
if (key_use2) if (instance_exists(physitem)) physitem.use2 = true;
//Switch currentitem
if (key_switchnext || key_switchprev){
	if (key_switchnext) currentitem++; if (currentitem >= ds_list_size(inventory)) currentitem = 0;	
	if (key_switchprev) currentitem--; if (currentitem < 0) currentitem = ds_list_size(inventory) - 1;
	SpawnItem();
}
if instance_exists(physitem){
	var exists = false;
	for (var i=0; i<=ds_list_size(inventory)-1; i++){ if (string(object_get_name(physitem.object_index)) == ds_map_find_value(ds_list_find_value(inventory,i),"item")) exists = true;}
	if (!exists) {if (currentitem == ds_list_size(inventory)) {currentitem = ds_list_size(inventory)-1} SpawnItem()}
}

////Collision

//Ladders
if place_meeting(x, y+1, obj_ladder){
	var ladder = instance_nearest(x,y,obj_ladder)
	if (face == 90 && abs(hsp) < 3) { vsp = -5; x = ladder.x + ladder.sprite_width/2;}
	else if (face == 270 && abs(hsp) < 1) { vsp = 5; x = ladder.x + ladder.sprite_width/2;}
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


////Custom step
event_user(2);


////Animation
//Die
if (current_hp <= 0) {
	if (!dead){
		var objxp = instance_create_layer(x, y, "Player", obj_xp);
		objxp.xp = lvl * 5;
		dead = true
		cancontrol = false;
		ResetControls(self);
		instance_destroy(physitem);
	}
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

////Other Stuff
if (!dead) && (room != 0)cancontrol = true; else cancontrol = false;