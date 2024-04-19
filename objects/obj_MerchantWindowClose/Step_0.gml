/// @description Insert description here
// You can write your code in this editor

if(position_meeting(mouse_x, mouse_y, self))
{
	image_index = 1;
	//show_debug_message(string(x) + st);
}
else
{
	image_index = 0;
}


if (mouse_check_button(mb_left)) && (position_meeting(mouse_x, mouse_y, self))
{
	//close the merchant window
	instance_deactivate_layer(layer_get_id("MerchantWindow"));
	instance_deactivate_layer(layer_get_id("MerchantWindowBack"));
	obj_NPCMerchant.merchantWindow = false;
}


