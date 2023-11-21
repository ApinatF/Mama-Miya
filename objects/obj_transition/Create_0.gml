
w = display_get_gui_width() ;
h = display_get_gui_height() ;
h_half = h * 0.5 ;

enum TRAN_MODE
{
	OFF,
	NEXT,
	GOTO,
	RESTRAT,
	INTRO
}
mode = TRAN_MODE.INTRO;
percent = 1;
target = room ;




