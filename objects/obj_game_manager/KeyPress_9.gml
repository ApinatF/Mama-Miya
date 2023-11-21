
{

	if (state == PLAYING)
	{
		surface_copy(surface, 0, 0, application_surface);
		//instance_deactivate_all(true);
		state = PAUSED;
	}
	else if (state == PAUSED)
	{
		state = PLAYING;
		instance_activate_all();
	}
}






