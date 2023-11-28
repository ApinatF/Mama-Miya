
if( room == !M_Boss || room == !R_end  )
{
	audio_play_sound(S_BG_01, 2, true);
}
if( room == M_Boss || room == R_end || room == R_Gameover  )
{
	audio_stop_sound(S_BG_01);
}






