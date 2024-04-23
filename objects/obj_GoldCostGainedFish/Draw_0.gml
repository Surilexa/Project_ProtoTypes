/// @description Insert description here
// You can write your code in this editor


draw_self();

//show_debug_message(visible);

//draw_sprite_stretched(spr_guibg_blue,0,x,y,45,45);
if(goldGainedFromSelling < 10)
{
	draw_text(x + 11, y+ 6, goldGainedFromSelling);
}
else if(goldGainedFromSelling < 100)
{
	draw_text(x + 7, y+ 6, goldGainedFromSelling);
}
else if(goldGainedFromSelling < 1000)
{
	draw_text(x + 3, y+ 6, goldGainedFromSelling);
}
else
{
	draw_text(x + -2, y+ 6, goldGainedFromSelling);
}
