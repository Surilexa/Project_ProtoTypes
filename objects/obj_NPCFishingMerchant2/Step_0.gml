/// @description Insert description here
// You can write your code in this editor
randomize();

//if the player interacts with the dragon
if (obj_pcHorse.key_int1==1)  && (distance_to_object(obj_pcHorse)<=range) && (distance_to_point(mouse_x,mouse_y)<=range)
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
			questReward = fetchItemAmount * (obj_fishingGameGUI.lemonadeCost + 2);
		}
		else if(fetchItem == "Fish")
		{
			fetchItemAmount = irandom_range(4, 8);
			questReward = fetchItemAmount * (5);
		}
		//give quest
		obj_fishingGameGUI.addQuest(questName);
		txtbox = 1;
	}
	else if(givenQuest == true && image_index = 2)
	{
		txtbox = 4;
	}
	//have enough lemonade to complete the quest
	else if(givenQuest == true && fetchItem == "Fish" && obj_pcHorse.fish >= fetchItemAmount)
	{
		txtbox = 2;
		//take the required resource away from player
		obj_pcHorse.fish -= fetchItemAmount;
		
		//give the player the gold reward
		obj_pcHorse.money += questReward;
		
		//reset the npc
		image_index = 2;
		obj_fishingGameGUI.removeQuest(questName);
		alarm[0] = 60 * questCooldown; 
	}
	//if the player does not have enough resources
	else
	{
		txtbox = 3;
	}
}

if (txtbox<>0) && (distance_to_object(obj_pcHorse)>range)
{
	txtbox = 0;
}



