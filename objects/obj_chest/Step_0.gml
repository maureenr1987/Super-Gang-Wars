/// @desc

var pl = instance_nearest(x, y, obj_player);
overlap = point_in_circle(pl.x,pl.y,x,y,64);
	
if (overlap) && (!opened){
	//check if the player interacts with the chest
	if (pl.key_interact){
	
		//Add to inventory
		AddToInventory(content, content_quantity, pl)
	
		//Feedback text
		var txt = instance_create_layer(x, y+irandom_range(0, 50),"Overlay",obj_feedback)
		txt.text = "+" + string(content_quantity) + " " + content;
		txt.image_speed *= 0.3;
		opened = true;
	}

	if (global.showID && !opened){
		if (!instance_exists(otxtbbl)){
			if !gamepad_is_connected(0) otxtbbl = CreateTextBubble(x+sprite_width/2, y-30,"E");
			else otxtbbl = CreateTextBubble(x+sprite_width/2, y-30,"B");
		}
	}
}
else instance_destroy(otxtbbl);


if (!opened) image_index = 0; else image_index = 1;