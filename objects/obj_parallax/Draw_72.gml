/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 7CC59A23
/// @DnDArgument : "var" "camera_x"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "function" "camera_get_view_x"
/// @DnDArgument : "arg" "view_camera[0]"
var camera_x = camera_get_view_x(view_camera[0]);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 4507E2C6
/// @DnDInput : 2
/// @DnDArgument : "function" "layer_x"
/// @DnDArgument : "arg" ""Back_Trees2""
/// @DnDArgument : "arg_1" "camera_x * 0.6"
layer_x("Back_Trees2", camera_x * 0.6);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 75053F9F
/// @DnDInput : 2
/// @DnDArgument : "function" "layer_x"
/// @DnDArgument : "arg" ""Back_Trees1""
/// @DnDArgument : "arg_1" "camera_x * 0.7"
layer_x("Back_Trees1", camera_x * 0.7);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 3D62B70F
/// @DnDInput : 2
/// @DnDArgument : "function" "layer_x"
/// @DnDArgument : "arg" ""Back_Clouds""
/// @DnDArgument : "arg_1" "camera_x * 0.8"
layer_x("Back_Clouds", camera_x * 0.8);