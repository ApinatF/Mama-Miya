/// @DnDAction : YoYo Games.Movement.Set_Gravity_Force
/// @DnDVersion : 1
/// @DnDHash : 5CF36D31
/// @DnDArgument : "force" "1.5"
gravity = 1.5;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 00A0E91E
/// @DnDArgument : "speed" "-40"
/// @DnDArgument : "type" "2"
vspeed = -40;

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 774EC4FF
/// @DnDArgument : "xscale" "-1"
image_xscale = -1;
image_yscale = 1;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 6411F3DA
alarm_set(0, 30);

/// @DnDAction : YoYo Games.Audio.Stop_All_Audio
/// @DnDVersion : 1
/// @DnDHash : 43EFAFD3
audio_stop_all();

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 4FB9C13B
/// @DnDDisabled : 1