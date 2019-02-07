/// @description Set item position

//Item Facing
image_yscale = Owner.image_xscale;
image_angle = Owner.face;

//Item position
x = Owner.x + lengthdir_x(Itempositioncenter_x, Owner.face * image_yscale);
y = Owner.y + lengthdir_y(Itempositioncenter_x, Owner.face) + Itempositioncenter_y;