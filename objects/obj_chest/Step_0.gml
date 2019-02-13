/// @desc
if (!opened){
var pl = instance_nearest(x, y, obj_player)
if point_in_circle(pl.x,pl.y,x,y,64){
	//Check if nearest player open chest
	if (pl.key_interact){
		
		//Add to inventory
		AddToInventory(content, content_quantity, pl)
		
		//Feedback text
		var txt = instance_create_layer(x, y+irandom_range(0, 50),"Overlay",obj_feedback)
		txt.text = "+" + string(content_quantity) + " " + content;
		txt.image_speed *= 0.3;
		opened = true;
	}
	overlap = true;
}
else overlap = false;
}
if (!opened) image_index = 0; else image_index = 1;