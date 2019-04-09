/// @desc SlideTransition(mode, targetroom)
/// @ arg Mode sets transition mode between next, restart and goto.
/// @ arg Target sets target room when using the goto mode.
/// @ arg target_x
/// @ arg target_y

obj_transition.mode = argument[0];

if (argument_count > 3){
	obj_transition.target = argument[1];
	obj_hud.target_x = argument[2];
	obj_hud.target_y = argument[3];
}