/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 52828C91
/// @DnDInput : 2
/// @DnDArgument : "var" "move_count"
/// @DnDArgument : "value" "abs(vel_x)"
/// @DnDArgument : "var_1" "move_once"
/// @DnDArgument : "value_1" "sign(vel_x)"
var move_count = abs(vel_x);
var move_once = sign(vel_x);

/// @DnDAction : YoYo Games.Loops.Repeat
/// @DnDVersion : 1
/// @DnDHash : 0CC16B15
/// @DnDArgument : "times" "move_count"
repeat(move_count)
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 60731DB2
	/// @DnDInput : 2
	/// @DnDParent : 0CC16B15
	/// @DnDArgument : "var" "collision_found"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "function" "check_collision"
	/// @DnDArgument : "arg" "move_once"
	/// @DnDArgument : "arg_1" "0"
	var collision_found = check_collision(move_once, 0);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0CDED0D7
	/// @DnDParent : 0CC16B15
	/// @DnDArgument : "var" "collision_found"
	/// @DnDArgument : "value" "false"
	if(collision_found == false)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 5B8C59E2
		/// @DnDParent : 0CDED0D7
		/// @DnDArgument : "value" "move_once"
		/// @DnDArgument : "value_relative" "1"
		x += move_once;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 58280FA0
	/// @DnDParent : 0CC16B15
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 23779821
		/// @DnDParent : 58280FA0
		/// @DnDArgument : "var" "vel_x"
		vel_x = 0;
	}
}

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 29E6E70B
/// @DnDInput : 2
/// @DnDArgument : "var" "move_count"
/// @DnDArgument : "value" "abs(vel_y)"
/// @DnDArgument : "var_1" "move_once"
/// @DnDArgument : "value_1" "sign(vel_y)"
var move_count = abs(vel_y);
var move_once = sign(vel_y);

/// @DnDAction : YoYo Games.Loops.Repeat
/// @DnDVersion : 1
/// @DnDHash : 42AD4FA0
/// @DnDArgument : "times" "move_count"
repeat(move_count)
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 29563320
	/// @DnDInput : 2
	/// @DnDParent : 42AD4FA0
	/// @DnDArgument : "var" "collision_found"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "function" "check_collision"
	/// @DnDArgument : "arg" "move_once"
	/// @DnDArgument : "arg_1" "0"
	var collision_found = check_collision(move_once, 0);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7AC861BD
	/// @DnDParent : 42AD4FA0
	/// @DnDArgument : "var" "collision_found"
	/// @DnDArgument : "value" "false"
	if(collision_found == false)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 08E9E3BA
		/// @DnDParent : 7AC861BD
		/// @DnDArgument : "value" "move_once"
		/// @DnDArgument : "value_relative" "1"
		/// @DnDArgument : "instvar" "1"
		y += move_once;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 3C6285C0
	/// @DnDParent : 42AD4FA0
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 60593742
		/// @DnDParent : 3C6285C0
		/// @DnDArgument : "var" "vel_y"
		vel_y = 0;
	}
}