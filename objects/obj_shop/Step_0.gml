/// @desc
if instance_exists(obj_player){
	var pl = instance_nearest(x, y, obj_player);
	overlap = point_in_circle(pl.x,pl.y,x,y,64);
	
	if (overlap && !instance_exists(oshopmenu) && global.showID){
		if (!instance_exists(otxtbbl)){
			if !gamepad_is_connected(0) otxtbbl = CreateTextBubble(x+sprite_width/2, y-30,"E");
			else otxtbbl = CreateTextBubble(x+sprite_width/2, y-30,"B");
		}
		if (pl.key_interact){
			oshopmenu = instance_create_layer(x,y,"Overlay",obj_shopmenu);
			oshopmenu.menu_controller = pl;
		}
	}
	if (instance_exists(oshopmenu) && !overlap){
		instance_destroy(oshopmenu);
	}
	if (!overlap) instance_destroy(otxtbbl);
}