/// @description Insert description here
// You can write your code in this editor
randomize();

if(txtbox == 1 && mouse_check_button_released(mb_left) && enableChoice)
{
	//do they have enough to buy?
	if(obj_PCunicorn.goldCoins >= fetchItemAmount)
	{
		txtbox = 2;
		FishingUpgrade = true;
		obj_PCunicorn.goldCoins -= fetchItemAmount;
		obj_PCunicorn.isBusy = false;
		enableChoice = false;
		obj_PCunicorn.fishingBuff = true;
		
		//reset the npc
		image_index = 2;
		obj_fishingGameGUI2.removeQuest(questName);
	}
	else if(obj_PCunicorn.goldCoins < fetchItemAmount)
	{
		txtbox = 3;
		obj_PCunicorn.isBusy = false;
		enableChoice = false;
		image_index = 1;
	}
}
//canel the dialog
if(txtbox = 1 && mouse_check_button_released(mb_right)&& enableChoice)
{
	show_debug_message("cancel")
	txtbox = 0;
	obj_PCunicorn.isBusy = false;
	enableChoice = false;
}

//if the player interacts with the dragon
if (obj_PCunicorn.key_int1==1)  && (distance_to_object(obj_PCunicorn)<=range) && (distance_to_point(mouse_x,mouse_y)<=range && !obj_PCunicorn.fishingBuff)
{
	if(givenQuest)
	{
		txtbox = 1;
		obj_PCunicorn.isBusy = true;
		alarm[0] = 60;
	}
	//if the npc has not given their quest yet
	else if (givenQuest == false)
	{
		obj_PCunicorn.isBusy = true;
		image_index = 1;
		givenQuest = true;
		//setup the type of quest the dragon wants
		fetchItem = array_get(fetchItemsArray, irandom_range(0, array_length(fetchItemsArray)-1));
		if(fetchItem == "Fishing Upgrade")
		{
			fetchItemAmount = 100;
			//fishing buff?
		}
		
		//give quest
		obj_fishingGameGUI2.addQuest(questName);
		txtbox = 1;
		alarm[0] = 60;
	}
}

if (txtbox<>0) && (distance_to_object(obj_PCunicorn)>range)
{
	txtbox = 0;
}



