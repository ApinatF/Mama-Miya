/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 16407F48
/// @DnDInput : 2
/// @DnDArgument : "var" "grounded"
/// @DnDArgument : "function" "check_collision"
/// @DnDArgument : "arg" "0"
/// @DnDArgument : "arg_1" "1"
grounded = check_collision(0, 1);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 035428DA
/// @DnDArgument : "var" "grounded"
/// @DnDArgument : "value" "true"
if(grounded == true)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 45DBBE39
	/// @DnDInput : 2
	/// @DnDParent : 035428DA
	/// @DnDArgument : "expr" "x"
	/// @DnDArgument : "expr_1" "x"
	/// @DnDArgument : "var" "grounded_x"
	/// @DnDArgument : "var_1" "grounded_y"
	grounded_x = x;
	grounded_y = x;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1037FCF9
/// @DnDArgument : "var" "round(vel_x)"
/// @DnDArgument : "not" "1"
if(!(round(vel_x) == 0))
{
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 66A573EC
	/// @DnDParent : 1037FCF9
	/// @DnDArgument : "var" "friction_applied"
	/// @DnDArgument : "value" "sign(vel_x) * friction_power"
	var friction_applied = sign(vel_x) * friction_power;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 4DF49EC2
	/// @DnDParent : 1037FCF9
	/// @DnDArgument : "expr" "grounded"
	/// @DnDArgument : "not" "1"
	if(!(grounded))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4427BA64
		/// @DnDParent : 4DF49EC2
		/// @DnDArgument : "expr" "friction_applied / 4"
		/// @DnDArgument : "var" "friction_applied"
		friction_applied = friction_applied / 4;
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6648D7F0
	/// @DnDParent : 1037FCF9
	/// @DnDArgument : "expr" "-friction_applied"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "vel_x"
	vel_x += -friction_applied;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 381FDF10
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7B7D4DF4
	/// @DnDParent : 381FDF10
	/// @DnDArgument : "var" "vel_x"
	vel_x = 0;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 23CB68FB
/// @DnDArgument : "expr" "grav_speed"
/// @DnDArgument : "var" "vel_y"
vel_y = grav_speed;