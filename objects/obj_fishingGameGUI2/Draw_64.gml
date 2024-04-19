/// @description Insert description here
// You can write your code in this editor

//gold coins
draw_sprite_stretched(spr_guibg_blue,0,645,10,120,40);
draw_sprite_stretched(spr_goldCoin,0,640,10,40,40);
draw_text_transformed(670, 10, string(obj_pcHorse.money), 2,2, 0)

//resource layout for player
draw_sprite_stretched(spr_gui_grey,0,5,5,120,100);

draw_text(10,10, "Resources ");
draw_text(10,26, "------------");

draw_sprite_stretched(spr_fish,0, 20,40,32,32);
draw_text(90,45, string(goldFish));
draw_text(90,61, string(rainbowTrout));
draw_text(90,77, string(catfish));
draw_text(90,93, string(sharks));






//quest tracker
draw_sprite_stretched(spr_gui_grey,0,645,55,150,45 + (array_length(questArray) *20));
draw_text(650,60, "Quests ");
draw_text(650,76, "----------------");



/*if(array_contains(questArray, "RedDragon"))
{
	draw_text(650,76 + ((array_get_index(questArray, "RedDragon") + 1)*20),
					"Red: " + string(obj_NPCRedDragon.fetchItem) + " " + string(obj_NPCRedDragon.fetchItemAmount));
}*/

if(array_contains(questArray, "BlueDragon"))
{
	draw_text(650,76 + ((array_get_index(questArray, "BlueDragon") + 1)*20),
					"Blue: " + string(obj_NPCFishingMerchant.fetchItem) + " " + string(obj_NPCFishingMerchant.fetchItemAmount));
}
if(array_contains(questArray, "RedDragon"))
{
	draw_text(650,76 + ((array_get_index(questArray, "RedDragon") + 1)*20),
					"Red: " + string(obj_NPCLandlord.fetchItem) + " " + string(obj_NPCLandlord.fetchItemAmount));
}
if(array_contains(questArray, "GreenDragon"))
{
	draw_text(650,76 + ((array_get_index(questArray, "GreenDragon") + 1)*20),
					"Green: " + string(obj_NPCFishingMerchant2.fetchItem) + " " + string(obj_NPCFishingMerchant2.fetchItemAmount));
}

if(obj_pcHorse.fishingBuff == true)
{
	draw_sprite_stretched(spr_fishingBuffIcon,0, 350, 10,56,56);
}

// END DRAW GUI


