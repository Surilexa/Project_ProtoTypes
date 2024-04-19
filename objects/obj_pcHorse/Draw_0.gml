/// @description Insert description here
// You can write your code in this editor


draw_self();
viewportHeight = view_get_hport(view_current);

//percentage position of the player to the viewport height. Filters everthing below .75

//closer to camera the bigger the player is.

image_yscale = y  / (viewportHeight);
image_xscale = y / (viewportHeight);


//fishing logic
if(isFishing)
{
	draw_sprite(spr_fishingIcon, 3, x + 10, y-72);
}
//if we are at 20 percent hunger
if (obj_hungerBar2.hunger < (.2 * obj_hungerBar2.maxHunger))
{
	draw_sprite(spr_EatFoodIcon, 0, x + 10, y - 72);
}
