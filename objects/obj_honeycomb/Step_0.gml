
if (alarm[1] <= 0)
{
	alarm[1] = 1;
}


var Bee_target = collision_rectangle(x + -1000, y + -1000, x + 1000, y + 1000, obj_player, true, 1);
if((!Bee_target))
{
	
	/*if(alarm[0] < 0)
	{
		alarm_set(0, 6*60);
	}*/
	alarm_set(0, 4*60);
}








