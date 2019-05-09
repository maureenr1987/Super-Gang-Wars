/// @description (use) sword start
//Lunge
Owner.forcespd = lunge;
Owner.forcedir = Owner.face;

hit = true
hitdir *= -1;
hitcurrent = Owner.face + (random_range(-miss * 10, miss * 10) + hitangle) / 2 * image_yscale * hitdir;
hitend = Owner.face - (random_range(-miss * 10, miss * 10) + hitangle) / 2 * image_yscale * hitdir;
doesdamage = true;