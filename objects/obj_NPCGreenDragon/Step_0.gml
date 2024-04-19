/// @description Insert description here
// You can write your code in this editor
randomize();

//if the player interacts with the dragon
if (obj_PCunicorn.key_int1==1)  && (distance_to_object(obj_PCunicorn)<=range) && (distance_to_point(mouse_x,mouse_y)<=range)
{

	//if the npc has not given their quest yet
	if (givenQuest == false)
	{
		image_index = 1;
		givenQuest = true;
		//setup the type of quest the dragon wants
		fetchItem = array_get(fetchItemsArray, irandom_range(0, array_length(fetchItemsArray)-1));
		if(fetchItem == "Lemonade")
		{
			fetchItemAmount = irandom_range(1, 3);
			questReward = fetchItemAmount * (obj_TopDownGUI2.lemonadeCost + 2);
		}
		else if(fetchItem == "Watermelon Juice")
		{
			fetchItemAmount = irandom_range(1, 2);
			questReward = fetchItemAmount * (obj_TopDownGUI2.WatermelonCost + 3);
		}
		else if(fetchItem == "Coconut")
		{
			fetchItemAmount = irandom_range(2, 4);
			questReward = fetchItemAmount * (3);
		}
		//give quest
		obj_TopDownGUI2.addQuest(questName);
		txtbox = 1;
	}
	//have enough lemonade to complete the quest
	else if(givenQuest == true && fetchItem == "Lemonade" && obj_PCunicorn.lemonade >= fetchItemAmount)
	{
		txtbox = 2;
		//take the required resource away from player
		obj_PCunicorn.lemonade -= fetchItemAmount;
		
		//give the player the gold reward
		obj_PCunicorn.goldCoins += questReward;
		
		//reset the npc
		givenQuest = false;
		obj_TopDownGUI2.removeQuest(questName);
		image_index = 0;
	}
	//have enough watermelon to complete the quest
	else if(givenQuest == true && fetchItem == "Watermelon Juice" && obj_PCunicorn.watermelonJuice >= fetchItemAmount)
	{
		txtbox = 2;
		//take the required resource away from player
		obj_PCunicorn.watermelonJuice -= fetchItemAmount;
		
		//give the player the gold reward
		obj_PCunicorn.goldCoins += questReward;
		
		//reset the npc
		givenQuest = false;
		obj_TopDownGUI2.removeQuest(questName);
		image_index = 0;
	}
	//have enough coconut to complete the quest
	else if(givenQuest == true && fetchItem == "Coconut" && obj_PCunicorn.coconut >= fetchItemAmount)
	{
		txtbox = 2;
		//take the required resource away from player
		obj_PCunicorn.coconut -= fetchItemAmount;
		
		//give the player the gold reward
		obj_PCunicorn.goldCoins += questReward;
		
		//reset the npc
		givenQuest = false;
		obj_TopDownGUI2.removeQuest(questName);
		image_index = 0;
	}
	//if the player does not have enough resources
	else
	{
		txtbox = 3;
	}
}

if (txtbox<>0) && (distance_to_object(obj_PCunicorn)>range)
{
	txtbox = 0;
}



