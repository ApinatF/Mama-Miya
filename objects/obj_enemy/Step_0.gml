//if(obj_game_manager.state == obj_game_manager.PLAYING) {
vSpeed = vSpeed + vGravity ;

//don't walk off
if((grounded) && (afraidofheights) && (!place_meeting(x+hSpeed,y+1,obj_Borigin))&&(!Fly))
{
	hSpeed = -hSpeed;
}

// Horizontal event
if (place_meeting(x+hSpeed,y,obj_Borigin) && (!Fly)) 
{
    while (!place_meeting(x+sign(hSpeed),y,obj_Borigin))
	{
	    x = x + sign(hSpeed) ;
	}
	hSpeed = -hSpeed ;
}

if (!Fly)
{
x = x + hSpeed;
}

// Vertical event
if (place_meeting(x,y+vSpeed,obj_Borigin)) 
{
    while (!place_meeting(x,y+sign(vSpeed),obj_Borigin))
	{
	    y = y + sign(vSpeed) ;
	}
	vSpeed = 0 ;
}
y = y + vSpeed ;

//Animation
if (!place_meeting(x, y+1, obj_Borigin)) 
{
    //sprite_index = spr_e1_F_J ; // jump
	grounded = false;
	image_speed = 0 ;
	if (sign(vSpeed > 0)) 
	{
		image_index = 1;
	}
	else { image_index = 0}
}
else 
{
	grounded = true;
    image_speed = 1 ;
	if (hSpeed == 0) 
	{
	    sprite_index = spr_idle_walk ; // Idle
	}
	else 
	{
	    //sprite_index = spr_e1_walk ; // Walk
	}
}

if (hSpeed != 0) image_xscale = sign(hSpeed) ;


else image_index = 1;






