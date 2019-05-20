/// @desc
var w = display_get_gui_width();
var h = display_get_gui_height();

#region level_selected
level_selected = 0;
if (coor[0] == 1 && coor[1] == 1) level_selected = 7;
if (coor[0] == 2 && coor[1] == 1) level_selected = 8;
if (coor[0] == 3 && coor[1] == 1) level_selected = 9;

if (coor[0] == 1 && coor[1] == 2) level_selected = 4;
if (coor[0] == 2 && coor[1] == 2) level_selected = 5;
if (coor[0] == 3 && coor[1] == 2) level_selected = 6;

if (coor[0] == 1 && coor[1] == 3) level_selected = 1;
if (coor[0] == 2 && coor[1] == 3) level_selected = 2;
if (coor[0] == 3 && coor[1] == 3) level_selected = 3;
#endregion

#region Draw level tiles
//The sprites and their numbers are arranged like a number pad
/*
if (level_selected == 1) draw_sprite(spr_menu_frame_dm,0,w*0.5-110,h*0.8+20); 
else draw_sprite(spr_menu_frame_dm,1,w*0.5-110,h*0.8+18);

if (level_selected == 2) draw_sprite(spr_menu_frame_cp,0,w*0.5,h*0.8+20); 
else draw_sprite(spr_menu_frame_cp,1,w*0.5,h*0.8+18);

if (level_selected == 3) draw_sprite(spr_menu_frame_cs,0,w*0.5+110,h*0.8+20); 
else draw_sprite(spr_menu_frame_cs,1,w*0.5+110,h*0.8+18);

if (level_selected == 4) draw_sprite(spr_menu_frame,0,w*0.5-110,h*0.5+20); 
else draw_sprite(spr_menu_frame,1,w*0.5-110,h*0.5+18);

if (level_selected == 5) draw_sprite(spr_menu_frame,0,w*0.5,h*0.5+20); 
else draw_sprite(spr_menu_frame,1,w*0.5,h*0.5+18);

if (level_selected == 6) draw_sprite(spr_menu_frame,0,w*0.5+110,h*0.5+20); 
else draw_sprite(spr_menu_frame,1,w*0.5+110,h*0.5+18);
*/
if (level_selected == 7) draw_sprite(spr_menu_frame_dm,0,w*0.5-110,h*0.2+20); 
else draw_sprite(spr_menu_frame_dm,1,w*0.5-110,h*0.2+18); 

if (level_selected == 8) draw_sprite(spr_menu_frame_cp,0,w*0.5,h*0.2+20); 
else draw_sprite(spr_menu_frame_cp,1,w*0.5,h*0.2+18);

if (level_selected == 9) draw_sprite(spr_menu_frame_cs,0,w*0.5+110,h*0.2+20); 
else draw_sprite(spr_menu_frame_cs,1,w*0.5+110,h*0.2+18);

#endregion

#region Draw level name
switch(level_selected){
	case 8: var stars = global.levelcompletion_mafi;  break;
	case 7: var stars = global.levelcompletion_jail;  break;
	default: var stars = 0; break;
}
switch (stars) {
	case 0: var stars_ = ""; break;
	case 1: var stars_ = "*"; break;
	case 2: var stars_ = "**"; break;
	case 3: var stars_ = "***"; break;
	case 4: var stars_ = "****"; break;
	case 5: var stars_ = "*****"; break;
}

switch(level_selected){
	case 8: level_name = "Capone's Hideout"  break;
	case 7: level_name = "Dragon's Prison" break;
	case 9: level_name = "EmPtY r0oM" break;
	
	default: level_name = "???" break;
}

//Draw Level Name
DrawSetText(c_dkgray,font_menu,fa_center,fa_top);
draw_text_transformed(w*0.5+3,-13,level_name,1.5,1.5,0)
draw_set_color(c_white);
draw_text_transformed(w*0.5,-15,level_name,1.5,1.5,0)

draw_text_transformed(w*0.05,30,stars_,1.5,1.5,0)

#endregion

switch (level_selected){
	case 7:
		obj_player.sprite = "spr_player_jail_";
		break;
	case 8:
		obj_player.sprite = "spr_player_mafi_";
		break;
	case 9:
		obj_player.sprite = "spr_player_1950_";
		break;
}