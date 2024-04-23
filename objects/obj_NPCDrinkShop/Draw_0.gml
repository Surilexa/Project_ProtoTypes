/// @description Insert description here
// You can write your code in this editor

draw_self();
if(txtbox == 1)
{
	draw_sprite_stretched(spr_dialogBox1, 0, x -130, y - 92, 350, 105)
	draw_text(x - 95, y - 76, "Would you like to purchase");
	draw_text(x - 95, y - 60, "Drink shop for: " + string(costToBuild) + " Gold Coins?");
	draw_text(x - 95, y - 28, "LMB confirm?" + "      RMB cancel");
}



