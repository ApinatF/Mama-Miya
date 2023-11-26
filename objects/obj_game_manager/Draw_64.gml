
layer_sequence_create("ins_Player",0,0,Seq_PlayerHup)

// PAUSED 
{
	if(state = PAUSED)
	{
		draw_set_font(MenuFont);
		draw_set_color(c_black);
		draw_set_alpha(1.0);
		draw_surface(surface, 0, 0);
		
		draw_set_alpha(0.4);
		draw_rectangle(0, 0, room_width, room_height, false);
		
		draw_set_alpha(1.0);
		draw_set_color(c_white);
		draw_set_halign(fa_center);
		draw_set_halign(fa_middle);
		draw_text(1920 / 2 , 1080 / 2," PAUSED GGEZ " );
	}
}
// Player Countdown
if (isDead = true) 
{
    draw_set_font(MenuFont);
		draw_set_color(c_black);
		draw_set_alpha(1.0);
		//draw_surface(surface, 0, 0);
		
		draw_set_alpha(0.4);
		draw_rectangle(0, 0, room_width, room_height, false);
		
		draw_set_alpha(1.0);
		draw_set_color(c_white);
		draw_set_halign(fa_center);
		draw_set_halign(fa_middle);
		
		var t = "";
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
		t += string(t_mil)
		
		
		draw_text(1920 / 2 , 1080 / 2,$" Countdown " );
		draw_text(1920 / 2 , (1080 / 2)+60,$"{ t_min }" );
			
}
else
{
	t_min = dieCd;
}







