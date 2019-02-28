/// @desc Move to next room



var pl = instance_nearest(x, y, obj_player)

overlap = point_in_circle(pl.x,pl.y,x,y,64);

if (global.showID && overlap){
	
	//Interaction
	if (pl.key_interact){
		if (other.cancontrol){
			SlideTransition(trans_mode.goto, target)
		}
	}
	if (!instance_exists(otxtbbl)){
		if !gamepad_is_connected(0) otxtbbl = CreateTextBubble(x+sprite_width/2, y-sprite_width/2,"E");
		else otxtbbl = CreateTextBubble(x+sprite_width/2, y-sprite_width/2,"B");
	}
}
else instance_destroy(otxtbbl);