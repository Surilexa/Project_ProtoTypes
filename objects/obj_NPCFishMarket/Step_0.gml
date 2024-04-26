/// @description Insert description here
// You can write your code in this editor
image_index = 1;
//if they confirmed the purchase of the shop
if(txtbox == 1 && mouse_check_button_released(mb_left) && enableChoice)
{
	//do they have enough to buy?
	if(obj_PCunicorn.goldCoins >= costToBuild)
	{
		txtbox = 0;
		isBuilt = true;
		obj_PCunicorn.goldCoins -= costToBuild;
		obj_PCunicorn.isBusy = false;
		enableChoice = false;
	}
	else if(obj_PCunicorn.goldCoins < costToBuild)
	{
		txtbox = 0;
		obj_PCunicorn.isBusy = false;
		enableChoice = false;
	}
}
//canel the dialog
if(txtbox = 1 && mouse_check_button_released(mb_right)&& enableChoice)
{
	show_debug_message("cancel")
	txtbox = 0;
	obj_PCunicorn.isBusy = false;
	enableChoice = false;
}



if (obj_PCunicorn.key_int1==1)  && (distance_to_object(obj_PCunicorn)<=range) && (distance_to_point(mouse_x,mouse_y)<=range &&isBuilt)
{
	instance_activate_layer(layer_get_id("FishMarket_window"));
	instance_activate_layer(layer_get_id("FishMarketBack"));
	merchantWindow = true;
	obj_PCunicorn.isBusy = true;
}

if ((distance_to_object(obj_PCunicorn)>range && merchantWindow == true))
{
	instance_deactivate_layer(layer_get_id("FishMarket_window"));
	instance_deactivate_layer(layer_get_id("FishMarketBack"));
	merchantWindow = false;
	obj_PCunicorn.isBusy = false;
}
else if (obj_PCunicorn.key_int1==1)  && (distance_to_object(obj_PCunicorn)<=range) && (distance_to_point(mouse_x,mouse_y)<=range &&!isBuilt)
{
	show_debug_message("show dialog")
	obj_PCunicorn.isBusy = true;
	//show first prompt
	if(txtbox == 0)
	{
		show_debug_message("show txtbox1")
		txtbox = 1;
		alarm[0] = 60;
	}
	
}
if(txtbox<>0 && (distance_to_object(obj_PCunicorn)>range))
{
	txtbox = 0;
	obj_PCunicorn.isBusy = false;
}




