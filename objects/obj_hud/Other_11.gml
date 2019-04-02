/// @desc LOAD GAME

if file_exists("savedgame.sav") && instance_exists(obj_player){
	var pl = obj_player;
	
	var _wrapper = LoadJSONFromFile("savedgame.sav");
	
	var _list = _wrapper[? "ROOT"];
	
	var _map = _list[|0];

	pl.firstname = _map[?"firstname"];
	pl.middlename = _map[?"middlename"];
	pl.lastname = _map[?"lastname"];
	pl.gender = _map[?"gender"];
	
	pl.lvl = _map[?"lvl"]
	pl.xp = _map[?"xp"]
	
	pl.current_hp = _map[?"currenthp"]
	
	pl.hp = _map[?"hp"];
	pl.atk = _map[?"atk"];
	pl.def = _map[?"def"];
	pl.spd = _map[?"spd"];
	
	pl.totalxp = _map[?"totalxp"];
	pl.tonextlvl = _map[?"tonextvl"];
	pl.currentxp = _map[?"currentxp"];
	pl.neededxp = _map[?"neededxp"];
	
	pl.currentitem = _map[?"currentitem"];
	RecalcStats(pl);
	
	pl.inventory = _map[?"inventory"];
	
	pl.x = _map[?"x"];
	pl.y = _map[?"y"];
	
	SlideTransition(trans_mode.goto, _map[?"room"] , _map[?"x"],_map[?"y"]);
}