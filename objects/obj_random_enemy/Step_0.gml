/// @desc
timer++;
var randomenemy = choose(obj_warden1,obj_warden2,obj_warden3,obj_dragon_montoya,obj_mafiaenemy1,obj_mafiaenemy2,obj_mafiaenemy3,obj_al_capone)
if (timer > 5) {
	instance_create_layer(x,y,"Enemy", randomenemy);
	instance_destroy()
}