/// @desc

if (random(1) <= 0.2){
var flame = instance_create_layer(x,y,"Overlay",obj_flame1)
flame.spd = random_range(1,2);
flame.direction = image_angle + 90 + random_range(-5, 5);
flame.image_angle = direction;
flame.x = random_range(x,x+sprite_width)
flame.y = random_range(y,y+sprite_height)
}