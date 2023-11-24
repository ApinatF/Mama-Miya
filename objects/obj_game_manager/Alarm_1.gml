/// @description Time

			
	t_mil -= 1;
	
	if(t_mil = -1) 
	{
		t_mil = 9;
		t_sec -= 1;
	}
	
	if(t_sec = -1)
	{
		t_sec = 5;
		t_min -= 1;
	}
	
	if !(t_sec = 0 && t_min = 0 && t_mil = 0)
	{
	alarm_set(1,12) 
	}







