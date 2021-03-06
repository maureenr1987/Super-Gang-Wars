/// @description (use) fire slamethrower
//flame 
var flame = instance_create_layer(x,y,"items",obj_flame);

flame.Owner = Owner;
flame.x += lengthdir_x(flamespawnposition+anglecurrent, Owner.face);
flame.y += lengthdir_y(flamespawnposition+anglecurrent, Owner.face);
flame.spd = random_range(flame_speed-2,flame_speed+2);
flame.image_angle = Owner.face + anglecurrent;
flame.direction = Owner.face + anglecurrent + random_range(-miss, miss);
flame.flame_power = flame_power;


//Recoil
x -= lengthdir_x(recoil, Owner.face);
y -= lengthdir_y(recoil, Owner.face);
Owner.forcespd = recoil;
Owner.forcedir = Owner.face -180;

if (Owner.current_item_delay_1 <= -50 && Owner.current_item_delay_2 <= -50 && Owner.key_use_1) {
	anglecurrent = random_range(anglerange-1,-anglerange+1);
	anglespeed = choose(1, -1);
}