/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 618D5CD6
event_inherited();

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 12726026
/// @DnDArgument : "expr" "sprite_index"
var l12726026_0 = sprite_index;
switch(l12726026_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 67FBBD7F
	/// @DnDParent : 12726026
	/// @DnDArgument : "const" "spr_player_walk"
	case spr_player_walk:
		/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 1959DAC8
		/// @DnDParent : 67FBBD7F
		image_speed = 1;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3A4D85C7
		/// @DnDParent : 67FBBD7F
		/// @DnDArgument : "var" "vel_x"
		if(vel_x == 0)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 62E2314D
			/// @DnDParent : 3A4D85C7
			/// @DnDArgument : "value" "spr_player_idle"
			/// @DnDArgument : "instvar" "10"
			sprite_index = spr_player_idle;
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 24634A63
		/// @DnDParent : 67FBBD7F
		/// @DnDArgument : "var" "vel_y"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "1"
		if(vel_y > 1)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 3B42CFFC
			/// @DnDParent : 24634A63
			/// @DnDArgument : "spriteind" "spr_player_fall"
			sprite_index = spr_player_fall;
			image_index = 0;
		}
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 324F6192
	/// @DnDParent : 12726026
	/// @DnDArgument : "const" "spr_player_jump"
	case spr_player_jump:
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1C5B2B0E
		/// @DnDParent : 324F6192
		/// @DnDArgument : "var" "vel_y"
		/// @DnDArgument : "op" "4"
		if(vel_y >= 0)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 235CBE16
			/// @DnDParent : 1C5B2B0E
			/// @DnDArgument : "spriteind" "spr_player_fall"
			sprite_index = spr_player_fall;
			image_index = 0;
		
			/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 2E4B1057
			/// @DnDParent : 1C5B2B0E
			image_speed = 1;
		}
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 18FC9D1C
	/// @DnDParent : 12726026
	/// @DnDArgument : "const" "spr_player_fall"
	case spr_player_fall:
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 1E6CCE95
		/// @DnDParent : 18FC9D1C
		/// @DnDArgument : "expr" "grounded"
		if(grounded)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 572C0175
			/// @DnDParent : 1E6CCE95
			/// @DnDArgument : "value" "spr_player_idle"
			/// @DnDArgument : "instvar" "10"
			sprite_index = spr_player_idle;
		
			/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 3CD4487A
			/// @DnDParent : 1E6CCE95
			image_speed = 1;
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 4148E260
			/// @DnDDisabled : 1
			/// @DnDParent : 1E6CCE95
		}
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 75FB0AEA
	/// @DnDParent : 12726026
	/// @DnDArgument : "const" "spr_player_hurt"
	case spr_player_hurt:
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 5790906C
		/// @DnDParent : 75FB0AEA
		/// @DnDArgument : "expr" "grounded"
		if(grounded)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 5B08DB7E
			/// @DnDParent : 5790906C
			/// @DnDArgument : "xpos" "x"
			/// @DnDArgument : "ypos" "bbox_bottom"
			/// @DnDArgument : "var" "dust"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "obj_effect_knockback"
			/// @DnDArgument : "layer" "layer"
			var dust = instance_create_layer(x, bbox_bottom, layer, obj_effect_knockback);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 07633C90
			/// @DnDParent : 5790906C
			/// @DnDArgument : "expr" "image_xscale"
			/// @DnDArgument : "var" "dust.image_xscale"
			dust.image_xscale = image_xscale;
		}
		break;

	/// @DnDAction : YoYo Games.Switch.Default
	/// @DnDVersion : 1
	/// @DnDHash : 6BF02892
	/// @DnDParent : 12726026
	default:
		/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 7543DA1E
		/// @DnDParent : 6BF02892
		image_speed = 1;
		break;
}