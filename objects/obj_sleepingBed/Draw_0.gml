/// @description Insert description here
// You can write your code in this editor


draw_self();


if (txtbox=1)
{
	draw_sprite_stretched(spr_guibg_blue,0,x-25,y-30,100,35);
	draw_text(x-20,y-25,"Rest Now?");
}

if (txtbox=2)
{
	draw_sprite_stretched(spr_guibg_blue,0,x-25,y-30,140,35);
	draw_text(x-20,y-25,"Not Night Time");
}


if (txtbox=3)
{
	draw_sprite_stretched(spr_guibg_blue,0,x-25,y-30,100,35);
	draw_text(x-20,y-25,"New Day " + string(obj_RobotManager.day));
}