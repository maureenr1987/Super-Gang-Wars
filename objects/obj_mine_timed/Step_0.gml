//Vertical Collision
if (place_meeting(x,y+vsp,obj_wall)){
	while(!place_meeting(x, y + sign(vsp), obj_wall)){
		y = y + sign(vsp);
	}
	vsp = 0;
}
y += vsp;

time -= delta_time/1000;

if (time <= 0) event_user(0);