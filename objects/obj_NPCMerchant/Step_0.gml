/// @description Insert description here
// You can write your code in this editor




if (obj_PCunicorn.key_int1==1)  && (distance_to_object(obj_PCunicorn)<=range) && (distance_to_point(mouse_x,mouse_y)<=range)
{
	instance_activate_layer(layer_get_id("MerchantWindowBack"));
	instance_activate_layer(layer_get_id("MerchantWindow"));
	merchantWindow = true;
}

if ((distance_to_object(obj_PCunicorn)>range && merchantWindow == true))
{
	instance_deactivate_layer(layer_get_id("MerchantWindow"));
	instance_deactivate_layer(layer_get_id("MerchantWindowBack"));
	merchantWindow = false;
}



