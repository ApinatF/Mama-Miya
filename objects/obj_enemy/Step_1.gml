if (hp <= 0) 
{
   
	with (instance_create_layer(x, y, layer, obj_dead))
	{
		direction = other.hitfrom ;
		hSpeed = lengthdir_x(3, direction);
		vSpeed = lengthdir_y(3, direction) - 2 ;
		if (sign(hSpeed) != 0) 
		{
		    image_xscale = sign(hSpeed) ;
		}
	}
	rdd = random_range(0, 2);
	if(rdd < 1)
	{
		item_Drop1 = obj_shutgun;
	}
	with (instance_create_layer(x, y, layer, item_Drop1))
	{
		direction = other.hitfrom ;
		hSpeed = lengthdir_x(3, direction);
		vSpeed = lengthdir_y(3, direction) + 2 ;
		if (sign(hSpeed) != 0) 
		{
		    image_xscale = sign(hSpeed) ;
		}
	}
	
	
	instance_destroy() ;
	
}



