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
	if(txtbox == 1 or txtbox == 2)
	{
		//if the battery is full
		if(obj_pcCrystalRobot.battery == obj_pcCrystalRobot.battery_max)
		{
			txtbox = 4;
		}
		//if there is reserve coal to spend
		else if(obj_RobotManager.coal_mined_total > 0)
		{
			if(obj_pcCrystalRobot.battery < obj_pcCrystalRobot.battery_max)
			{
				obj_RobotManager.coal_mined_total--;
				energy_needed = obj_pcCrystalRobot.battery_max - obj_pcCrystalRobot.battery;
				//coal == 10 energy
				
				//if the coal over fills the needed energy
				if(coal_value > energy_needed)
				{
					obj_pcCrystalRobot.battery = obj_pcCrystalRobot.battery_max;
					new_power = obj_pcCrystalRobot.battery;
				}
				else if (coal_value < energy_needed)
				{
					obj_pcCrystalRobot.battery += coal_value;
					new_power = obj_pcCrystalRobot.battery;
				}
			}
			txtbox = 2;
		}
		//no coal to spend
		else if (obj_RobotManager.coal_mined_total == 0)
		{
			txtbox =3;
		}

	}
	
}

if (txtbox<>0) && (distance_to_object(obj_pcController)>range)
{
	txtbox = 0;
	first_time = 0;
}