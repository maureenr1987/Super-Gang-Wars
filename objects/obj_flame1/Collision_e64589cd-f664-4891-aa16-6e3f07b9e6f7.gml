/// @description 

	other.flicker = 5;
	other.forcedir = direction;
	other.forcespd = 2;
	other.current_hp --;
	event_user(0);
	
	var txt = instance_create_layer(x, y,"Overlay",obj_feedback)
	txt.text = "-1"

