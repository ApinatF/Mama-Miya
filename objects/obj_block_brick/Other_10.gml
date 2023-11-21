/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 31F451D9
event_inherited();

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 467368C5
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_block_brick_destroy"
/// @DnDArgument : "layer" "layer"
instance_create_layer(x + 0, y + 0, layer, obj_block_brick_destroy);

/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 1B4F6A79
/// @DnDInput : 3
/// @DnDArgument : "var" "sound"
/// @DnDArgument : "option" "snd_dirt_block_hit_01"
/// @DnDArgument : "option_1" "snd_dirt_block_hit_02"
/// @DnDArgument : "option_2" "snd_dirt_block_hit_02"
sound = choose(snd_dirt_block_hit_01, snd_dirt_block_hit_02, snd_dirt_block_hit_02);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 7B7AAC06
/// @DnDDisabled : 1


/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 77422F6F
instance_destroy();