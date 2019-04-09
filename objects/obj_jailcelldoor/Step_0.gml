/// @desc

if instance_exists(obj_player){
	/// @desc Move to next room
	var pl = instance_nearest(x, y, obj_player)
	overlap = point_in_circle(pl.x,pl.y,x,y,64);

	if (global.showID && overlap){
		var index = ds_list_find_index(pl.passwordlist,password);
		if (pl.key_interact && pl.cancontrol && index != -1) if (!open) open = true; else open = false;
	
		if !instance_exists(otxtbbl){
			if !gamepad_is_connected(0) otxtbbl = CreateTextBubble(x+sprite_width/2, y-sprite_width/2,"E");
			else otxtbbl = CreateTextBubble(x+sprite_width/2, y-sprite_width/2,"B");
		}
	
	}
	else {
		instance_destroy(otxtbbl); 
		open = false;
	}
}

if (open) event_user(0); else event_user(1);