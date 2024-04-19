/// @description Insert description here
// You can write your code in this editor


draw_self()
if (txtbox=1)
{
	draw_sprite_stretched(spr_guibg_blue,0,x-55,y-101,310,60);
	draw_text(x-50,y-96, "Welcome to my establishment!");
	draw_text(x-50,y-80, "I got a service stand in the back.");
	draw_text(x-50,y-64, "I need you to run it for me.");
}
if (txtbox=2)
{
	draw_sprite_stretched(spr_guibg_blue,0,x-55,y-101,210,60);
	draw_text(x-50,y-96, "Try asking customers");
	draw_text(x-50,y-80, "what service they want.");
	draw_text(x-50,y-64, "And get Making!");
}
if (txtbox=3)
{
	draw_sprite_stretched(spr_guibg_blue,0,x-55,y-101,240,60);
	draw_text(x-50,y-96, "If you ever feel stuck,");
	draw_text(x-50,y-80, "there is some equipment");
	draw_text(x-50,y-64, "laying around somewhere.");
}
if (txtbox=4)
{
	draw_sprite_stretched(spr_guibg_blue,0,x-55,y-101,175,60);
	draw_text(x-50,y-96, "Thank you");
	draw_text(x-50,y-80, "for the hard work!");
}