//Vertical Collision
if (place_meeting(x,y+vsp,obj_wall)){
	while(!place_meeting(x, y + sign(vsp), obj_wall)){
		y = y + sign(vsp);
	}
	vsp = 0;
}
y += vsp;

//if point_in_circle(obj_basecharacter.x, obj_basecharacter.y, x, y, 50)