/// @description Insert description here
// You can write your code in this editor


/*
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
}*/


//open and close the inventory
if(keyboard_check_released(vk_tab) == 1)
{
	//if the inv is already shown
	if(inventory)
	{
		inventory = false;
	}
	else
	{
		inventory = true;
	}
}

//implement tools using the 1-3 keys to change between tools
//do what minecraft does.

//what happens when 1 key is pressed.
if(keyboard_check_released(ord("1")) == 1)
{
	//know this is the fishing rod
	show_debug_message("1 is pressed");
	fishingRod = true;
	pickaxe = false;
	sword = false;
}
if(keyboard_check_released(ord("2")) == 1)
{
	//know this is the pickaxe
	show_debug_message("2 is pressed");
	fishingRod = false;
	pickaxe = true;
	sword = false;
}
if(keyboard_check_released(ord("3")) == 1)
{
	//know this is the sword
	show_debug_message("3 is pressed");
	fishingRod = false;
	pickaxe = false;
	sword = true;
}







