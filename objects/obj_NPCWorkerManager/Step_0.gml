/// @description Insert description here
// You can write your code in this editor
randomize();
if (obj_pcController.key_int1_press==1)  && (distance_to_object(obj_pcController)<=range)
{
	//if the daily quest is claimed and the crystals mined today are not enough
	if(obj_RobotManager.daily_crystal_quest = 1 && obj_RobotManager.crystals_required > obj_RobotManager.crystals_mined_today)
	{
		txtbox = 5;
	}
	//if the  daily quest is claimed and the crystals mined today are enough
	else if (obj_RobotManager.daily_crystal_quest = 1 && obj_RobotManager.crystals_required <= obj_RobotManager.crystals_mined_today)
	{
		txtbox = 6;
		if(first_claim_today == 0)
		{
			obj_RobotManager.daily_quest_completed++;
			image_index = 0;
			first_claim_today = 1;
		}
	}
	else if(first_time)
	{
		txtbox = 1;
		first_time = false;
	}
	else if(txtbox == 1 && obj_RobotManager.weekly_quest == 0)
	{
		txtbox = 2;
	}
	else if(txtbox == 1 && obj_RobotManager.weekly_quest == 1)
	{
		txtbox = 3;
	}
	else if(txtbox == 3)
	{
		obj_RobotManager.daily_crystal_quest = 1;
		obj_RobotManager.crystals_required = irandom_range(8, 11);
		txtbox = 4;
	}
}

if (txtbox<>0) && (distance_to_object(obj_pcController)>range)
{
	txtbox = 0;
	first_time = true;
}