

if( room == Main_Menu || room == M01 || room == M02)
{
	
	audio_play_sound(S_BG_01, 2, true);
}
else if( room == M_Boss)
{
	
	audio_play_sound(S_Boss_room, 2, true);
}


if( room == R_Gameover  )
{
	audio_play_sound(Your_D, 2, false);
}

if( room == R_end  )
{
	audio_play_sound(S_endgame, 2, false);
}







