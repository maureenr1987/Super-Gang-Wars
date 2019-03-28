
if instance_exists(obj_player){
	var pl = instance_nearest(x, y, obj_player)

	overlap = point_in_circle(pl.x,pl.y,x,y,64);
	
	
	if (global.showID && overlap){
	
		//Interaction
		if (pl.key_interact){
			var otxt = instance_create_layer(x, y-60, layer, obj_text)
			otxt.text = text;
			otxt.length = string_length(text);
		}
	
		if (!instance_exists(otxtbbl)){
			if !gamepad_is_connected(0) otxtbbl = CreateTextBubble(x, y-60,"E");
			else otxtbbl = CreateTextBubble(x, y-60,"B");
		}
	}
	else instance_destroy(otxtbbl);
}