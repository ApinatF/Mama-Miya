
if (isDead == true ) 
{		
	if(TR == false)
	{
		TR = true;
		alarm_set(2,60);
	}
	
	
}
else if (isDead == false)
{
	dieCd = 3;
}

if(room == R_Gameover && dieCd < 0)
{
	game_restart();
	
}
	
	
