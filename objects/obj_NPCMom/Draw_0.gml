/// @description Insert description here
// You can write your code in this editor


draw_self()
if (txtbox=1)
{
	draw_sprite_stretched(spr_guibg_blue,0,x-55,y-85,200,45);
	draw_text(x-50,y-80, "You are going to be");
	draw_text(x-50,y-64, "late for work!!");
}
if (txtbox=2)
{
	draw_sprite_stretched(spr_guibg_blue,0,x-55,y-101,215,60);
	draw_text(x-50,y-96, "Talk to your employer");
	draw_text(x-50,y-80, "and make sure you know");
	draw_text(x-50,y-64, "what to do!");
}
if (txtbox=3)
{
	draw_sprite_stretched(spr_guibg_blue,0,x-55,y-85,200,45);
	draw_text(x-50,y-80, "Remember to shoot for");
	draw_text(x-50,y-64, "$100 in tips today!");
}
if (txtbox=4)
{
	draw_sprite_stretched(spr_guibg_blue,0,x-55,y-85,175,45);
	draw_text(x-50,y-80, "That's My duck!");
	draw_text(x-50,y-64, "Amazing job today!");
}