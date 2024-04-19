/// @description Insert description here
// You can write your code in this editor



if(position_meeting(mouse_x, mouse_y, self))
{
	//highlight
	image_index = 1;
}
else
{
	//unhighlight
	image_index = 0;
}

if (mouse_check_button_released(mb_left)) && (position_meeting(mouse_x, mouse_y, self))
{
	if(obj_GoldCost.costToBuyMaterials <= obj_PCunicorn.goldCoins)
	{
		//subtract the cost to buy from the players gold amount
		obj_PCunicorn.goldCoins -= obj_GoldCost.costToBuyMaterials;
		
		//give player the merchandise
		obj_PCunicorn.lemonade += obj_BuyLemonadeDrinkAmount.purchaseAmount;
		show_debug_message(string(obj_PCunicorn.lemonade) + " Lemonade")
		
		obj_PCunicorn.watermelonJuice += obj_BuyWatermelonDrinkAmount.purchaseAmount;
		show_debug_message(string(obj_PCunicorn.watermelonJuice) + " Watermelon Juice")
		
		
		//reset purchase amounts for each material
		obj_BuyLemonadeDrinkAmount.purchaseAmount = 0;
		obj_BuyWatermelonDrinkAmount.purchaseAmount = 0;
		
		show_debug_message(string(obj_PCunicorn.goldCoins))
	}
}






