/// @desc CalcDamage(perpetrator,victim,atkpower)
/// @arg perpetrator
/// @arg victim
/// @arg atkpower
/// @arg atk/satk

if (!argument3) var damage = (2 * argument0.lvl / 5 + 2) * argument2 * argument0.atk / argument1.def / 50 + 2
else var damage = (2 * argument0.lvl / 5 + 2) * argument2 * argument0.satk / argument1.sdef / 50 + 2

damage *=  random_range(0.9, 1.1);

argument1.current_hp -= damage;

return damage;