/// @description Insert description here
// You can write your code in this editor




if (obj_pcCoalRobot.key_int1==1)  && (distance_to_object(obj_pcCoalRobot)<=range)
{
	
	//show the confirm message
	if(first_time == 0)
	{
		txtbox = 1;
		first_time = 1;
	}
	else if (txtbox == 1 && obj_timeOfDay.end_of_day)
	{
		txtbox = 2;
	}
	//confirm mining the crystal
	else if(txtbox == 1 && obj_timeOfDay.end_of_day == false)
	{
		txtbox = 0;
		obj_RobotManager.coal_mined_today++;
		first_time =0;
		instance_deactivate_object(self);
	}
}
if (txtbox<>0) && (distance_to_object(obj_pcCoalRobot)>range)
{
	txtbox = 0;
	first_time = 0;
}
