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
	
	//rdd = random_range(0, 2);
	
	if(rdd <= 1)
	{
		Drop_item = item_Drop1;
	}
	else if (rdd > 1 && rdd <5)
	{
		Drop_item = item_Drop2;
	}
	else
	{
		Drop_item = item_Drop3;
	}
	
	with (instance_create_layer(x, y, layer, Drop_item))
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




