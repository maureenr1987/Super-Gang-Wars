/// @desc

// Inherit the parent event
event_inherited();

if (global.debug) && (current_hp >= 0){
	look_dist = 30;
	
	//Draw line
	if (x_axis == 0 && y_axis == 0) var facepoint = face;
	else var facepoint = point_direction(0,0,x_axis,y_axis);
	draw_set_alpha(0.7);
	draw_line_color(x,y,x+lengthdir_x(look_dist,facepoint),y+lengthdir_y(look_dist,facepoint),c_white,c_white)
	draw_set_alpha(1);
	
	//Draw line of sight cone
	draw_set_colour(c_white);
	draw_set_alpha(0.2);
	
	//15
	draw_triangle(x,y,x+lengthdir_x(look_dist,face+15),y+lengthdir_y(look_dist,face+15),x+lengthdir_x(look_dist,face),y+lengthdir_y(look_dist,face),false);
	draw_triangle(x,y,x+lengthdir_x(look_dist,face),y+lengthdir_y(look_dist,face),x+lengthdir_x(look_dist,face-15),y+lengthdir_y(look_dist,face-15),false);
	
	//30
	draw_triangle(x,y,x+lengthdir_x(look_dist,face+15),y+lengthdir_y(look_dist,face+15),x+lengthdir_x(look_dist,face+30),y+lengthdir_y(look_dist,face+30),false);
	draw_triangle(x,y,x+lengthdir_x(look_dist,face-30),y+lengthdir_y(look_dist,face-30),x+lengthdir_x(look_dist,face-15),y+lengthdir_y(look_dist,face-15),false);
	
	//45
	draw_triangle(x,y,x+lengthdir_x(look_dist,face+30),y+lengthdir_y(look_dist,face+30),x+lengthdir_x(look_dist,face+45),y+lengthdir_y(look_dist,face+45),false);
	draw_triangle(x,y,x+lengthdir_x(look_dist,face-45),y+lengthdir_y(look_dist,face-45),x+lengthdir_x(look_dist,face-30),y+lengthdir_y(look_dist,face-30),false);
	
	
	
	draw_set_alpha(1);
	
	//Draw radius
	draw_set_colour(c_white);
	draw_set_alpha(0.7);
	draw_circle(x,y,look_dist,true);
	draw_set_alpha(1);
	
	
	
	
}
