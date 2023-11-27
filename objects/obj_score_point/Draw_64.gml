		
		
		
		
 // Uihup
		{ 
			
			draw_sprite(Sprite7,0,(1920/2),0);
			
			draw_sprite(spr_heart,true,1700,120);
			
			
		}
		
// Point		
	{
		draw_set_font(playerUi);
		draw_set_color(c_red);
		draw_set_halign(fa_left);
		draw_set_halign(fa_top);
		draw_text(50 , 140 ,$"Calories:{point}" ); 
	}
	
// playerHeart
	{ 
		draw_set_font(playerUi);
		draw_set_color(c_white);
		draw_set_halign(fa_center);
		draw_set_halign(fa_top);
		draw_text( 1750, 140 ,$"X {PHeart} " );
	}
		
		





