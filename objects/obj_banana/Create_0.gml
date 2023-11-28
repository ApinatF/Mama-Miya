hp = 10;
flash = 0;
hitfrom = 0;

speed = 4;

var sp = false;
sp = instance_exists(obj_player);
audio_play_sound(S_pingsinrin,5,false);
if(sp)
{
	direction = point_direction(x, y, obj_player.x, obj_player.y);
	
	image_angle = direction;
}






