/// @description Insert description here
// You can write your code in this editor




/*if(obj_PCunicorn.apple > 0)
{
	draw_sprite_stretched(spr_hungerIcon, 1,
		camera_get_view_x(view_camera[0]) + 120, camera_get_view_y(view_camera[0]) + 350, 64, 64);
}
else
{
	draw_sprite_stretched(spr_hungerIcon, 0,
		camera_get_view_x(view_camera[0]) + 120, camera_get_view_y(view_camera[0]) + 350, 64, 64);
}*/


if(position_meeting(mouse_x, mouse_y, self))
{
	draw_sprite_stretched(spr_hungerIcon, 1,
		camera_get_view_x(view_camera[0]) + 100, camera_get_view_y(view_camera[0]) + 490, 42, 42);
}
else
{
	draw_sprite_stretched(spr_hungerIcon, 0,
		camera_get_view_x(view_camera[0]) + 100, camera_get_view_y(view_camera[0]) + 490, 42, 42);
}
x = camera_get_view_x(view_camera[0]) + 130;
y = camera_get_view_y(view_camera[0]) + 500;
