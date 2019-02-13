var pl = instance_nearest(x, y, obj_player)
if point_in_circle(pl.x,pl.y,x,y,64){
	//Check if nearest player open chest
	if (pl.key_interact) && (global.showID){
		
		with(instance_create_layer(x, y - 64, layer, obj_text)){
			text = other.text;
			length = string_length(text);
		}
		with (obj_camera){
			target = other.id;
		}
	}
	overlap = true;
}
else overlap = false;