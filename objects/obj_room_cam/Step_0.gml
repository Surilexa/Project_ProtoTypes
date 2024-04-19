/// @description Insert description here
// You can write your code in this editor


// on step


if (distance_to_object(obj_pc1)<=1)
{
	camera_set_view_target(view_camera[0],id);
	view_set_wport(0,sizew);
	view_set_hport(0,sizeh);
	camera_set_view_size(view_camera[0],sizew,sizeh);
	camera_set_view_border(view_camera[0],sizew/2,sizeh/2);
}
