/// @description Insert description here
// You can write your code in this editor

//gold coins
draw_sprite_stretched(spr_guibg_blue,0,675,10,120,40);
draw_sprite_stretched(spr_goldCoin,0,670,10,40,40);
draw_text_transformed(700, 10, string(obj_PCunicorn.goldCoins), 2,2, 0)

//quest tracker
draw_sprite_stretched(spr_gui_grey,0,600,55,195,45 + (array_length(questArray) *20));
draw_text(605,60, "Quests ");
draw_text(605,76, "---------------------");



/*if(array_contains(questArray, "RedDragon"))
{
	draw_text(650,76 + ((array_get_index(questArray, "RedDragon") + 1)*20),
					"Red: " + string(obj_NPCRedDragon.fetchItem) + " " + string(obj_NPCRedDragon.fetchItemAmount));
}*/

if(array_contains(questArray, "FishingBuffDragon"))
{
	draw_text(605,76 + ((array_get_index(questArray, "FishingBuffDragon") + 1)*20),
					"Fishing Buff: " + string(obj_NPCFishingBuff.fetchItem) + " " + string(obj_NPCFishingBuff.fetchItemAmount));
}
if(array_contains(questArray, "Customer1"))
{
	draw_text(605,76 + ((array_get_index(questArray, "Customer1") + 1)*20),
					"Red " + string(obj_NPCDragonCustomer1.fetchItem) + " " + string(obj_NPCDragonCustomer1.fetchItemAmount));
}

if(obj_PCunicorn.fishingBuff == true)
{
	draw_sprite_stretched(spr_fishingBuffIcon,0, 350, 10,56,56);
}

// END DRAW GUI


