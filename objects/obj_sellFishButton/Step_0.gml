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
	obj_PCunicorn.goldCoins += obj_GoldCostGainedFish.goldGainedFromSelling;
	
	//decrease coconut amount from player
	obj_PCunicorn.goldFish -= obj_SellGoldfish.sellAmount;
	obj_PCunicorn.carp -= obj_SellCarp.sellAmount;
	obj_PCunicorn.catfish -= obj_SellCatfish.sellAmount;
	
	//reset purchase amounts for each material
	obj_SellGoldfish.sellAmount = 0;
	obj_SellCarp.sellAmount = 0;
	obj_SellCatfish.sellAmount = 0;
		
}






