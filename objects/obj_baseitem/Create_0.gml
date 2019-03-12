/// @description Setup
/*
Event User 0 - Create
Event User 1 - Use1
Event User 2 - Use2
Event User 3 - Step
*/

//Set up
CurrentDelay = 0;
use1 = false;
use2 = false;
Owner = obj_basecharacter;

//Item position from player
Itempositioncenter_y = 10;
Itempositioncenter_x = 5;

//Item postion from item origin
Itemdistancefromcenter = 0;

shakeonusemagnitude = 0;
doesdamage = false;

//Custom begin event
event_user(0);
