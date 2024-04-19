/// @description Insert description here
// You can write your code in this editor

// on step

//this will cycle the controllable object via the "I" key
if (keyboard_check_pressed(ord("I")) && characters_Unlocked == 1)
{
	con_tar += 1;
	if (con_tar > pc_count)
	{
		con_tar = 1;	
	}
}
	
// this will make the camera follow the selected conrollable object
if (con_tar == 1)
{
	camera_set_view_target(view_camera[0],obj_pcQuestGetter);
}
else if (con_tar ==2)
{
	camera_set_view_target(view_camera[0], obj_pcFrontDesk);
}
else if (con_tar ==3)
{
	camera_set_view_target(view_camera[0],obj_pcBookGrabber);
}

// end step


