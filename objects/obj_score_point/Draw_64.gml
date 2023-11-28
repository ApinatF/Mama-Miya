		
		
		
if(room != R_end)
{		
 // Uihup
		{ 
			
			draw_sprite(Spr_player_ui,0,(1920/2),0);
			
			draw_sprite(spr_heart,true,1700,120);
			
			
		}
	if(room != Main_Menu)
	{
	// Point		
		{
			draw_set_font(playerUi);
			draw_set_color(c_red);
			draw_set_halign(fa_left);
			draw_set_halign(fa_top);
			draw_text(50 , 140 ,$"Kcal:{point}" ); 
		}
	
	// playerHeart
		{ 
			draw_set_font(playerUi);
			draw_set_color(c_red);
			draw_set_halign(fa_center);
			draw_set_halign(fa_top);
			draw_text( 1750, 140 ,$"X {PHeart} " );
		}
		
		{
			draw_set_font(playerUi);
			draw_set_color(c_white);	
			draw_text( 1600, 1020 ,$" Esc: MenuGame " );
			
			draw_set_color(c_white);	
			draw_text( 0, 1020 ,$" Tab: PauseGame " );
		
		}
		
		
	}
}
		
		





