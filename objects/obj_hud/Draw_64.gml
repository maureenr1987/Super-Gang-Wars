/// @desc
if (instance_exists(obj_player)){
	var pl = obj_player;
	//Local vars
	var NAME = pl.firstname + " " + pl.middlename + " " + pl.lastname;
	var GEND =  " (" + pl.gender + ")";
	var LVL = "lvl. " + string(pl.lvl);
	var HP = "HP " + string(floor(pl.current_hp))  + " / " + string(pl.hp);
	var XP = "XP " + string(pl.currentexp) + "/" + string(pl.tonextlvl);
	
	
	
	DrawSetText(c_black,font_stats,fa_center,fa_top);
	x = 5;
	y = 0;
	
	var boxwidth = 200;
	if (boxwidth < string_width(NAME + GEND) ) boxwidth = string_width(NAME + GEND) + 5;
	
	//draw rectangle
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_roundrect_ext(x-15, y+5, x+boxwidth, y+110 , 10, 10, false);
	draw_roundrect_ext(x-15, y+5, x+boxwidth, y+110 , 10, 10, true);
	draw_set_alpha(1);
	
	//draw name
	DrawSetText(c_black,font_stats,fa_left,fa_top);
	OutlineText(x, y+10, NAME + GEND)//,c_white,c_black);
	OutlineText(x, y+30,LVL)//,c_white,c_black);
	
	//hp
	OutlineText(x, y+40,HP)//,c_white,c_black);
	draw_healthbar(x + string_width(HP)+5, y+45 , x+boxwidth-5, y+50, (pl.current_hp / pl.hp) * 100 , c_dkgray , c_red, c_lime, 0, true, true);
	
	//other stats
	OutlineText(x, y+60, "HP - " + string(pl.hp))//,c_white,c_black)
	OutlineText(x+70, y+60, "ATK - " + string(pl.atk))//,c_white,c_black)
	OutlineText(x+70, y+70, "DEF - " + string(pl.def))//,c_white,c_black)
	OutlineText(x+140, y+60, "SATK - " + string(pl.satk))//,c_white,c_black)
	OutlineText(x+140, y+70, "SDEF - " + string(pl.sdef))//,c_white,c_black)
	OutlineText(x, y+70, "SPD - " + string(pl.spd))//,c_white,c_black)
	
	//xp
	OutlineText(x, y+90,XP)//,c_white,c_black);
	draw_healthbar(x + string_width(XP)+5, y+95 , x+boxwidth-5, y+100, (pl.currentexp / pl.tonextlvl) * 100 , c_dkgray , c_yellow, c_orange, 0, true, true);

	
}
