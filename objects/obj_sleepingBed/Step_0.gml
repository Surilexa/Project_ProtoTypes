/// @description Insert description here
// You can write your code in this editor

if (obj_pcController.key_int1_press==1)  && (distance_to_object(obj_pcController)<=range)
{
	
	//if sleep is available and the player confirms sleep
	if(obj_timeOfDay.end_of_day && txtbox = 1)
	{
		obj_RobotManager.reset_day = 1;
		txtbox = 3;
	}
	else if(obj_NPCWorkerManager.first_claim_today == 1 && txtbox == 1)
	{
		obj_RobotManager.reset_day = 1;
		txtbox = 3;
	}
	else if (obj_timeOfDay.end_of_day == false)
	{
		txtbox = 2;
	}
}
if (distance_to_object(obj_pcController)<=range)
{
	if(first_time == 0)
	{
		first_time = 1;
		txtbox = 1;
	}
}
if (txtbox<>0) && (distance_to_object(obj_pcController)>range)
{
	txtbox = 0;
	first_time = 0;
}