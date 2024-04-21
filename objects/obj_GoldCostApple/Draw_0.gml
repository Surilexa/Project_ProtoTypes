/// @description Insert description here
// You can write your code in this editor


draw_self();

//show_debug_message(visible);

//draw_sprite_stretched(spr_guibg_blue,0,x,y,45,45);
if(costToBuyMaterials < 10)
{
	draw_text(x + 12, y+ 6.5, costToBuyMaterials);
}
else if(costToBuyMaterials < 100)
{
	draw_text(x + 8, y+ 6.5, costToBuyMaterials);
}
else if(costToBuyMaterials < 1000)
{
	draw_text(x + 4, y+ 6.5, costToBuyMaterials);
}
else
{
	draw_text(x, y+ 6.5, costToBuyMaterials);
}
