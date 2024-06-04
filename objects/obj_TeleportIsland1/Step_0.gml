/// @description Insert description here
// You can write your code in this editor

if(position_meeting(mouse_x, mouse_y, self))
{
	image_yscale = 3.4;
	image_xscale = 3.4;
}
else
{
	image_yscale = 3;
	image_xscale = 3;
}

if (mouse_check_button_pressed(mb_left)) && (position_meeting(mouse_x, mouse_y, self) && mouseDown == false)
{
	//initiate teleport
	instance_deactivate_layer("TeleportButtons");
	instance_deactivate_layer("MapArt");
	mouseDown = true;
	
	
	obj_PCunicorn.x = teleportx;
	obj_PCunicorn.y = teleporty;
	obj_tar1.x = teleportx;
	obj_tar1.y = teleporty;
 	obj_InteractiveMapManager.alarm[0] = 60;
	
}
if((mouse_check_button_released(mb_left)))
{
	mouseDown = false;
}

if(obj_InteractiveMapManager.activateMap)
{
	x = obj_PCunicorn.centerOfScreenX + -200;
	y = obj_PCunicorn.centerOfScreenY + -200;
}

