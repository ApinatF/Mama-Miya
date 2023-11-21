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






