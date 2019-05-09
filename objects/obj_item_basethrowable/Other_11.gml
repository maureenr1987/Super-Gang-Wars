/// @description (use) Throw
//throwable_
var throwable_ = instance_create_layer(x,y,"Items",throwable);

throwable_.hsp = lengthdir_x(1,Owner.face) * (1 + abs(sign(Owner.hsp)));
throwable_.vsp = throwspd_up * -1 + Owner.vsp;
throwable_.spd = throwspd_forward;
throwable_.Owner = Owner;
/*
//Recoil
x -= lengthdir_x(recoil, Owner.face);
y -= lengthdir_y(recoil, Owner.face);
Owner.forcespd = recoil;
Owner.forcedir = Owner.face -180;