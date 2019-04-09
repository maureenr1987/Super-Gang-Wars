/// @description (use1) MUDA! MUDA! MUDA!
//fist 
var fist = instance_create_depth(x,y,layer_get_depth("Items")-20,obj_warudofist);

var realx = lengthdir_x(24, Owner.face) + lengthdir_x(32,Owner.face + 90 * image_yscale)
var realy = lengthdir_y(24, Owner.face) + lengthdir_y(32,Owner.face + 90 * image_yscale)
fist.x += realx + random_range(lengthdir_x(-35,Owner.face + 90 * image_yscale),lengthdir_x(35,Owner.face + 90 * image_yscale)) + random_range(lengthdir_x(-35,Owner.face),lengthdir_x(35,Owner.face));
fist.y += realy + random_range(lengthdir_y(-35,Owner.face + 90 * image_yscale),lengthdir_y(35,Owner.face + 90 * image_yscale)) + random_range(lengthdir_y(-35,Owner.face),lengthdir_y(35,Owner.face));
fist.direction = point_direction(fist.x,fist.y, x+realx+lengthdir_x(250,Owner.face),y+realy+lengthdir_y(250,Owner.face)) + random_range(-5 ,5);
fist.image_yscale = image_yscale;
fist.image_angle = fist.direction;
fist.proj_Owner = Owner;

//Recoil
x += lengthdir_x(2, Owner.face);
y += lengthdir_y(2, Owner.face);
Owner.forcespd = 2;
Owner.forcedir = Owner.face;