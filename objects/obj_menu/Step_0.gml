
menu_x += (menu_x_target - menu_x) / menu_speed;

if (menu_control) 
{
    if (keyboard_check_pressed(vk_up))
	{
		audio_play_sound(S_move_arrow,5,false);
		menu_cursor++;
		if (menu_cursor >= menu_item) menu_cursor = 0;
	}
	if (keyboard_check_pressed(vk_down))
	{
		audio_play_sound(S_move_arrow,5,false);
		menu_cursor--;
		if (menu_cursor  < 0) menu_cursor = menu_item-1;
	}
	if (keyboard_check_pressed(vk_enter))
	{
		audio_play_sound(S_enter,5,false);
		menu_x_target = gui_width + 300;
		menu_committed = menu_cursor;
		menu_control = false;
	}
	
}

if(menu_x > gui_width + 150 ) && (menu_committed != -1)
{
	switch (menu_committed) {
	    case 4: default: SlideTransition(TRAN_MODE.NEXT); break;
		case 3: // Save errer
		{
			if(!file_exists(SAVEFILE))
			{
				SlideTransition(TRAN_MODE.NEXT);
			}
			else
			{
				var file = file_text_open_read(SAVEFILE);
				var target = file_text_read_real(file);
				file_text_close(file);
				SlideTransition(TRAN_MODE.GOTO,target);
				
			}
			
		} break;
		/*case 2: 
		{
			
		} */
		case 1:
		{
			url_open("https://www.youtube.com/watch?v=dQw4w9WgXcQ");
			game_restart();
		} break;
	    case 0: game_end(); break;
	}
}






