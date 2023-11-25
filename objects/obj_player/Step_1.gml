
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
	
			
			instance_destroy(obj_EQgun);
			
			instance_destroy();
			
}

if(Immortal == true)
{
	flash++;
	if(flash > 1)
	{
		image_alpha = 0.8
	}
	else
	{
		image_alpha = 0.5
		flash = -1;
	}
	
}
else
{
	image_alpha = 1;
}
			

			
			
		
			
	








