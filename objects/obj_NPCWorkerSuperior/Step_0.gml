/// @description Insert description here
// You can write your code in this editor
randomize();
if (obj_pcController.key_int1_press==1)  && (distance_to_object(obj_pcController)<=range)
{
	if(obj_RobotManager.weekly_quest_completed == 1)
	{
		txtbox = 7;
	}
	//if the weekly quest is claimed and the daily quest completed are not enough
	else if(obj_RobotManager.weekly_quest = 1 && obj_RobotManager.daily_quest_completed < obj_RobotManager.weekly_quest_required)
	{
		txtbox = 5;
	}
	//if the weekly quest is claimed and the daily quest completed are enough
	else if (obj_RobotManager.weekly_quest = 1 && obj_RobotManager.daily_quest_completed >= obj_RobotManager.weekly_quest_required)
	{
		txtbox = 6;
		if(first_claim_today == 0)
		{
			obj_RobotManager.weekly_quest_completed++;
			image_index = 0;
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
	//give the player the weekly quest
	else if(txtbox == 2)
	{
		txtbox = 3;
		obj_RobotManager.weekly_quest = 1;
		image_index = 1;
	}
}

if (txtbox<>0) && (distance_to_object(obj_pcController)>range)
{
	txtbox = 0;
	first_time = true;
}