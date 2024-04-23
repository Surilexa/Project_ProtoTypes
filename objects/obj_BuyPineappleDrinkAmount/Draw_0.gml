/// @description Insert description here
// You can write your code in this editor


draw_self();

//show_debug_message(visible);

//draw_sprite_stretched(spr_guibg_blue,0,x,y,45,45);
if(purchaseAmount < 10)
{
	draw_text(x + 13, y+ 6, purchaseAmount);
}
else
{
	draw_text(x + 9, y+ 6, purchaseAmount);
}
