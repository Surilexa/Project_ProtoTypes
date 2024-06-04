/// @description Insert description here
// You can write your code in this editor

if(position_meeting(mouse_x, mouse_y, self))
{
	image_index = 1;
}
else
{
	image_index = 0;
}


if (mouse_check_button_pressed(mb_right)) && (position_meeting(mouse_x, mouse_y, self) && mouseDown == false)
{
	mouseDown = true;
	
	//open the map logic
	obj_InteractiveMapManager.isMapOpen = true;
	obj_PCunicorn.isBusy = true;
	instance_activate_layer("TeleportButtons");
	instance_activate_layer("MapArt");
}
if((mouse_check_button_released(mb_right)))
{
	mouseDown = false;
}

if(obj_InteractiveMapManager.isMapOpen && keyboard_check_released(vk_escape))
{
	instance_deactivate_layer("TeleportButtons");
	instance_deactivate_layer("MapArt");
	obj_PCunicorn.isBusy = false;
}