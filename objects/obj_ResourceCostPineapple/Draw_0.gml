/// @description Insert description here
// You can write your code in this editor


draw_self();

//show_debug_message(visible);

//draw_sprite_stretched(spr_guibg_blue,0,x,y,45,45);
if(costToBuyPineapple < 10)
{
	draw_text(x + 12, y+ 6.5, costToBuyPineapple);
}
else if(costToBuyPineapple < 100)
{
	draw_text(x + 8, y+ 6.5, costToBuyPineapple);
}
else if(costToBuyPineapple < 1000)
{
	draw_text(x + 4, y+ 6.5, costToBuyPineapple);
}
else
{
	draw_text(x, y+ 6.5, costToBuyPineapple);
}
