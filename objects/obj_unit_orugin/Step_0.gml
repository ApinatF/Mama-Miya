

vSpeed = vSpeed + vGravity ;

// Jump system
if (place_meeting(x,y+1,obj_Borigin)) && (key_jump) 
{
    vSpeed = -15 ;
}

// Horizontal event
if (place_meeting(x+hSpeed,y,obj_Borigin)) 
{
    while (!place_meeting(x+sign(hSpeed),y,obj_Borigin))
	{
	    x = x + sign(hSpeed) ;
	}
	hSpeed = 0 ;
}

x = x + hSpeed

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
    sprite_index = spr_player_jump ;
	image_speed = 0 ;
	if (sign(vSpeed > 0)) 
	{
		image_index = 1;
	}
	else { image_index = 0}
}
else 
{
    image_speed = 1 ;
	if (hSpeed == 0) 
	{
	    sprite_index = spr_player_idle ;
	}
	else 
	{
	    sprite_index = spr_player_walk ;
	}
}

if (hSpeed != 0) image_xscale = sign(hSpeed) ;






