if (place_meeting(x,y+vGravity,obj_Borigin)) 
{
    while (!place_meeting(x,y+sign(vGravity),obj_Borigin))
	{
	    y = y + sign(vGravity) ;
	}
	vGravity = 0 ;
}
y = y + vGravity ;






