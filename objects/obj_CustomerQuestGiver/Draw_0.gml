/// @description Insert description here
// You can write your code in this editor


draw_self()
if (txtbox=1)
{
	draw_sprite_stretched(spr_guibg_blue,0,x-55,y-101,230,60);
	draw_text(x-50,y-96, "Welcome Library Manager");
	draw_text(x-50,y-80, "We are looking to serve ");
	draw_text(x-50,y-64, string(obj_pcQuestGetter.customers_to_serve) + " customers today!");
}
if (txtbox=2)
{
	draw_sprite_stretched(spr_guibg_blue,0,x-55,y-85,215,45);
	draw_text(x-50,y-80, "Switch to workers using");
	draw_text(x-50,y-64, "the 'I' key");
}
if (txtbox=3)
{
	draw_sprite_stretched(spr_guibg_blue,0,x-55,y-101,270,60);
	draw_text(x-50,y-96, "The Book Mover:");
	draw_text(x-50,y-80, "works in the library");
	draw_text(x-50,y-64, "sort and grab books by name.");
}
if (txtbox=4)
{
	draw_sprite_stretched(spr_guibg_blue,0,x-55,y-85,200,45);
	draw_text(x-50,y-80, "The Front Desk:");
	draw_text(x-50,y-64, "works with customers.");
}
if (txtbox=5)
{
	draw_sprite_stretched(spr_guibg_blue,0,x-55,y-101,250,60);
	draw_text(x-50,y-96, "Customers will give tips.");
	draw_text(x-50,y-80, "If an order takes too long,");
	draw_text(x-50,y-64, "the tip will be less.");
}
if (txtbox=7)
{
	draw_sprite_stretched(spr_guibg_blue,0,x-55,y-101,175,45);
	draw_text(x-50,y-96, "Thank you");
	draw_text(x-50,y-80, "for the hard work!");
}