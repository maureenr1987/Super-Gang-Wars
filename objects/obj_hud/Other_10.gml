/// @desc Load player info
#region Load level
	if file_exists("savedgame.sav") && instance_exists(obj_player){
		var pl = obj_player;
		var _wrapper = LoadJSONFromFile("savedgame.sav");
		var _list = _wrapper[? "ROOT"];
		var _map = _list[|0];

		pl.firstname = _map[?"firstname"];
		pl.middlename = _map[?"middlename"];
		pl.lastname = _map[?"lastname"];
		pl.gender = _map[?"gender"];
	
		pl.totalxp = _map[?"totalxp"];	
		Setxp(pl)
		RecalcStats(pl);
	}
#endregion