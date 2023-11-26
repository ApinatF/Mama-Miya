

if(target)
{
	// Create Instance
	instance_create_layer(x + 0, y + 0, "ins_Bullet", obj_banana);

	// Set Alarm Countdown
	alarm_set(0, 60*3);
}

// Else
else
{
	// Exit
	exit;
}





