/// @description Insert description here
// You can write your code in this editor







// Inherit the parent event
event_inherited();

var Bee_target = collision_rectangle(x + -500, y + -500, x + 500, y + 500, obj_player, true, 1);
if((Bee_target))
{
	// Set Speed
	speed = 6;

	// Set Point Direction
	direction = point_direction(x, y, obj_player.x, obj_player.y);

	// Assign Variable
	//target = true;

	// If Variable
	/*if(alarm[0] < 0)
	{
		// Set Alarm Countdown
		alarm_set(0, 1);
	}*/
}

// Else
else
{
	// Set Speed
	speed = walkSpeed;

	// Set Direction Variable
	direction += 2;

	// Assign Variable
	//target = false;
}

