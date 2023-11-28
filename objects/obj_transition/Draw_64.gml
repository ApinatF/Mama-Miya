/*
if (!mode = TRAN_MODE.OFF) 
{
    draw_set_color(c_black);
	draw_rectangle(0, 0, w, percent * h_half, false) ;
	draw_rectangle(0, h, w, h - (percent * h_half), false) ;
}

 draw_set_color(c_white) ;
draw_text(50, 50, string(percent)) ;*/

if (room == Main_Menu) 
{
		draw_set_font(GameName);
		draw_set_color(c_white);
		draw_set_halign(fa_left);
		draw_set_halign(fa_top);
		draw_text(200 , 300 ,$" MAMA MIYA  " );
		
		
}

if (room == R_end) 
{
		
	{
		draw_set_font(GameName);
		draw_set_color(c_white);
		draw_set_halign(fa_left);
		draw_set_halign(fa_top);
		draw_text(200 , 200 ,$" Mission Complete  " );
	}
	
	{
		draw_set_font(B_font);
		draw_set_color(c_red);
		draw_set_halign(fa_center);
		draw_set_halign(fa_top);
		draw_text(200 , 400 ,$"Your Kilo Calories = {obj_score_point.point}   " );
	
	}
	
	{
		draw_set_font(B_font);
		draw_set_color(c_aqua);
		draw_set_halign(fa_center);
		draw_set_halign(fa_top);
		draw_text(800 , 600 ,$" By Khxng Me Hmi " );
		
		draw_set_font(Ss_f);
		draw_text(800 , 700 , $"Apinat       Fachaiyaphum    'Programmer' " );
		draw_text(800 , 800 , $"Natthawut Bunsithong    'Artist/Game Designer' " );
		draw_text(800 , 900 , $"Nopphon   Khongtrakul   'Sound Engineer' " );
		draw_text(800 , 1000 ,$"Kullanun   Galantakapan  'GameUX/UI/Game Designer' " );
	
	}
	
	{
		draw_set_font(B_font);
		draw_set_color(c_purple);
		draw_set_halign(fa_left);
		draw_set_halign(fa_top);
		draw_text(80 , 600 ,$" Thank you  " );
		draw_text(80 , 800 ,$" for playing  " );
	
	}
}




