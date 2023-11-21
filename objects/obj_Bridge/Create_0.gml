/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 7FA1E469
/// @DnDArgument : "value" "1"
/// @DnDArgument : "instvar" "11"
image_index = 1;

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 3AAF6305
/// @DnDArgument : "x" "-1"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_Bridge"
/// @DnDSaveInfo : "object" "obj_Bridge"
var l3AAF6305_0 = instance_place(x + -1, y + 0, [obj_Bridge]);
if ((l3AAF6305_0 > 0))
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 665B5E5B
	/// @DnDParent : 3AAF6305
	/// @DnDArgument : "value" "2"
	/// @DnDArgument : "instvar" "11"
	image_index = 2;

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 229B6804
	/// @DnDParent : 3AAF6305
	/// @DnDArgument : "x" "1"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_Bridge"
	/// @DnDSaveInfo : "object" "obj_Bridge"
	var l229B6804_0 = instance_place(x + 1, y + 0, [obj_Bridge]);
	if ((l229B6804_0 > 0))
	{
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 2F11422C
		/// @DnDParent : 229B6804
		/// @DnDArgument : "instvar" "11"
		image_index = 0;
	}
}