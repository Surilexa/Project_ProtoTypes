/// @description Insert description here
// You can write your code in this editor

draw_self();

if (txtbox==1)
{
	if(fetchItem == "pineapplejuice" || fetchItem == "watermelonjuice")
	{
		draw_sprite_stretched(spr_dialogBox3,0,x-20,y-21,315,50);
		draw_text(x-10,y-16, "Hello!");
		draw_text(x-10,y, "I would like " + string(fetchItemAmount) + " " + string(fetchItem))
	}
	else
	{
		draw_sprite_stretched(spr_dialogBox3,0,x-20,y-21,280,50);
		draw_text(x-10,y-16, "Hello!");
		draw_text(x-10,y, "I would like " + string(fetchItemAmount) + " " + string(fetchItem))
	}
	
}
if (txtbox==2)
{
	if(fetchItem == "pineapplejuice" || fetchItem == "watermelonjuice")
	{
		draw_sprite_stretched(spr_dialogBox3,0,x-20,y-21,315,50);
		draw_text(x-10,y-16, "Thank you for the " + string(fetchItem));
		draw_text(x-10,y, "Reward " + string(questReward) + " Gold Coins");
	}
	else
	{
		draw_sprite_stretched(spr_dialogBox3,0,x-20,y-21,280,50);
		draw_text(x-10,y-16, "Thank you for the " + string(fetchItem));
		draw_text(x-10,y, "Reward " + string(questReward) + " Gold Coins");
	}
	
}	
	
if (txtbox==3)
{
	draw_sprite_stretched(spr_dialogBox3,0,x-20,y-5,220,30);
	draw_text(x-10,y, "Not enough for my order");
}
if (txtbox==4)
{
	draw_sprite_stretched(spr_dialogBox3,0,x-20,y-5,180,30);
	draw_text(x-10,y, "Quest Cooldown " + string(int64(alarm_get(0)/60)));
}