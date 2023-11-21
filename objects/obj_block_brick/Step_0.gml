/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 7AEC1BC9
event_inherited();

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 0C18E8A3
/// @DnDArgument : "var" "frame"
/// @DnDArgument : "value" "image_index"
var frame = image_index;

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 7B9BFF8B
/// @DnDArgument : "x" "-1"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "object" "obj_block_brick"
/// @DnDSaveInfo : "object" "obj_block_brick"
var l7B9BFF8B_0 = instance_place(x + -1, 0, [obj_block_brick]);
if ((l7B9BFF8B_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 482D5DDE
	/// @DnDParent : 7B9BFF8B
	/// @DnDArgument : "expr" "3"
	/// @DnDArgument : "var" "frame"
	frame = 3;

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 48877F93
	/// @DnDParent : 7B9BFF8B
	/// @DnDArgument : "x" "1"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "object" "obj_block_brick"
	/// @DnDSaveInfo : "object" "obj_block_brick"
	var l48877F93_0 = instance_place(x + 1, 0, [obj_block_brick]);
	if ((l48877F93_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 64DAF158
		/// @DnDParent : 48877F93
		/// @DnDArgument : "expr" "2"
		/// @DnDArgument : "var" "frame"
		frame = 2;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 57D2BEB9
else
{
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 64B4A36C
	/// @DnDParent : 57D2BEB9
	/// @DnDArgument : "x" "-1"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "object" "obj_block_brick"
	/// @DnDSaveInfo : "object" "obj_block_brick"
	var l64B4A36C_0 = instance_place(x + -1, 0, [obj_block_brick]);
	if ((l64B4A36C_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 23BEAF4C
		/// @DnDParent : 64B4A36C
		/// @DnDArgument : "expr" "3"
		/// @DnDArgument : "var" "frame"
		frame = 3;
	
		/// @DnDAction : YoYo Games.Collisions.If_Object_At
		/// @DnDVersion : 1.1
		/// @DnDHash : 4F1B277E
		/// @DnDParent : 64B4A36C
		/// @DnDArgument : "x" "1"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "object" "obj_block_brick"
		/// @DnDSaveInfo : "object" "obj_block_brick"
		var l4F1B277E_0 = instance_place(x + 1, 0, [obj_block_brick]);
		if ((l4F1B277E_0 > 0))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3F555C1D
			/// @DnDParent : 4F1B277E
			/// @DnDArgument : "expr" "2"
			/// @DnDArgument : "var" "frame"
			frame = 2;
		}
	}
}