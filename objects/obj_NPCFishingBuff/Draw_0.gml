/// @description Insert description here
// You can write your code in this editor


draw_self();

if(txtbox == 1)
{
	draw_sprite_stretched(spr_dialogBox1, 0, x -130, y +116, 400, 105)
	draw_text(x - 95, y + 132, "Would you like to purchase");
	draw_text(x - 95, y + 148, "Fishing Upgrade for: " + string(fetchItemAmount) + " Gold Coins?");
	draw_text(x - 95, y + 180, "    LMB confirm?" + "      RMB cancel");
}
if (txtbox==2)
{
	draw_sprite_stretched(spr_guibg_blue,0,x-105,y+127,265,45);
	draw_text(x-100,y + 132, "Thank you for the Gold Coins");
	draw_text(x-100,y + 148, "Reward: Fishing Upgrade");
}	
	
if (txtbox==3)
{
	draw_sprite_stretched(spr_guibg_blue,0,x-105,y+127,140,25);
	draw_text(x-100,y+132, "Not enough money");
}

