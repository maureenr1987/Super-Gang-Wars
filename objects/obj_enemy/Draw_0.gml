/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

//Show Identification
if (global.showID){
if (current_hp >= 0) {
if (instance_exists(obj_player)){
if point_in_circle(obj_player.x, obj_player.y, x, y, 200) || (hp != current_hp) {
	//Local vars
	var NAME = firstname + " " + middlename + " " + lastname;
	var GEND = " (" + gender + ")";
	var LVL = "lvl. " + string(lvl);
	var EXP = "XP " + string(currentexp) + "/" + string(tonextlvl);
	var HP = string(floor(current_hp))  + " / " + string(hp);
	
	DrawSetText(c_black,font_stats,fa_center,fa_top);
	
	//draw rectangle
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_roundrect_ext(x-5-(string_width(NAME)*0.5), y - 75 , x+5+(string_width(NAME)*0.5), y - 35 , 10, 10, false);
	//drawMarker
	draw_sprite(spr_Marker, 0, x, y-35);
	draw_set_alpha(1);
	
	//draw name gender
	DrawSetText(c_black,font_stats,fa_center,fa_top);
	OutlineText(x, y-70, NAME);
	
	//draw Gender
	DrawSetText(c_black,font_stats,fa_left,fa_top);
	OutlineText(x - (string_width(NAME)*0.5) - 2, y-60, GEND);
	
	//draw level
	DrawSetText(c_black,font_stats,fa_right,fa_top);
	OutlineText(x + (string_width(NAME)*0.5) + 2, y-60, LVL);
	
	//draw Healthbar
	if (flicker > 0) draw_healthbar(x - (string_width(NAME)*0.5), y - 40 , x + (string_width(NAME)*0.5) - string_width(HP), y - 45, (current_hp / hp) * 100 , c_dkgray , c_red, c_red, 0, true, true);
	else draw_healthbar(x - (string_width(NAME)*0.5), y - 40 , x + (string_width(NAME)*0.5) - string_width(HP), y - 45, (current_hp / hp) * 100 , c_dkgray , c_red, c_lime, 0, true, true);

	//draw hp
	DrawSetText(c_black,font_stats,fa_right,fa_top);
	OutlineText(x + (string_width(NAME)*0.5) + 2, y-50, HP);
	
	
}
}
}
}

//Check if character is alive
if (global.debug) && (current_hp >= 0){
	
	//Draw line of sight cone
	if (!foundnemesis) draw_set_colour(c_yellow);
	else draw_set_colour(c_red);
	draw_set_alpha(0.1);
	draw_triangle(x,y,x+lengthdir_x(look_dist,face+15),y+lengthdir_y(look_dist,face+15),x+lengthdir_x(look_dist,face),y+lengthdir_y(look_dist,face),false);
	draw_triangle(x,y,x+lengthdir_x(look_dist,face),y+lengthdir_y(look_dist,face),x+lengthdir_x(look_dist,face-15),y+lengthdir_y(look_dist,face-15),false);
	draw_set_alpha(1);
	
	//Draw radius
	if (!foundnemesis) draw_set_colour(c_lime);
	else draw_set_colour(c_red);
	draw_set_alpha(0.5);
	draw_circle(x,y,look_dist,true);
	draw_set_alpha(1);
	
	//Draw line
	var facepoint = point_direction(0,0,x_axis,y_axis);
	draw_set_alpha(0.5);
	if (!foundnemesis) draw_line_color(x,y,x+lengthdir_x(look_dist,facepoint),y+lengthdir_y(look_dist,facepoint),c_lime,c_lime)
	else draw_line_color(x,y,x+lengthdir_x(look_dist,facepoint),y+lengthdir_y(look_dist,facepoint),c_red,c_red)
	draw_set_alpha(1);
}
