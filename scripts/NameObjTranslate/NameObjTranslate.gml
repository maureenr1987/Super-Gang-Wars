/// @desc NameObjTranslate(string obj_item/itemname)
/// @arg string

var obj = [
	"obj_baseitem",
	"obj_item_basegun",
	"obj_item_gun2",
	"obj_item_gun3",
	"obj_item_gun4",
	"obj_item_basespear",
	"obj_item_basesword",
	"obj_item_mine_manual",
	"obj_item_mine_proximity",
	"obj_item_mine_timed",
	"obj_item_missilelauncher",
	"obj_item_lazergun"
];

var nam = [
	"",
	"Base Gun",
	"Machine Gun",
	"Blast Gun",
	"Tutorial Gun",
	"Spear",
	"Sword",
	"Manual Mine",
	"Timed Mine",
	"Proximity Mine",
	"Missile Launcher",
	"Lazer Gun"
];
var foundmatch = false;
for (var i = 0; i <= array_length_1d(obj)-1; i++){
	if (obj[i] == argument0) {return string(nam[i]); foundmatch = true;}
	if (nam[i] == argument0) {return string(obj[i]); foundmatch = true;}
}
if (!foundmatch) return argument0;