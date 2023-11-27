
if (isDead == true && alarm[2] <=0 ) 
{		
	if (room == R_Gameover)
	{
		
		alarm_set(2,1)
		
		
	}
	else 
	{
		alarm_set(1,1);
		alarm_set(0,dieCd* 60);
	}
	
}
else if (isDead == false)
{
	dieCd = 3;
}

if(t_min <= 0)
{
	t_min = 0;
}
	
	
