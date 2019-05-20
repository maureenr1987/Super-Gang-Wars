
/// @desc
if (!global.pause) exit;

#region Nessesary vars
var w = display_get_gui_width();
var h = display_get_gui_height();

var ds_grid = menu_pages[page];
var ds_height = ds_grid_height(ds_grid);

var y_buffer = 50;
var x_buffer = 16;
var start_y = (h*0.5) - ((((ds_height-1)*0.5) * y_buffer))
if (room == 0 && page == 0) start_y = (h*0.75) - ((((ds_height-1)*0.5) * y_buffer))
var start_x = w*0.5;
#endregion

#region Draw Pause Menu "Background"
	var c = c_black;
	draw_set_alpha(0.5);
	//draw_rectangle_color(0,0,w,h,c,c,c,c, false);
	draw_set_alpha(1);
	draw_sprite_stretched(spr_vignette,0,0,0, display_get_gui_width(),display_get_gui_height());
#endregion

#region Draw Elements on left side
	DrawSetText(c_white,font_menu,fa_right,fa_middle)
	var ltx = start_x - x_buffer;
	var lty;
	var xo ;
	var yy = 0; repeat(ds_height){
		lty = start_y + (yy*y_buffer);
		c = c_black;
		o = 0;
		xo = 0;
		
		if (yy == menu_option[page]) {
			c = out;
			o = 1;
			xo = -(x_buffer/2)
		}
		
		//draw_text_color(ltx+xo,lty,ds_grid[# 0, yy], c,c,c,c ,1);
		OutlineTextColor(ltx+xo,lty,ds_grid[# 0, yy], c_black, c, o)
		yy++;
	}
#endregion

#region Draw Dividing line
	if !(room == 0 && page == 0) {
		draw_line_width_color(start_x, start_y - y_buffer, start_x, lty + y_buffer,1,c_black,out)
	}
#endregion

#region Draw elements on the right
draw_set_halign(fa_left);

var rtx = start_x + x_buffer, rty;

yy = 0; repeat(ds_height){
	rty = start_y + (yy*y_buffer);
	
	switch (ds_grid[# 1, yy]){
		case menu_element_type.shift:  
			var current_val = ds_grid[# 3, yy];
			var current_array = ds_grid[# 4, yy]
			var left_shift = "<< ";
			var right_shift = " >>";
			c = c_black;
			
			if (current_val == 0) left_shift = "";
			if (current_val == array_length_1d(ds_grid[# 4, yy])-1) right_shift = "";
			
			if (inputting && yy == menu_option[page]) c = out;
			
			draw_text_color(rtx, rty, left_shift + current_array[current_val] + right_shift ,c,c,c,c, 1)
			break;
			
		case menu_element_type.slider:
			var len = 100;
			var current_val = ds_grid[# 3, yy];
			var current_array = ds_grid[# 4, yy];
			var circle_pos = ((current_val - current_array[0]) / (current_array[1] - current_array[0]));
			c = c_black;
			
			if (inputting && yy == menu_option[page]) draw_set_color(out);
			draw_line_width(rtx, rty, rtx + len, rty, 2);
			draw_set_color(c_black);
			
			if (inputting && yy == menu_option[page]) c = out;
			
			draw_circle_color(rtx + (circle_pos*len),rty, 4, c,c, false);
			draw_text_color(rtx + (len * 1.2), rty, string(floor(circle_pos*100)) + "%", c,c,c,c, 1);
			break;
			
		case menu_element_type.toggle:
			var current_val = ds_grid[# 3, yy];
			var c1, c2;
			c = c_black;
			
			if (inputting && yy == menu_option[page]) c = out;
			
			if (current_val == 0) { c1 = c; c2 = $111111;}
			else { c1 = $111111; c2 = c;}
			
			draw_text_color(rtx, rty, "ON", c1,c1,c1,c1, 1);
			draw_text_color(rtx + 50, rty, "OFF", c2,c2,c2,c2, 1);
			break;
	}
	yy++;
}


#endregion

if (room == 0 && page == 0) draw_sprite(spr_game_title,inx,w/2,h/2-25);