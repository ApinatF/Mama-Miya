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



