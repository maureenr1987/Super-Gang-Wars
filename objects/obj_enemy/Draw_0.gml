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
	draw_healthbar(x - (string_width(NAME)*0.5), y - 40 , x + (string_width(NAME)*0.5) - string_width(HP), y - 45, (current_hp / hp) * 100 , c_dkgray , c_red, c_lime, 0, true, true);

	//draw hp
	DrawSetText(c_black,font_stats,fa_right,fa_top);
	OutlineText(x + (string_width(NAME)*0.5) + 2, y-50, HP);
	
}
}
}
}