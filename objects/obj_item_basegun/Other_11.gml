/// @description (use1) Fire gun
//projectile_
var projectile = instance_create_layer(x,y,"Overlay",projectile_type);
projectile.direction = image_angle + random_range(-miss, miss);
projectile.image_angle = projectile.direction;
projectile.proj_lifespan = projectile_lifespan;
projectile.proj_speed = projectile_speed;
projectile.x += lengthdir_x(projectile_spawnposition, Owner.face);
projectile.y += lengthdir_y(projectile_spawnposition, Owner.face);
projectile.proj_power = projectile_power;
projectile.proj_Owner = Owner;

//Muzzle flash
var flash = instance_create_layer(x,y,"Overlay",obj_muzzleflash);
flash.direction = image_angle;
flash.x += lengthdir_x(projectile_spawnposition, Owner.face);
flash.y += lengthdir_y(projectile_spawnposition, Owner.face);
flash.image_angle = Owner.face;

//Sparks
repeat(3) {
	var spark = instance_create_layer(x + lengthdir_x(projectile_spawnposition, Owner.face), y + lengthdir_y(projectile_spawnposition, Owner.face), "Player", obj_spark);
	spark.direction =  Owner.face + random_range(-30, 30);
}

//Recoil
x -= lengthdir_x(recoil, Owner.face);
y -= lengthdir_y(recoil, Owner.face);
Owner.forcespd = recoil;
Owner.forcedir = Owner.face -180;