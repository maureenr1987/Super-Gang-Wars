/// @desc CreateTextBubble
/// @arg x
/// @arg y
/// @arg string

var textbubble = instance_create_layer(argument0, argument1, "Entities", obj_textbubble)
textbubble.text = argument2;
return textbubble;