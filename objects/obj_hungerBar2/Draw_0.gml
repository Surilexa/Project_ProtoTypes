/// @description Insert description here
// You can write your code in this editor


if(blink == false)
{
	draw_sprite_stretched(spr_HungerContainer, 0,
		camera_get_view_x(view_camera[0]) + 10, camera_get_view_y(view_camera[0]) + 75, 168, 54);
}

draw_sprite_stretched(spr_HungerBar2, 0,
		camera_get_view_x(view_camera[0]) + 24, camera_get_view_y(view_camera[0]) + 87, hunger*7, 30);

