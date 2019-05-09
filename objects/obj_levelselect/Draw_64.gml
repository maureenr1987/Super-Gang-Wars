/// @desc
var oldw = display_get_gui_width();
var oldh = display_get_gui_height();
display_set_gui_size(640,360);
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
if (level_selected == 1) draw_sprite(spr_menu_frame,0,w*0.5-110,h*0.8+20); 
else draw_sprite(spr_menu_frame,1,w*0.5-110,h*0.8+18);

if (level_selected == 2) draw_sprite(spr_menu_frame_dm,0,w*0.5,h*0.8+20); 
else draw_sprite(spr_menu_frame_dm,1,w*0.5,h*0.8+18);

if (level_selected == 3) draw_sprite(spr_menu_frame,0,w*0.5+110,h*0.8+20); 
else draw_sprite(spr_menu_frame,1,w*0.5+110,h*0.8+18);

if (level_selected == 4) draw_sprite(spr_menu_frame,0,w*0.5-110,h*0.5+20); 
else draw_sprite(spr_menu_frame,1,w*0.5-110,h*0.5+18);

if (level_selected == 5) draw_sprite(spr_menu_frame,0,w*0.5,h*0.5+20); 
else draw_sprite(spr_menu_frame,1,w*0.5,h*0.5+18);

if (level_selected == 6) draw_sprite(spr_menu_frame,0,w*0.5+110,h*0.5+20); 
else draw_sprite(spr_menu_frame,1,w*0.5+110,h*0.5+18);
	
if (level_selected == 7) draw_sprite(spr_menu_frame,0,w*0.5-110,h*0.2+20); 
else draw_sprite(spr_menu_frame,1,w*0.5-110,h*0.2+18); 

if (level_selected == 8) draw_sprite(spr_menu_frame,0,w*0.5,h*0.2+20); 
else draw_sprite(spr_menu_frame,1,w*0.5,h*0.2+18);

if (level_selected == 9) draw_sprite(spr_menu_frame,0,w*0.5+110,h*0.2+20); 
else draw_sprite(spr_menu_frame,1,w*0.5+110,h*0.2+18);
#endregion

#region Draw level name
switch(level_selected){
	case 1: level_name = "Capone's Hideout"  break;
	case 2: level_name = "Dragon's Prison" break;
	case 3: level_name = "Franky's Lab" break;
	
	default: level_name = "???" break;
}

//Draw Level Name
DrawSetText(c_dkgray,font_menu,fa_center,fa_top);
draw_text_transformed(w*0.5+3,-13,level_name,2,2,0)
draw_set_color(c_white);
draw_text_transformed(w*0.5,-15,level_name,2,2,0)

#endregion

//Set GUI size back to normal
display_set_gui_size(oldw,oldh)

#region Draw the difficulty menu
if (menu_current == 2){
	DrawSetText(c_white,font_menu,fa_left,fa_top);
	draw_text(10,20,"Difficulty");
	for (var i=1; i < array_length_1d(menu); i++){
		if (i == menu_cursor) draw_text(10,i*20+21,"> " + menu[i]);
		else  draw_text(10,i*20+20,"   " + menu[i]);
	}
}
#endregion


