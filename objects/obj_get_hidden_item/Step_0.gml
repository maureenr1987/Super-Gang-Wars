/// @desc
if instance_exists(obj_player){
	var pl = instance_nearest(x, y, obj_player);
	overlap = point_in_circle(pl.x,pl.y,x,y,64);
	
	if (overlap){
		//check if the player interacts with the chest
		if (pl.key_interact){
	
			//sfx
			audio_play_sound(snd_openchest,1,false);
	
			//Add to inventory
			AddToInventory(content, content_quantity, pl)
	
			//Feedback text
			var itembuffer = instance_create_layer(0,0,"hidden",asset_get_index(content));
			var txt = instance_create_layer(x, y+irandom_range(0, 50),"Overlay",obj_feedback)
			txt.text = "+" + string(content_quantity) + " " + itembuffer.name;
			txt.image_speed *= 0.3;
			opened = true;
			instance_destroy(itembuffer);
			
			//Destroy Sparkle
			instance_destroy();
		}
	}
}