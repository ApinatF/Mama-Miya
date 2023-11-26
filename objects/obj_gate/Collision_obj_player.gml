
with (obj_player) 
{
    if (hascontrol) 
	{
	    hascontrol = false ;
		SlideTransition(TRAN_MODE.GOTO, other.target);
	
		//SlideTransition(TRAN_MODE.NEXT);
	}
}



