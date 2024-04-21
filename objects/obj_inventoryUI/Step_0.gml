/// @description Insert description here
// You can write your code in this editor

if(camera_get_view_y(view_get_camera(0)) == 0)
{
	if(obj_PCunicorn.y < 100)
	{
		inventory = false;
	}
	else if(obj_PCunicorn.y >= 100 && obj_PCunicorn.inventory)
	{
		inventory = true;
	}
}




