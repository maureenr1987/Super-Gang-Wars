/// @desc
if instance_exists(obj_player)
var pl = instance_nearest(x,y,obj_player)

var pl_dir = point_direction(x,y,pl.x,pl.y);

x += lengthdir_x(1,pl_dir);
y += lengthdir_y(1,pl_dir)

light[| eLight.X] = x
light[| eLight.Y] = y