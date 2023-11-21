/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 22B931CA
/// @DnDArgument : "var" "target_y_dist"
/// @DnDArgument : "value" "abs(target_y - fake_y)"
var target_y_dist = abs(target_y - fake_y);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0F56B056
/// @DnDArgument : "var" "target_y_dist"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "2"
if(target_y_dist > 2)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7F152FC6
	/// @DnDParent : 0F56B056
	/// @DnDArgument : "expr" "sign(target_y - fake_y) * 8"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "fake_y"
	fake_y += sign(target_y - fake_y) * 8;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 3385531F
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0772A1EA
	/// @DnDParent : 3385531F
	/// @DnDArgument : "expr" "target_y"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "fake_y"
	fake_y += target_y;
}