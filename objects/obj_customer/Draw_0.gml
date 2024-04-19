/// @description Insert description here
// You can write your code in this editor


draw_self()

if (txtbox==1 && obj_PCsummer2.is_drink)
	{
		draw_sprite_stretched(spr_guibg_blue,0,x-15,y-85,155,45);
		draw_text(x-10,y-80, "Drink Difficulty");
		draw_text(x-10,y-64, "       " + string(obj_customer.drink_diff));
	}
else if (txtbox==1 && obj_PCsummer2.is_food)
	{
		draw_sprite_stretched(spr_guibg_blue,0,x-15,y-85,155,45);
		draw_text(x-10,y-80, "Food Difficulty");
		draw_text(x-10,y-64, "       " + string(obj_customer.drink_diff));
	}	
	
if (txtbox==2 && obj_PCsummer2.is_drink)
	{
		draw_sprite_stretched(spr_guibg_blue,0,x-15,y-65,160,35);
		draw_text(x-10,y-60, "I want my drink");
	}
else if (txtbox==2 && obj_PCsummer2.is_food)
	{
		draw_sprite_stretched(spr_guibg_blue,0,x-15,y-65,160,35);
		draw_text(x-10,y-60, "I want my food");
	}	
if (txtbox==3 && obj_PCsummer2.is_drink)
	{
		draw_sprite_stretched(spr_guibg_blue,0,x-15,y-65,210,35);
		draw_text(x-10,y-60, "Thanks for the Drink");
	}
else if (txtbox==3 && obj_PCsummer2.is_food)
	{
		draw_sprite_stretched(spr_guibg_blue,0,x-15,y-65,210,35);
		draw_text(x-10,y-60, "Thanks for the food");
	}
if (txtbox==4)
	{
		draw_sprite_stretched(spr_guibg_blue,0,x-15,y-85,180,45);
		draw_text(x-10,y-80, "Order too Difficult");
		draw_text(x-10,y-64, "        " + string(obj_customer3.drink_diff));
	}