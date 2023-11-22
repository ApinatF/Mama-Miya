if(obj_game_manager.state == obj_game_manager.PLAYING) {
x = obj_player.x ;
y = obj_player.y ;

image_angle = point_direction(x, y, mouse_x, mouse_y)

firingDelay = firingDelay - 1;
recoil = max(0, recoil-1)
if ((mouse_check_button(mb_left)) && (firingDelay < 0) && !ammo <= 0 ) 
{
	recoil = setRec;
    firingDelay = setFiD;
	GG = random_range(0, 9);
		if (ammo == 1) 
		{
			
		}
		else
		{
			if(isGun <= 1)
			{
				with (instance_create_layer(x, y, "ins_Bullet", obj_bullet1)) // สร้างกระสุน
				{
				  speed = 20;
				  direction = other.image_angle + random_range(-5, 5) ;
				  image_angle = direction;
			  
				}
			}
			else if (isGun == 2)
			{
				with (instance_create_layer(x, y, "ins_Bullet", obj_bullet02)) // สร้างกระสุน
				{
				  speed = 20;
				  direction = other.image_angle + random_range(-1, 1) ;
				  image_angle = direction;
				}
				
			}
		}
		
		ammo --;
		if (ammo == 0) 
	    {
		
			sprite_index = spr_handgun ;
			ammo = infinity ;
			setFiD = 20 ;
			setRec = 2
			isGun = 0;
			
			with(obj_bullet1)
			{
				dm = 1;
			}
			
			//instance_create_layer(x, y, "ins_gun" ,obj_handgun);
			
	
		}
	}


x = x - lengthdir_x(recoil, image_angle);
y = y - lengthdir_y(recoil, image_angle);
// การหันของปืน
if (image_angle > 90) && (image_angle < 270) 
{
    image_yscale = -1 ;
}
else 
{
    image_yscale = 1 ;
}

}






