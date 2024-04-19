/// @description Insert description here
// You can write your code in this editor

if (distance_to_object(obj_pcController)<=range && first_time == 0)
{
	
	//show the confirm message
	if(first_time == 0)
	{
		txtbox = 1;
		first_time = 1;
	}
	
	
}
if (obj_pcController.key_int1_press==1)  && (distance_to_object(obj_pcController)<=range)
{
	//if the first time interacting
	if(txtbox == 1)
	{
		show_debug_message(string(obj_subtractPowerBlock.robot_is_present) + " " + string(obj_addPowerBlock.robot_is_present));
		if(obj_subtractPowerBlock.robot_is_present && obj_addPowerBlock.robot_is_present)
		{
			//subtract power from the robot on the subtract block and give to add power robot
			if(obj_subtractPowerBlock.crystal_robot_is_on == 1)
			{
				//if there is reserve battery in the robot
				if(obj_pcCrystalRobot.battery > 0)
				{
					//if the robot has enough reserves to fill the other robot
					if(obj_pcCrystalRobot.battery > obj_pcCoalRobot.battery_max - obj_pcCoalRobot.battery)
					{
						power_transfered = obj_pcCoalRobot.battery_max - obj_pcCoalRobot.battery;
						obj_pcCrystalRobot.battery -= obj_pcCoalRobot.battery_max - obj_pcCoalRobot.battery;
						obj_pcCoalRobot.battery = obj_pcCoalRobot.battery_max;
					}
					else
					{
						power_transfered = obj_pcCrystalRobot.battery;
						obj_pcCoalRobot.battery+= obj_pcCrystalRobot.battery;
						obj_pcCrystalRobot.battery = 0;
					}
				}
				
				
			}
			//subtract power from the robot on the subtract block and give to add power robot
			else if(obj_subtractPowerBlock.coal_robot_is_on == 1)
			{
				//if there is reserve battery in the robot
				if(obj_pcCoalRobot.battery > 0)
				{
					//if the robot has enough reserves to fill the other robot
					if(obj_pcCoalRobot.battery > obj_pcCrystalRobot.battery_max - obj_pcCrystalRobot.battery)
					{
						power_transfered = obj_pcCrystalRobot.battery_max - obj_pcCrystalRobot.battery;
						obj_pcCoalRobot.battery -= obj_pcCrystalRobot.battery_max - obj_pcCrystalRobot.battery;
						obj_pcCrystalRobot.battery = obj_pcCrystalRobot.battery_max;
					}
					else
					{
						power_transfered = obj_pcCoalRobot.battery;
						obj_pcCrystalRobot.battery+= obj_pcCoalRobot.battery;
						obj_pcCoalRobot.battery = 0;
					}
				}
				
				
			}
			txtbox = 2;
		}
		//both transfer nodes are not active
		else
		{
			txtbox = 3;
		}
	}
	
}

if (txtbox<>0) && (distance_to_object(obj_pcController)>range)
{
	txtbox = 0;
	first_time = 0;
}