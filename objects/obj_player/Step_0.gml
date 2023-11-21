if(obj_game_manager.state == obj_game_manager.PLAYING) {
// Player Input 
   // 1.mouse and keyboard
if  (hascontrol)
{
key_left = keyboard_check(vk_left) || keyboard_check(ord("A")) ; 
key_right = keyboard_check(vk_right) || keyboard_check(ord("D")) ; 
key_jump = keyboard_check_pressed(vk_space) ;

if (key_left || key_right || key_jump) 
{
   controller = 0 ;
}

/*if (abs(gamepad_axis_value(0,gp_axislh)) > 0.2) 
{
	key_left = abs(min(gamepad_axis_value(0, gp_axislh), 0)) ;
	key_right = max(gamepad_axis_value(0, gp_axislh),0);
   controller = 1 ;
}
if (gamepad_button_check_pressed(0, gp_face1)) 
{
	key_jump = 1;
   controller = 1 ;
}*/
}
else
{
	key_left = 0;
	key_right = 0;
	key_jump = 0;
}


// Movement 
var move = key_right - key_left ;

hSpeed = move * walkSpeed;

vSpeed = vSpeed + vGravity ;

// Jump system
if (place_meeting(x,y+1,obj_Borigin)) && (key_jump) 
{
    vSpeed = -jumpS;
}

// Horizontal event
if (place_meeting(x+hSpeed,y,obj_Borigin)) 
{
    while (!place_meeting(x+sign(hSpeed),y,obj_Borigin))
	{
	    x = x + sign(hSpeed) ;
	}
	hSpeed = 0 ;
}

x = x + hSpeed

// Vertical event
if (place_meeting(x,y+vSpeed,obj_Borigin)) 
{
    while (!place_meeting(x,y+sign(vSpeed),obj_Borigin))
	{
	    y = y + sign(vSpeed) ;
	}
	vSpeed = 0 ;
}
y = y + vSpeed ;

//Animation
if (!place_meeting(x, y+1, obj_Borigin)) 
{
    sprite_index = spr_player_jump ;
	image_speed = 0 ;
	if (sign(vSpeed > 0)) 
	{
		image_index = 1;
	}
	else { image_index = 0}
}
else 
{
    image_speed = 1 ;
	if (hSpeed == 0) 
	{
	    sprite_index = spr_player_idle ;
	}
	else 
	{
	    sprite_index = spr_player_walk ;
	}
}

if (hSpeed != 0) image_xscale = sign(hSpeed) ;

if (!newGun) 
{
	instance_create_layer(x, y, "ins_Gun", myGun);
	newGun = true;
}

}









