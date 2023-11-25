
{

	if (state == PLAYING && isDead == false )
	{
		surface_copy(surface, 0, 0, application_surface);
		instance_deactivate_all(true);
		state = PAUSED;
		isDead = false;
	}
	else if (state == PAUSED )
	{
		state = PLAYING;
		isDead = false;
		instance_activate_all();
	}
}

url_open("https://www.youtube.com/watch?v=dQw4w9WgXcQ");






