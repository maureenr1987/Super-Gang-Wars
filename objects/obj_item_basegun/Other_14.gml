/// @description (step) hit
if (hit){
	if (hitcurrent <= hitreach) {
		image_angle = Owner.face + ang;
		y += lengthdir_y(hitcurrent, Owner.face + ang); 
		x += lengthdir_x(hitcurrent, Owner.face + ang); 
		hitcurrent += hitspeed * (delta_time/100000);
	}
	else hit = false; 
}
else hitcurrent = 0;