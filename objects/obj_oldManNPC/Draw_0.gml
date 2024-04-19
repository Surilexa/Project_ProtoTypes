/// @description Insert description here
// You can write your code in this editor



draw_self();


if (txtbox==1)
{
	draw_sprite_stretched(spr_guibg_blue,0,x-15,y-85,484,45);
	draw_text(x-10,y-80, "Hello traveler!");
	draw_text(x-10,y-64, "I'm in need of some firewood to heat these old bones.")
}
if (txtbox==2)
{
	draw_sprite_stretched(spr_guibg_blue,0,x-15,y-69,320,25);
	draw_text(x-10,y-64, "Can you bring back " + string(woodRequired) + " wood for me?");
}	
	
if (txtbox==3)
{
	draw_sprite_stretched(spr_guibg_blue,0,x-15,y-85,400,45);
	draw_text(x-10,y-80, "Thank you so much for the wood!");
	draw_text(x-10,y-64, "Here is a golden star for your reward.")
}



