/*
if(isDead == true)
{

	with (instance_create_layer(x, y, layer, obj_e1_D))
		{
			direction = other.hitfrom ;
			hSpeed = lengthdir_x(3, direction);
			vSpeed = lengthdir_y(3, direction) - 2 ;
			if (sign(hSpeed) != 0) 
			{
			    image_xscale = sign(hSpeed) ;
			}
		}
			direction = other.hitfrom ;
			hSpeed = lengthdir_x(3, direction);
			vSpeed = lengthdir_y(3, direction) + 2 ;
			if (sign(hSpeed) != 0) 
			{
			    image_xscale = sign(hSpeed) ;
			}
	
}




