/// @description Insert description here
// You can write your code in this editor


draw_self();

if (txtbox==1)
{
	draw_sprite_stretched(spr_guibg_blue,0,x-15,y-21,250,45);
	draw_text(x-10,y-16, "Hello!");
	draw_text(x-10,y, "I would like $" + string(fetchItemAmount) + " for " + string(fetchItem))
}
if (txtbox==2)
{
	draw_sprite_stretched(spr_guibg_blue,0,x-15,y-21,320,45);
	draw_text(x-10,y-16, "Thank you for the " + string(fetchItem));
	draw_text(x-10,y, "Reward Fishing Buff for " + string(questCooldown) + " seconds");
}	
	
if (txtbox==3)
{
	draw_sprite_stretched(spr_guibg_blue,0,x-15,y-5,170,25);
	draw_text(x-10,y, "Not enough money");
}
if (txtbox==4)
{
	draw_sprite_stretched(spr_guibg_blue,0,x-15,y-5,170,25);
	draw_text(x-10,y, "Rent duration " + string(int64(alarm_get(0)/60)));
}
