/// @desc
image_yscale = Owner.image_xscale;
image_angle = Owner.face;

//Item position
x = Owner.x + lengthdir_x(15, Owner.face);
y = Owner.y + lengthdir_y(15, Owner.face);

light[| eLight.Direction] = Owner.face;
light[| eLight.X] = x
light[| eLight.Y] = y

if (Owner.current_hp <= 0) instance_destroy();