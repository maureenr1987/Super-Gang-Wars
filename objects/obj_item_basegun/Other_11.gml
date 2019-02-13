/// @description (use) Fire gun
//Bullet
var bullet = instance_create_layer(x,y,"Player",bullettype);
bullet.direction = image_angle + random_range(-miss, miss);
bullet.image_angle = bullet.direction;
bullet.lifespan = bulletlifespan;
bullet.bullet_speed = bulletspeed;
bullet.x += lengthdir_x(bulletspawnposition, Owner.face);
bullet.y += lengthdir_y(bulletspawnposition, Owner.face);
bullet.bullet_power = bullet_power;
bullet.Owner = Owner;

//Muzzle flash
var flash = instance_create_layer(x,y,"Player",obj_muzzleflash);
flash.direction = image_angle;
flash.x += lengthdir_x(bulletspawnposition, Owner.face);
flash.y += lengthdir_y(bulletspawnposition, Owner.face);
flash.image_angle = Owner.face;

//Sparks
repeat(3) {
	var spark = instance_create_layer(x + lengthdir_x(bulletspawnposition, Owner.face), y + lengthdir_y(bulletspawnposition, Owner.face), "Player", obj_spark);
	spark.direction =  Owner.face + random_range(-30, 30);
}

//Recoil
x -= lengthdir_x(recoil, Owner.face);
y -= lengthdir_y(recoil, Owner.face);
Owner.forcespd = recoil;
Owner.forcedir = Owner.face -180;