/// @desc SlideTransition(mode, targetroom)
/// @ arg Mode sets transition mode between next, restart and goto.
/// @ arg Target sets target room when using the goto mode.
/// @ arg plx
/// @ arg ply

obj_transition.mode = argument[0];

if (argument_count > 3){
	obj_transition.target = argument[1];
	obj_player.plx = argument[2];
	obj_player.ply = argument[3];
}