/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(ord("I")))
{
	pc_ID = 1;
}
	
// this will make the camera follow the selected conrollable object
if (pc_ID == 1)
{
	camera_set_view_target(view_camera[0],obj_pcController);
}
else if (pc_ID ==2)
{
	camera_set_view_target(view_camera[0], obj_pcCrystalRobot);
}
else if (pc_ID ==3)
{
	camera_set_view_target(view_camera[0], obj_pcCoalRobot);
}



