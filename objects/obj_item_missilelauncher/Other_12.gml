/// @desc (use) Fire missile
//Missile
var missile = instance_create_layer(x,y,"Player",obj_missle);
missile.direction = image_angle;
missile.image_angle = missile.direction;
missile.missile_lifespan = missile_lifespan;
missile.missile_speed = missile_speed;
missile.x += lengthdir_x(missile_spawnposition, Owner.face);
missile.y += lengthdir_y(missile_spawnposition, Owner.face);
missile.missile_power = missile_power;
missile.Owner = Owner;

//Recoil
x -= lengthdir_x(recoil, Owner.face);
y -= lengthdir_y(recoil, Owner.face);
Owner.forcespd = recoil;
Owner.forcedir = Owner.face -180;