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
	if(obj_GoldCostApple.costToBuyMaterials <= obj_PCunicorn.goldCoins)
	{
		//subtract the cost to buy from the players gold amount
		obj_PCunicorn.goldCoins -= obj_GoldCostApple.costToBuyMaterials;
		
		//give player the merchandise
		
		obj_PCunicorn.apple += obj_BuyAppleAmount.purchaseAmount;
		show_debug_message(string(obj_PCunicorn.apple) + " Apple")
		
		obj_PCunicorn.gardenTool += obj_BuyToolsAmount.purchaseAmount;
		show_debug_message(string(obj_PCunicorn.gardenTool) + " Tool")
		
		
		//reset purchase amounts for each material
		obj_BuyAppleAmount.purchaseAmount = 0;
		obj_BuyToolsAmount.purchaseAmount = 0;
		
		show_debug_message(string(obj_PCunicorn.goldCoins))
	}
}






