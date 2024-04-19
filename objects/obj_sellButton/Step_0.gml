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
	//increase the players gold amount
	obj_PCunicorn.goldCoins += obj_GoldCostGained.goldGainedFromSelling;
	
	//decrease coconut amount from player
	obj_PCunicorn.coconut -= obj_SellCoconutAmount.sellAmount;
	
	//reset purchase amounts for each material
	obj_SellCoconutAmount.sellAmount = 0;
		
	show_debug_message(string(obj_PCunicorn.goldCoins))
}






