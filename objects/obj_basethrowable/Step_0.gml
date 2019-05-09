/// @desc
image_angle = 0;

vsp += 0.3
spd -= 0.02;
if (spd <= 0) spd = 0;

if (abs(hsp) <= 0) hsp = 0;

//Horizantal Collision
if place_meeting(x + hsp, y, obj_wall){
	while(!place_meeting(x + sign(hsp), y, obj_wall)){
		x = x + sign(hsp);
	}
	hsp *= -1;
}
x += hsp * spd;

//Vertical Collision
if (place_meeting(x,y+vsp,obj_wall)){
	while(!place_meeting(x, y + sign(vsp), obj_wall)){
		y = y + sign(vsp);
	}
	vsp *= -1 * 0.5
}
y += vsp;

if !place_meeting(x,y+vsp,obj_wall) ang -= hsp*(delta_time/3000)*spd;
else ang -= hsp*(delta_time/10000)*spd;

image_angle = ang;

