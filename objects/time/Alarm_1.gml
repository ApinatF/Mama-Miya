/// @description Time

			
	t_mil -= 1;
	
	if(t_mil = -1) 
	{
		t_mil = 9;
		t_sect -= 1;
	}
	
	if(t_sect = -1)
	{
		t_sect = 6	;
		t_min -= 1;
	}
	if(t_min = -1)
	{
		t_min = 0;
	}
	
	if !(t_sect = 0 && t_min = 0 && t_mil = 0)
	{
	alarm_set(1,6) 
	}

/*var t = "";
		t += string(t_min);
		t += "." ;
		if (t_sect > 9)
		{
			t += ""+string(t_sect);
		}
		if (t_sect < 10)
		{
			t += "0"+string(t_sect)
		}
		t += ".";
		t += string(t_mil)*/






