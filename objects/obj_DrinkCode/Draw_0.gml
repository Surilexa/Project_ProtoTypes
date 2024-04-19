/// @description Insert description here
// You can write your code in this editor

// start draw

draw_self()

if (textline=1)
	{
	draw_sprite_stretched(spr_guibg_blue,0,x-16,y-36,170,24);
	draw_text(x-16,y-36, "Making Drink " +string(dieroll));
	}

if (textline==2)
	{
	dccheck = obj_PCsummer2.current_drink_difficulty;
	draw_sprite_stretched(spr_guibg_blue,0,x-20,y-96,205,86);
	draw_text(x-16,y-36, "Total= " +string(total) );
	draw_text(x-16,y-48, "Customer Order= " +string(dccheck)+".");
	draw_text(x-16,y-60, "Order Manual Bonus= "+string(obj_PCsummer2.manual) +".");
	draw_text(x-16,y-72, "Big Mixer= " +string(obj_PCsummer2.big_mixer));
	draw_text(x-16,y-84, "Experience= " +string(obj_PCsummer2.total_drinks_served));
	draw_set_color(c_red);
	draw_text(x-16,y-96, "Drink Quality= " +string(dieroll));
	draw_set_color(c_white);
	}

else if (textline==3)
	{
	draw_sprite_stretched(spr_guibg_blue,0,x-20,y-96,205,86);
	draw_text(x-16,y-36, "Total= " +string(total) );
	draw_text(x-16,y-48, "Customer Order= " +string(dccheck)+".");
	draw_text(x-16,y-60, "Order Manual Bonus= "+string(obj_PCsummer2.manual) +".");
	draw_text(x-16,y-72, "Big Mixer= " +string(obj_PCsummer2.big_mixer));
	draw_text(x-16,y-84, "Experience= " +string(obj_PCsummer2.total_drinks_served));
	draw_text(x-16,y-96, "Drink Quality= " +string(dieroll));
	}

else if (textline ==0)
	{
	draw_text(x-16,y-16, "");
	}

// end draw
