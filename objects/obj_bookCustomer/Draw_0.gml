/// @description Insert description here
// You can write your code in this editor

draw_self()

//taking book
if(txtbox = 1)
{
	draw_sprite_stretched(spr_guibg_blue,0,x-15,y-101,200,60);
	draw_text(x-10,y-96, "I want the book");
	draw_text(x-10,y-80, order_choice);
	draw_text(x-10,y-64, "Tip " +string(taking_book_tip));
}
//returning book
if(txtbox = 2)
{
	draw_sprite_stretched(spr_guibg_blue,0,x-15,y-101,200,60);
	draw_text(x-10,y-96, "I am returning");
	draw_text(x-10,y-80, order_choice);
	draw_text(x-10,y-64, "Tip " + string(return_customer_tip));
}
if(txtbox = 3){
	draw_sprite_stretched(spr_guibg_blue,0,x-15,y-85,150,45);
	draw_text(x-10,y-80, "Return Basket");
	draw_text(x-10,y-64, "Too full");
}
if(txtbox = 4){
	draw_sprite_stretched(spr_guibg_blue,0,x-15,y-69,190,35);
	draw_text(x-10,y-64, "Waiting for book...");
}
if(txtbox = 5){
	draw_sprite_stretched(spr_guibg_blue,0,x-15,y-85,190,45);
	draw_text(x-10,y-80, "Thanks for the book!");
	draw_text(x-10,y-64, "Tip " + string(printed_tip));
}
if(txtbox = 6){
	draw_sprite_stretched(spr_guibg_blue,0,x-15,y-85,190,45);
	draw_text(x-10,y-80, "That took a while");
	draw_text(x-10,y-64, "Tip " +  string(printed_tip));
}
