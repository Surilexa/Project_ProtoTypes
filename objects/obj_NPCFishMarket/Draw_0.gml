/// @description Insert description here
// You can write your code in this editor

draw_self();
if(txtbox == 1)
{
	draw_sprite_stretched(spr_dialogBox2, 0, x -120, y - 92, 330, 100)
	draw_text(x - 95, y - 76, "Would you like to purchase");
	draw_text(x - 95, y - 60, "Fish Market for: " + string(costToBuild) + " Gold Coins?");
	draw_text(x - 95, y - 28, "LMB confirm?" + "      RMB cancel");
}



