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
	if(obj_ResourceCostPineapple.costToBuyPineapple <= obj_PCunicorn.pineapple && obj_ResourceCostWatermelon.costToBuyWatermelon <= obj_PCunicorn.watermelon)
	{
		//subtract the cost to buy from the players gold amount
		obj_PCunicorn.watermelon -= obj_ResourceCostWatermelon.costToBuyWatermelon;
		obj_PCunicorn.pineapple -= obj_ResourceCostPineapple.costToBuyPineapple;
		//give player the merchandise
		obj_PCunicorn.pineappleJuice += obj_BuyPineappleDrinkAmount.purchaseAmount;
		
		obj_PCunicorn.watermelonJuice += obj_BuyWatermelonDrinkAmount.purchaseAmount;
		
		
		//reset purchase amounts for each material
		obj_BuyPineappleDrinkAmount.purchaseAmount = 0;
		obj_BuyWatermelonDrinkAmount.purchaseAmount = 0;
		
	}
}






