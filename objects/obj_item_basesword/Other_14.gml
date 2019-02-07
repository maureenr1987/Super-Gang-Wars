/// @description (step hit) hit
if (hit){
	if (image_yscale == 1 * hitdir) { if (hitcurrent <= hitend) hit = false }
	else if (hitcurrent >= hitend) hit = false; 
	image_angle = hitcurrent;
	hitcurrent -= hitspeed * image_yscale * hitdir * (delta_time/100000);
	Itemdistancefromcenter = 25;
}
else Itemdistancefromcenter = 10;

