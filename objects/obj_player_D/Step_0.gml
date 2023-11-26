


if (done == 0)
{
	vSpeed = vSpeed + vGravity ;
	des = 3;

	// Horizontal event
	if (place_meeting(x+hSpeed,y,obj_Borigin)) 
	{
	    while (!place_meeting(x+sign(hSpeed),y-vSpeed,obj_Borigin))
		{
		    x = x + sign(hSpeed) ;
		}
		hSpeed = 0 ;
	}

	x = x + hSpeed

	// Vertical event
	if (place_meeting(x,y+vSpeed,obj_Borigin)) 
	{
		if (vSpeed > 0) 
		{
			done = 1 ;
			image_index = 1;
		}
	    while (!place_meeting(x,y+sign(vSpeed),obj_Borigin))
		{
		    y = y + sign(vSpeed) ;
		}
		vSpeed = 0 ;
	}
	y = y + vSpeed ;
	respawn_timer += 1;
    
    // หลังจาก 3 วินาที, สร้าง object ใหม่			
	alarm_set(0, obj_game_manager.dieCd * 60)
	
}







