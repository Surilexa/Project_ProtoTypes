/// @description Insert description here
// You can write your code in this editor


draw_self();


if (txtbox==1)
{
	draw_sprite_stretched(spr_guibg_blue,0,x-15,y-21,310,45);
	draw_text(x-10,y-16, "Hello!");
	draw_text(x-10,y, "I would like " + string(fetchItemAmount) + " " + string(fetchItem))
}
if (txtbox==2)
{
	draw_sprite_stretched(spr_guibg_blue,0,x-15,y-21,320,45);
	draw_text(x-10,y-16, "Thank you for the " + string(fetchItem));
	draw_text(x-10,y, "Reward " + string(questReward) + " Gold Coins");
}	
	
if (txtbox==3)
{
	draw_sprite_stretched(spr_guibg_blue,0,x-15,y-5,220,25);
	draw_text(x-10,y, "Not enough for my order");
}