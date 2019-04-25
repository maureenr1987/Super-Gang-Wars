/// @desc
var oldw = display_get_gui_width();
var oldh = display_get_gui_height();
display_set_gui_size(640,360);
var w = display_get_gui_width();
var h = display_get_gui_height();

if (coor[0] == 1 && coor[1] == 1) draw_sprite(spr_s_frame,0,w*0.5-110,h*0.2); else draw_sprite(spr_n_frame,0,w*0.5-110,h*0.2); 
if (coor[0] == 2 && coor[1] == 1) draw_sprite(spr_s_frame,0,w*0.5,h*0.2); else draw_sprite(spr_n_frame,0,w*0.5,h*0.2);
if (coor[0] == 3 && coor[1] == 1) draw_sprite(spr_s_frame,0,w*0.5+110,h*0.2); else draw_sprite(spr_n_frame,0,w*0.5+110,h*0.2);

if (coor[0] == 1 && coor[1] == 2) draw_sprite(spr_s_frame,0,w*0.5-110,h*0.5); else draw_sprite(spr_n_frame,0,w*0.5-110,h*0.5);
if (coor[0] == 2 && coor[1] == 2) draw_sprite(spr_s_frame,0,w*0.5,h*0.5); else draw_sprite(spr_n_frame,0,w*0.5,h*0.5);
if (coor[0] == 3 && coor[1] == 2) draw_sprite(spr_s_frame,0,w*0.5+110,h*0.5); else draw_sprite(spr_n_frame,0,w*0.5+110,h*0.5);

if (coor[0] == 1 && coor[1] == 3) draw_sprite(spr_s_frame,0,w*0.5-110,h*0.8); else draw_sprite(spr_n_frame,0,w*0.5-110,h*0.8);
if (coor[0] == 2 && coor[1] == 3) draw_sprite(spr_s_dm,global.world_jail,w*0.5,h*0.8); else draw_sprite(spr_n_dm,global.world_jail,w*0.5,h*0.8);
if (coor[0] == 3 && coor[1] == 3) draw_sprite(spr_s_frame,0,w*0.5+110,h*0.8); else draw_sprite(spr_n_frame,0,w*0.5+110,h*0.8);

display_set_gui_size(oldw,oldh)

if (menu_current == 2){
	DrawSetText(c_white,font_menu,fa_left,fa_top);
	for (var i=1; i < array_length_1d(menu); i++){
		if (i == menu_cursor) draw_text(20,i*20+1,"> " + menu[i]);
		else  draw_text(20,i*20,"   " + menu[i]);
	}
}
