
if instance_exists(obj_player){ 
	var pl = instance_nearest(x, y, obj_player);
	
	if (global.showID) && place_meeting(x,y,pl){
	
	//Check if the player has the password
	var index = ds_list_find_index(pl.passwordlist,password);
	if (index != -1 && sprite_index != Spr_Trigger) {
		sprite_index = Spr_Trigger;
		//Feedback text
		var txt = instance_create_layer(x, y+irandom_range(0, 50),"Overlay",obj_feedback)
		txt.text = "Unlocked"
		txt.image_speed *= 0.3;
	}
	if (pl.key_interact) && (pl.cancontrol){
		//If the player does not have the password don't let them through
		if (index != -1) {
			//Next room
			switch (mode) {
				case "next":
					SlideTransition(trans_mode.next, target_room, target_x, target_y)
					break;
				case "prev":
					SlideTransition(trans_mode.prev, target_room, target_x, target_y)
					break;
				case "goto":
					SlideTransition(trans_mode.goto, target_room, target_x, target_y)
					break;
			}
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
}}