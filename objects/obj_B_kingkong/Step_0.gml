/// @description Insert description here
// You can write your code in this editor







// Inherit the parent event
//event_inherited();

var KK = collision_rectangle(x + -1000, y + -1000, x + 1000, y + 1000, obj_player, true, 1);
if((KK))
{
	// Set Speed
	//speed = 2;

	// Set Point Direction
	//direction = point_direction(x, y, obj_player.x, obj_player.y);

	// Assign Variable
	target = true;
	sprite_index = spr_boss_shooting;
	direction =-1;
	walkSpeed = 0;

	// If Variable
	if(alarm[0] < 0)
	{
		// Set Alarm Countdown
		alarm_set(0, 60);
	}
}

// Else
else
{
	
	target = false;
	sprite_index = spr_boss;
	
	
}


