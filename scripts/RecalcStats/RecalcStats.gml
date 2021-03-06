/// @desc RecalcLevels(who)
/// @arg who
var prevlvl = argument0.lvl;
var totalxp_array = [ 0, 0, 15, 52, 122, 237, 406, 637, 942, 1326, 1800, 2369, 3041, 3822, 4719, 5737, 6881, 8155, 9564, 11111, 12800, 14632, 16610, 18737, 21012, 23437, 26012, 28737, 31610, 34632, 37800, 41111, 44564, 48155, 51881, 55737, 59719, 63822, 68041, 72369, 76800, 81326, 85942, 90637, 95406, 100237, 105122, 110052, 115015, 120001, 125000, 131324, 137795, 144410, 151165, 158056, 165079, 172229, 179503, 186894, 194400, 202013, 209728, 217540, 225443, 233431, 241496, 249633, 257834, 267406, 276458, 286328, 296358, 305767, 316074, 326531, 336255, 346965, 357812, 367807, 378880, 390077, 400293, 411686, 423190, 433572, 445239, 457001, 467489, 479378, 491346, 501878, 513934, 526049, 536557, 548720, 560922, 571333, 583539, 591882, 600000];
var tonextlvl_array = [ 0, 15, 37, 70, 115, 169, 231, 305, 384, 474, 569, 672, 781, 897, 1018, 1144, 1274, 1409, 1547, 1689, 1832, 1978, 2127, 2275, 2425, 2575, 2725, 2873, 3022, 3168, 3311, 3453, 3591, 3726, 3856, 3982, 4103, 4219, 4328, 4431, 4526, 4616, 4695, 4769, 4831, 4885, 4930, 4963, 4986, 4999, 6324, 6471, 6615, 6755, 6891, 7023, 7150, 7274, 7391, 7506, 7613, 7715, 7812, 7903, 7988, 8065, 8137, 8201, 9572, 9052, 9870, 10030, 9409, 10307, 10457, 9724, 10710, 10847, 9995, 11073, 11197, 10216, 11393, 11504, 10382, 11667, 11762, 10488, 11889, 11968, 10532, 12056, 12115, 10508, 12163, 12202, 10411, 12206, 8343, 8118, -0 ];

//Set lvl
for (var i = 1; i < array_length_1d(tonextlvl_array); i++){
	if (argument0.xp > totalxp_array[i] && argument0.xp < totalxp_array[i] + tonextlvl_array[i]) argument0.lvl = i;
}

with (argument0){
	if (argument0.object_index == obj_player){
		//Set player level and other stats
		hp =  2 * lvl + 78;
		atk = 2 * lvl + 101;
		def = 2 * lvl + 78;
		spd = 2 * lvl + 100;
	} else {
		switch (global.difficulty_enemy_strength) {
			case 0:
				hp =  lvl + 20;
				atk = lvl + 20;
				def = lvl + 20;
				spd = lvl + 20;
				break;
			case 1:
				hp =  1.5 * lvl + 40;
				atk = 1.5 * lvl + 40;
				def = 1.5 * lvl + 40;
				spd = 1.5 * lvl + 40;
				break;
			case 2:
				hp =  2 * lvl + 60;
				atk = 2 * lvl + 60;
				def = 2 * lvl + 60;
				spd = 2 * lvl + 60;
				break;
			case 3:
				hp =  2 * lvl + 80;
				atk = 2 * lvl + 80;
				def = 2 * lvl + 80;
				spd = 2 * lvl + 80;
				break;
		}
	}
	hp =  floor(hp)
	atk = floor(atk)
	def = floor(def)
	spd = floor(spd)
	
	
	if (lvl <= 100){
		totalxp = totalxp_array[lvl];
		tonextlvl = tonextlvl_array[lvl];
		currentxp = xp - totalxp;
		neededxp = totalxp + tonextlvl;
	}
	else {
		totalxp = totalxp_array[100];
		tonextlvl = tonextlvl_array[100];
		currentxp = xp - totalxp;
		neededxp = totalxp + tonextlvl;
	}
	

}

if (argument0.lvl > prevlvl){
	argument0.current_hp += (2 * argument0.lvl + 78) - (2 * prevlvl + 78);
}
