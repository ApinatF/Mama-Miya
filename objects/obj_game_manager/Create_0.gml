{
	
	//layer_sequence_create("ins_Player", 600, 400, Seq_PlayerHup);
	PLAYING = 0;
	PAUSED = 1;
	
	state = PLAYING;
	if(room == R_Gameover)
	{
		isDead = true;
		dieCd = 10;
		alarm_set(2,60)
	}
	else
	{
		isDead = false;
		dieCd = 3;
	}
	
	
	
	t_min = dieCd;
	t_sect = 0;
	t_mil = 0;
	
	
	cd = 0;
	TR = false;
	
	surface = surface_create(2000, 2000);
	
	
	



}








