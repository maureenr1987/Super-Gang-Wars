var dir = point_direction(x,y,obj_player.x,obj_player.y);
var len = point_distance(x,y,obj_player.x,obj_player.y);

gui_y = cam_height/2 + lengthdir_y(len,dir)
gui_x = cam_width/2 + lengthdir_x(len,dir)

draw_sprite(spr_player_idle,0,gui_x,gui_y)