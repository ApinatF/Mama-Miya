
if (mode != TRAN_MODE.INTRO) 
{
    if (mode == TRAN_MODE.INTRO) 
	{
	    percent = max(0, percent - max((percent/10), 0.005));
	}
	else 
	{
	    percent = min(1, percent + max(((1 - percent)/ 10), 0.005)) ;
	}
	
	if (percent == 1 || percent ==0)
	{
	    switch (mode) 
		{
		    case TRAN_MODE.INTRO:
		    {
				mode = TRAN_MODE.OFF;
		        break;
			}
			case TRAN_MODE.NEXT:
		    {
				mode = TRAN_MODE.INTRO;
				room_goto_next();
		        break;
			}
			case TRAN_MODE.GOTO:
		    {
				mode = TRAN_MODE.INTRO ;
				room_goto(target);
		        break;
			}
			case TRAN_MODE.RESTRAT:
		    {
				game_restart()
		        break;
			}
			
		}
	}
	
}

// hello = SlideTransition




