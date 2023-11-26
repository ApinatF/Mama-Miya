
speed = 2;

var sp = false;
sp = instance_exists(obj_player);
if(sp)
{
	direction = point_direction(x, y, obj_player.x, obj_player.y);
	
	image_angle = direction;
}






