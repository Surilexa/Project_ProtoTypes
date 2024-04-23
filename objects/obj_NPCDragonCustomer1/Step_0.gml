/// @description Insert description here
// You can write your code in this editor
randomize();

if(obj_NPCDrinkShop.isBuilt)
{
	fetchItemsArray = ["coconut", "pineapple", "watermelon", "goldfish","carp", "catfish","watermelonjuice", "pineapplejuice"];
}
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
		if(fetchItem == "coconut")
		{
			fetchItemAmount = irandom_range(4, 6);
			questReward = fetchItemAmount * coconutCost;
		}
		else if(fetchItem == "pineapple")
		{
			fetchItemAmount = irandom_range(2, 4);
			questReward = fetchItemAmount * pineappleCost;
		}
		else if(fetchItem == "watermelon")
		{
			fetchItemAmount = irandom_range(2, 4);
			questReward = fetchItemAmount * watermelonCost;
		}
		else if(fetchItem == "goldfish")
		{
			fetchItemAmount = irandom_range(1, 3);
			questReward = fetchItemAmount * goldfishCost;
		}
		else if(fetchItem == "carp")
		{
			fetchItemAmount = irandom_range(1, 2);
			questReward = fetchItemAmount * carpCost;
		}
		else if(fetchItem == "catfish")
		{
			fetchItemAmount = 1;
			questReward = fetchItemAmount * catfishCost;
		}
		else if(fetchItem == "watermelonjuice")
		{
			fetchItemAmount = 1;
			questReward = fetchItemAmount * watermelonJuiceCost;
		}
		else if(fetchItem == "pineapplejuice")
		{
			fetchItemAmount = 1;
			questReward = fetchItemAmount * pineappleJuiceCost;
		}
		//give quest
		obj_fishingGameGUI2.addQuest(questName);
		txtbox = 1;
	}
	//if the player has enough resources
	else if (givenQuest == true && !cooldown)
	{
		if(fetchItem == "coconut" && obj_PCunicorn.coconut >= fetchItemAmount)
		{
			txtbox = 2;
			//take the required resource away from player
			obj_PCunicorn.coconut -= fetchItemAmount;
		
			//give the player the gold reward
			obj_PCunicorn.goldCoins += questReward;
		
			//reset the npc
			cooldown = true;
			alarm[0] = questCooldown;
			obj_fishingGameGUI2.removeQuest(questName);
		}
		else if(fetchItem == "pineapple" && obj_PCunicorn.pineapple >= fetchItemAmount)
		{
			txtbox = 2;
			//take the required resource away from player
			obj_PCunicorn.pineapple -= fetchItemAmount;
		
			//give the player the gold reward
			obj_PCunicorn.goldCoins += questReward;
		
			//reset the npc
			cooldown = true;
			alarm[0] = questCooldown;
			obj_fishingGameGUI2.removeQuest(questName);

		}
		else if(fetchItem == "watermelon" && obj_PCunicorn.watermelon >= fetchItemAmount)
		{
			txtbox = 2;
			//take the required resource away from player
			obj_PCunicorn.watermelon -= fetchItemAmount;
		
			//give the player the gold reward
			obj_PCunicorn.goldCoins += questReward;
		
			//reset the npc
			cooldown = true;
			alarm[0] = questCooldown;
			obj_fishingGameGUI2.removeQuest(questName);
			
		}
		else if(fetchItem == "goldfish"  && obj_PCunicorn.goldFish >= fetchItemAmount)
		{
			txtbox = 2;
			//take the required resource away from player
			obj_PCunicorn.goldFish -= fetchItemAmount;
		
			//give the player the gold reward
			obj_PCunicorn.goldCoins += questReward;
		
			//reset the npc
			cooldown = true;
			alarm[0] = questCooldown;
			obj_fishingGameGUI2.removeQuest(questName);
		}
		else if(fetchItem == "carp" && obj_PCunicorn.carp >= fetchItemAmount)
		{
			txtbox = 2;
			//take the required resource away from player
			obj_PCunicorn.carp -= fetchItemAmount;
		
			//give the player the gold reward
			obj_PCunicorn.goldCoins += questReward;
		
			//reset the npc
			cooldown = true;
			alarm[0] = questCooldown;
			obj_fishingGameGUI2.removeQuest(questName);
		}
		else if(fetchItem == "catfish" && obj_PCunicorn.catfish >= fetchItemAmount)
		{
			txtbox = 2;
			//take the required resource away from player
			obj_PCunicorn.catfish -= fetchItemAmount;
		
			//give the player the gold reward
			obj_PCunicorn.goldCoins += questReward;
		
			//reset the npc
			cooldown = true;
			alarm[0] = questCooldown;
			obj_fishingGameGUI2.removeQuest(questName);
		}
		else if(fetchItem == "watermelonjuice" && obj_PCunicorn.watermelonJuice >= fetchItemAmount)
		{
			txtbox = 2;
			//take the required resource away from player
			obj_PCunicorn.watermelonJuice -= fetchItemAmount;
		
			//give the player the gold reward
			obj_PCunicorn.goldCoins += questReward;
		
			//reset the npc
			cooldown = true;
			alarm[0] = questCooldown;
			obj_fishingGameGUI2.removeQuest(questName);
		}
		else if (fetchItem == "pineapplejuice" && obj_PCunicorn.pineappleJuice >= fetchItemAmount)
		{
			txtbox = 2;
			//take the required resource away from player
			obj_PCunicorn.pineappleJuice -= fetchItemAmount;
		
			//give the player the gold reward
			obj_PCunicorn.goldCoins += questReward;
		
			//reset the npc
			cooldown = true;
			alarm[0] = questCooldown;
			obj_fishingGameGUI2.removeQuest(questName);
		}
	}
	else if(givenQuest == true && cooldown)
	{
		txtbox = 4;
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



