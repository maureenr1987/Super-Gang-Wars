/// @desc
switch(out){
	case c_red: 
		out = c_orange
		inx = 1
		break;
		
	case c_orange: 
		out = c_yellow 
		inx = 2
		break;
		
	case c_yellow: 
		out = c_lime 
		inx = 3
		break;
		
	case c_lime: 
		out = c_blue 
		inx = 4
		break;
		
	case c_blue: 
		out = c_purple 
		inx = 5
		break;
		
	case c_purple: 
		out = c_fuchsia 
		inx = 6
		break;	
		
	case c_fuchsia: 
		out = c_red
		inx = 0
		break;
}
clr = c_black;
/*
switch(out){
	case c_red: out = c_orange break;
	case c_orange: out = c_yellow break;
	case c_yellow: out = c_lime break;
	case c_lime: out = c_blue break;
	case c_blue: out = c_purple break;
	case c_purple: out = c_fuchsia break;	
	case c_fuchsia: out = c_red break;
}