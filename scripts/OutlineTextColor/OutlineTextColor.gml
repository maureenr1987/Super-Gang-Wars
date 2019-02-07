/// @desc OutlineText(x,y,string,colortext,coloroutline,thickness)
/// @arg x
/// @arg y
/// @arg string
/// @arg colortext
/// @arg coloroutline
/// @arg thickness

//draw_set_color(argument4);
draw_set_color(argument4);
draw_text(argument0+argument5,argument1,argument2);
draw_text(argument0-argument5,argument1,argument2);
draw_text(argument0,argument1+argument5,argument2);
draw_text(argument0,argument1-argument5,argument2);

//draw_set_color(argument3);
draw_set_color(argument3);
draw_text(argument0,argument1,argument2);