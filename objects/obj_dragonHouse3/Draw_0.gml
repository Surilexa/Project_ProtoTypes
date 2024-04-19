/// @description Insert description here
// You can write your code in this editor
draw_self()
if (txtbox=1)
{
	draw_sprite_stretched(spr_guibg_blue,0,x-5,y-47,120,65);
	draw_text(x,y-42, "Build House?");
	draw_text(x,y-26, "Cost " + string(woodCost) + " Wood");
	draw_text(x,y-10, "Cost " + string(clayCost) + " Clay");
}

if (txtbox=2)
{
	draw_sprite_stretched(spr_guibg_blue,0,x-5,y-15,160,25);
	draw_text(x,y-10, "Build In progress");
}

if (txtbox=3)
{
	draw_sprite_stretched(spr_guibg_blue,0,x-5,y-15,210,25);
	draw_text(x,y-10, "Not enough resources.");
}
if (txtbox=4)
{
	draw_sprite_stretched(spr_guibg_blue,0,x-5,y-15,120,25);
	draw_text(x,y-10, "Building...");
}


