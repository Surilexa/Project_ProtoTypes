/// @description Insert description here
// You can write your code in this editor
draw_self();

//fishing logic
if(isFishing)
{
	draw_sprite(spr_fishingIcon, 3, x + 10, y-72);
}
//if we are at 20 percent hunger
if (obj_hungerBar.hunger < (.2 * obj_hungerBar.maxHunger))
{
	draw_sprite(spr_EatFoodIcon, 0, x + 10, y - 72);
}

//show_debug_message(camera_get_view_x(view_get_camera(0)))