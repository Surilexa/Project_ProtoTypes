/// @description Insert description here
// You can write your code in this editor

if (obj_TopDownPC.key_int1==1)  && (distance_to_object(obj_TopDownPC)<=range) && (distance_to_point(mouse_x,mouse_y)<=range)
{
	if(first_time)
	{
		//if they have built all the houses
		if (obj_TopDownPC.housesBuilt >= housesRequired && obj_TopDownPC.dragonHouseQuest = true)
		{
			txtbox = 6;
			first_time = false;
			image_index = 0;
			obj_TopDownPC.dragonHouseQuest = false;
			array_delete(obj_TopDownGUI.questArray, array_get_index(obj_TopDownGUI.questArray, "DragonQuest"), 1);
			obj_TopDownGUI.currentStars++;
		}
		//intro to the game
		else
		{
			txtbox = 1;
			first_time = false;
		}
		
	}
	//not first time
	else
	{
		//show tutorial
		if(obj_TopDownPC.housesBuilt < housesRequired)
		{
			if(first_time == false && txtbox <= 1)
			{
				txtbox = 2;
			}
			else if (txtbox == 2)
			{
				txtbox =3;
			}
			else if (txtbox == 3)
			{
				txtbox =4;
			}
			else if (txtbox == 4)
			{
				txtbox = 5;
				obj_TopDownPC.dragonHouseQuest = true;
				if(giveQuest == 0)
				{
					array_set(obj_TopDownGUI.questArray, array_length(obj_TopDownGUI.questArray), "DragonQuest");
					giveQuest ++;
				}
				
			}
		}
	}
}

if (txtbox<>0) && (distance_to_object(obj_TopDownPC)>range)
{
	txtbox = 0;
	if(giveQuest == 1 && obj_TopDownPC.dragonHouseQuest = false)
	{
		first_time = false;
	}
	else
	{
		first_time = true;
	}

}



