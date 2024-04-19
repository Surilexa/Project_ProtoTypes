/// @description Insert description here
// You can write your code in this editor


//if crystal robot is on 
if (crystal_robot_enter == 1 && distance_to_object(obj_pcCrystalRobot)<=range)
{
	crystal_robot_enter = 0;
	crystal_robot_is_on = 1;
	obj_pcCrystalRobot.drain_power = false;
}
if(crystal_robot_enter == 0 && distance_to_object(obj_pcCrystalRobot)>range)
{
	crystal_robot_enter = 1;
	txtbox = 0;
	crystal_robot_is_on = 0;
	image_index = 0;
	obj_pcCrystalRobot.drain_power = true;
	obj_pcCrystalRobot.alarm[0] = obj_pcCrystalRobot.drain_rate;
	
	show_debug_message("Off");
}
//if coal robot is on 
if (coal_robot_enter == 1 && distance_to_object(obj_pcCoalRobot)<=range)
{
	coal_robot_enter = 0;
	coal_robot_is_on = 1;
	obj_pcCoalRobot.drain_power = false;
}
if(coal_robot_enter == 0 && distance_to_object(obj_pcCoalRobot)>range)
{
	coal_robot_enter = 1;
	txtbox = 0;
	coal_robot_is_on = 0;
	image_index = 0;
	obj_pcCoalRobot.drain_power = true;
	obj_pcCoalRobot.alarm[0] = obj_pcCoalRobot.drain_rate;
	show_debug_message("Off");
}

//robots are on the power block
if(coal_robot_is_on = 1 or crystal_robot_is_on = 1)
{
	txtbox = 1;
	robot_is_present = 1;
	image_index = 1;
}
else
{
	robot_is_present = 0;
}

