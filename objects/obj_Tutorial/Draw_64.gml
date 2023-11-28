
if (OpenTutorial == true)
		{
			draw_set_color(c_black);
			draw_set_alpha(0.4);
			draw_rectangle(0, 0, 2000, 2000, false);
	
	
			draw_set_alpha(1.0);
			draw_set_font(Ss_f);
			draw_set_color(c_aqua);
			draw_set_halign(fa_right);
			draw_set_halign(fa_middle);
			draw_text(600 , 400 ,$" Move with arrow keys or 'A' & 'D'  " );
			draw_text(600 , 500 ,$" Press the spacebar to jump " );
			draw_text(600 , 600 ,$" The gun's target follows the mouse arrow. " );
			draw_text(600 , 700 ,$" Shoot with mouse Left click  " );
			draw_text(600 , 800 ,$" The upper left corner will show  " );
			draw_text(600 , 900 ,$" 1. Number of bullets  " );
			draw_text(600 , 1000 ,$" 2. Number of calories(score)  " );
		
			draw_text(1500 , 400 ,$"The upper right corner will show" );
			draw_text(1500 , 500 ,$"The number of hearts  " );
			draw_text(1500 , 600 ,$"when dying will be -1." );
			draw_text(1500 , 700 ,$"When remaining 0, 'GameOver'  " );
		
			draw_set_color(c_white);
			draw_text(1500 , 1000 ,$"Esc : MENU GAME " );	
	
		}






