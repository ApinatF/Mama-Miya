/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 2A74BC6B
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_player0"
/// @DnDSaveInfo : "object" "obj_player0"
var l2A74BC6B_0 = instance_place(x + 0, y + 1, [obj_player0]);
if ((l2A74BC6B_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 78CB33D1
	/// @DnDParent : 2A74BC6B
	/// @DnDArgument : "var" "obj_player.yprevious"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "obj_player.y"
	if(obj_player.yprevious > obj_player.y)
	{
		/// @DnDAction : YoYo Games.Instances.Call_User_Event
		/// @DnDVersion : 1
		/// @DnDHash : 076B375B
		/// @DnDParent : 78CB33D1
		event_user(0);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0C938A4B
		/// @DnDParent : 78CB33D1
		/// @DnDArgument : "expr" "4"
		/// @DnDArgument : "var" "obj_player.vel_y"
		obj_player.vel_y = 4;
	}
}