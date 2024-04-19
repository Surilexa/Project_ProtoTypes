/// @description Insert description here
// You can write your code in this editor

//gold coins
draw_sprite_stretched(spr_guibg_blue,0,775,10,120,40);
draw_sprite_stretched(spr_goldCoin,0,785,10,40,40);
draw_text_transformed(825, 10, string(obj_PCunicorn.goldCoins), 2,2, 0)

//resource layout for player
draw_sprite_stretched(spr_gui_grey,0,5,5,120,210);

draw_sprite_stretched(spr_coconut,0,-3,22,90,90);
draw_sprite_stretched(spr_lemonade,0,10,70,64,64);
draw_sprite_stretched(spr_watermelon,0,10,110,64,64);
draw_sprite_stretched(spr_apple,0,26,170,32,32);


draw_text(10,10, "Resources ");
draw_text(10,26, "------------");


draw_text(90,56, string(obj_PCunicorn.coconut));
draw_text(90,96, string(obj_PCunicorn.lemonade));
draw_text(90,136, string(obj_PCunicorn.watermelonJuice));
draw_text(90,176, string(obj_PCunicorn.apple));





//quest tracker
draw_sprite_stretched(spr_dialogBox1,0,645,55,250,45 + (array_length(questArray) *20));
draw_text(650,60, "Quests ");
draw_text(650,76, "--------------------------");



if(array_contains(questArray, "RedDragon"))
{
	draw_text(650,76 + ((array_get_index(questArray, "RedDragon") + 1)*20),
					"Red: " + string(obj_NPCRedDragon.fetchItem) + " " + string(obj_NPCRedDragon.fetchItemAmount));
}

if(array_contains(questArray, "BlueDragon"))
{
	draw_text(650,76 + ((array_get_index(questArray, "BlueDragon") + 1)*20),
					"Blue: " + string(obj_NPCBlueDragon.fetchItem) + " " + string(obj_NPCBlueDragon.fetchItemAmount));
}

if(array_contains(questArray, "GreenDragon"))
{
	draw_text(650,76 + ((array_get_index(questArray, "GreenDragon") + 1)*20),
					"Green: " + string(obj_NPCGreenDragon.fetchItem) + " " + string(obj_NPCGreenDragon.fetchItemAmount));
}



// END DRAW GUI


