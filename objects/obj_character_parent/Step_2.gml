/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 320A3609
/// @DnDArgument : "var" "vel_x"
/// @DnDArgument : "op" "1"
if(vel_x < 0)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 5154838B
	/// @DnDParent : 320A3609
	/// @DnDArgument : "xscale" "-1"
	image_xscale = -1;
	image_yscale = 1;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 1FB9DE42
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 29D71B27
	/// @DnDParent : 1FB9DE42
	/// @DnDArgument : "var" "vel_x"
	/// @DnDArgument : "op" "2"
	if(vel_x > 0)
	{
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 70C3D729
		/// @DnDParent : 29D71B27
		image_xscale = 1;
		image_yscale = 1;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7BED0972
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
if(hp <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 424088B3
	/// @DnDParent : 7BED0972
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "defeated_object"
	/// @DnDArgument : "layer" "layer"
	instance_create_layer(x + 0, y + 0, layer, defeated_object);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3423743D
	/// @DnDParent : 7BED0972
	instance_destroy();
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0F286952
/// @DnDArgument : "var" "no_hurt_frames"
/// @DnDArgument : "op" "2"
if(no_hurt_frames > 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1B46CEC9
	/// @DnDParent : 0F286952
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "no_hurt_frames"
	no_hurt_frames += -1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2EC33647
	/// @DnDParent : 0F286952
	/// @DnDArgument : "var" "no_hurt_frames % 12"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "6"
	if(no_hurt_frames % 12 > 6)
	{
		/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
		/// @DnDVersion : 1
		/// @DnDHash : 41F07E5C
		/// @DnDParent : 2EC33647
		/// @DnDArgument : "alpha" "0"
		image_alpha = 0;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 2096711A
	/// @DnDParent : 0F286952
	else
	{
		/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
		/// @DnDVersion : 1
		/// @DnDHash : 3BD97017
		/// @DnDParent : 2096711A
		image_alpha = 1;
	}
}