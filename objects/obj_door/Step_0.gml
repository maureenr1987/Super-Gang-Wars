/// @desc

if instance_exists(obj_player){
/// @desc Move to next room
var pl = instance_nearest(x, y, obj_player)
overlap = point_in_circle(pl.x,pl.y,x,y,64);

if (global.showID && overlap){
	
	//Interaction
	if (pl.key_interact) && (pl.cancontrol){
		//Check if new item is already in the inventory and if it does save it's index
		var index = ds_list_find_index(pl.passwordlist,password);
		//If the player does not have the password don't let them through
		if (index != -1) {
			//Next room
			SlideTransition(trans_mode.goto, target, plx, ply)
			//SAVE GAME
			with (obj_hud){event_user(0)};
		}
		else {
			//Feedback text
			var txt = instance_create_layer(x, y+irandom_range(0, 50),"Overlay",obj_feedback)
			txt.text = "Locked"
			txt.image_speed *= 0.3;
		}
	
	}
	if !instance_exists(otxtbbl){
		if !gamepad_is_connected(0) otxtbbl = CreateTextBubble(x+sprite_width/2, y-sprite_width/2,"E");
		else otxtbbl = CreateTextBubble(x+sprite_width/2, y-sprite_width/2,"B");
	}
	
}
else instance_destroy(otxtbbl);
}