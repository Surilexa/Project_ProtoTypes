/// @description Insert description here
// You can write your code in this editor


draw_self();

if(txtbox = 1){
	draw_sprite_stretched(spr_guibg_blue,0,x-15,y-65,225,35);
	draw_text(x-10,y-60,"No book to drop off");
}
if (txtbox = 2)
{
	draw_sprite_stretched(spr_guibg_blue,0,x-15,y-89,175,45);
	draw_text(x-10,y-84,"Dropped off -");
	draw_text(x-10,y-60, obj_bookCustomer.order_choice);
}

