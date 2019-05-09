/// @desc

// Inherit the parent event
event_inherited();

//count down till detonate
timer -= delta_time/1000;
if (timer < 0) event_user(0);
