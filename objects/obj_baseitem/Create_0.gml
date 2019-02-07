/// @description Setup
/*
Event User 0 - Create
Event User 1 - Use
Event User 2 - Hit
Event User 3 - Use Step
Event User 4 - 
*/

//Set up
CurrentDelay = 0;
Use = false;
Hit = false;
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
