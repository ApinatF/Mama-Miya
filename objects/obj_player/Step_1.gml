
if(playerHp <= 0)
{
	obj_game_manager.isDead =	true;

	with (instance_create_layer(x, y, layer, obj_player_D))
		{
			direction = other.hitfrom ;
			hSpeed = lengthdir_x(3, direction);
			vSpeed = lengthdir_y(3, direction - 2)  ;
			if (sign(hSpeed) != 0) 
			{
			    image_xscale = sign(hSpeed) ;
			}
		}
			direction = other.hitfrom ;
			hSpeed = lengthdir_x(3, direction);
			vSpeed = lengthdir_y(3, direction + 2) ;
			if (sign(hSpeed) != 0) 
			{
			    image_xscale = sign(hSpeed) ;
			}
			
			
			/*with(obj_game_manager) 
		{
			alarm_set(0, obj_game_manager.dieCd * 60);
		}*/
			obj_score_point.PHeart -= 1;
			instance_destroy(obj_EQgun);
			
			instance_destroy();
			
}

if(Immortal == true)
{
	//effect_create_below(10, 0, 0, 0, $FF0202FF & $ffffff);
	if(flash <=0)
	{
		flash += 180;
		alarm_set(2,10);
	}
	image_alpha = 0.9
	
	
}
else if (Immortal == false)
{
	image_alpha = 1;
}
			

			
			
		
			
	








