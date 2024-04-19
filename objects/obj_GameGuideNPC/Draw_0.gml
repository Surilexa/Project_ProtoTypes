/// @description Insert description here
// You can write your code in this editor


draw_self();


if (txtbox==1)
{
	draw_sprite_stretched(spr_guibg_blue,0,x-15,y-101,450,65);
	draw_text(x-10,y-96, "Welcome traveler!");
	draw_text(x-10,y-80, "We are in desperate need for a house contractor.")
	draw_text(x-10,y-64, "Do you know how to build houses?");
}
if (txtbox==2)
{
	draw_sprite_stretched(spr_guibg_blue,0,x-15,y-85,275,45);
	draw_text(x-10,y-80, "Great!");
	draw_text(x-10,y-64, "Let me tell you about the job.");
}	
	
if (txtbox==3)
{
	draw_sprite_stretched(spr_guibg_blue,0,x-15,y-85,400,45);
	draw_text(x-10,y-80, "Each house will cost resources.");
	draw_text(x-10,y-64, "Resources can be collected around the town.")
}

	
if (txtbox==4)
{
	draw_sprite_stretched(spr_guibg_blue,0,x-15,y-85,285,45);
	draw_text(x-10,y-80, "Can you build houses");
	draw_text(x-10,y-64, "for each dragon in the village?")
}
if (txtbox==5)
{
	draw_sprite_stretched(spr_guibg_blue,0,x-15,y-85,270,45);
	draw_text(x-10,y-80, "Come back to me when each");
	draw_text(x-10,y-64, "house is built for a reward!")
}

if (txtbox==6)
{
	draw_sprite_stretched(spr_guibg_blue,0,x-15,y-85,360,45);
	draw_text(x-10,y-80, "Amazing work on the houses!");
	draw_text(x-10,y-64, "Here is a golden star for your work!")
}