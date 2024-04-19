/// @description Insert description here
// You can write your code in this editor

draw_self()
if (txtbox=1)
{
	draw_sprite_stretched(spr_guibg_blue,0,x-5,y-31,120,45);
	draw_text(x,y-26, "Build House?");
	draw_text(x,y-10, "Cost " + string(woodCost) + " Wood");
}

if (txtbox=2)
{
	draw_sprite_stretched(spr_guibg_blue,0,x-5,y-15,160,25);
	draw_text(x,y-10, "Build In progress");
}

if (txtbox=3)
{
	draw_sprite_stretched(spr_guibg_blue,0,x-5,y-15,145,25);
	draw_text(x,y-10, "Not enough wood");
}
if (txtbox=4)
{
	draw_sprite_stretched(spr_guibg_blue,0,x-5,y-15,140,25);
	draw_text(x,y-10, "Building...");
}

