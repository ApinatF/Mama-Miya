


// PAUSED 
{
	if(state == PAUSED)
	{
		draw_set_font(MenuFont);
		draw_set_color(c_black);
		draw_set_alpha(1.0);
		draw_surface(surface, 0, 0);
		
		draw_set_alpha(0.4);
		draw_rectangle(0, 0, 2000, 2000, false);
		
		draw_set_alpha(1.0);
		draw_set_color(c_white);
		draw_set_halign(fa_center);
		draw_set_halign(fa_middle);
		draw_text(1920 / 2 , 1080 / 2," PAUSED GGEZ " );
		
		draw_set_font(playerUi);
		draw_set_color(c_white);
		draw_text(100 , (1080 / 2)-500,$"R: Restart " );
		
		draw_set_color(c_white);	
		draw_text( 150, 1020 ,$" Tab: StartGame " );
	}
}
// Player Countdown
if (isDead == true) 
{
    draw_set_font(MenuFont);
	if(room != R_Gameover)
	{
		draw_set_color(c_black);
		draw_set_alpha(1.0);
	
		//draw_surface(surface, 0, 0);
		draw_set_alpha(0.4);
		
		
		draw_rectangle(0, 0,2000 ,2000 , false);
	
		draw_set_alpha(1.0);
	}
		
		draw_set_color(c_white);
		draw_set_halign(fa_center);
		draw_set_halign(fa_middle);
		
		
		draw_text(1920 / 2 , 1080 / 2,$" Countdown " );
		draw_text(1920 / 2 , (1080 / 2)+60,$"{ dieCd }" );
		
			
}
else
{
	t_min = dieCd;
}


	







