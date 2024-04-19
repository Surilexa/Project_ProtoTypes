/// @description Insert description here
// You can write your code in this editor


//clock calculator
minute_single++;
if(begining_of_morning == true && end_of_day == false)
{
	if(obj_RobotManager.daily_crystal_quest == 0)
	{
		minute_length = 60;
	}
	if(obj_RobotManager.daily_crystal_quest == 1)
	{
		begining_of_morning = false;
		minute_length = hour_length / 60;
	}
}
if(minute_single == 10)
{
	minute_single = 0;
	minute_double ++;
	if(minute_double == 6)
	{
		hour++;
		minute_double = 0;
		//if it turns to PM
		if(morning && hour == 12)
		{
			morning = false;
		}
		//if it goes past noon
		if(hour == 13)
		{
			hour = 1;
		}
		if(hour == after_hour_time && !morning)
		{
			minute_length = 60;
			end_of_day = true;
		}
		//if the player spends too long after hours
		if(hour == after_hour_time + 2 && end_of_day)
		{
			obj_RobotManager.reset_day = 1;
		}
	}
}


alarm[0] = minute_length;


	
