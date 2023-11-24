
#macro SAVEFILE "Save.sav"
tR = room;


gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 32;

menu_x = gui_width  ;
menu_y = gui_height - gui_margin -600 ;
menu_x_target = gui_width - gui_margin;
menu_speed = 25;
menu_font = MenuFont;
menu_itemheight = font_get_size(MenuFont);
menu_committed = -1;
menu_control = true ;

menu[4] = "Start       Mission" ;
menu[3] = "Continue Mission" ;
menu[2] = "Tutorial" ;
menu[1] = "Option" ;
menu[0] = "Quit Game" ;

menu_item = array_length_1d(menu);
menu_cursor = 3;







