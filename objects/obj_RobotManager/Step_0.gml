/// @description Insert description here
// You can write your code in this editor


if(reset_day == 1)
{
	reset_day = 0;
	alarm[0] = 60 * 60;
	can_sleep = 1;
	
	//move robots to different caves
	if(cave == 1)
	{
		obj_pcCrystalRobot.x = obj_pcCrystalRobot.cave_spawn1x;
		obj_pcCrystalRobot.y = obj_pcCrystalRobot.cave_spawn1y;
		
		obj_pcCoalRobot.x = obj_pcCoalRobot.cave_spawn1x;
		obj_pcCoalRobot.y = obj_pcCoalRobot.cave_spawn1y;
		
		
		obj_subtractPowerBlock.x = obj_subtractPowerBlock.cave_spawn1x;
		obj_subtractPowerBlock.y = obj_subtractPowerBlock.cave_spawn1y;
		
		obj_addPowerBlock.x = obj_addPowerBlock.cave_spawn1x;
		obj_addPowerBlock.y = obj_addPowerBlock.cave_spawn1y;
		cave = 2;
	}
	else if(cave == 2)
	{
		obj_pcCrystalRobot.x = obj_pcCrystalRobot.cave_spawn2x;
		obj_pcCrystalRobot.y = obj_pcCrystalRobot.cave_spawn2y;
		
		obj_pcCoalRobot.x = obj_pcCoalRobot.cave_spawn2x;
		obj_pcCoalRobot.y = obj_pcCoalRobot.cave_spawn2y;
		
		
		obj_subtractPowerBlock.x = obj_subtractPowerBlock.cave_spawn2x;
		obj_subtractPowerBlock.y = obj_subtractPowerBlock.cave_spawn2y;
		
		obj_addPowerBlock.x = obj_addPowerBlock.cave_spawn2x;
		obj_addPowerBlock.y = obj_addPowerBlock.cave_spawn2y;
		cave = 1;
	}
	
	obj_NPCWorkerManager.first_claim_today = 0;
	
	obj_pcController.x = obj_pcController.original_spawnx;
	obj_pcController.y = obj_pcController.original_spawny;
	
	obj_pcCrystalRobot.pc2_power = obj_pcCrystalRobot.maxpower;
	obj_pcCoalRobot.pc2_power = obj_pcCoalRobot.maxpower;
	
	
	//reset battery to full or half
	if(obj_pcCrystalRobot.battery <= obj_pcCrystalRobot.battery_max/2)
	{
		obj_pcCrystalRobot.battery = obj_pcCrystalRobot.battery_max/2;
	}
	else
	{
		obj_pcCrystalRobot.battery = obj_pcCrystalRobot.battery_max;
	}
	if(obj_pcCoalRobot.battery <= obj_pcCoalRobot.battery_max/2)
	{
		obj_pcCoalRobot.battery = obj_pcCoalRobot.battery_max/2;
	}
	else
	{
		obj_pcCoalRobot.battery = obj_pcCoalRobot.battery_max;
	}
	//increase day
	day ++;
	//add todays mined crystals to total
	crystals_mined_total += crystals_mined_today;
	crystals_mined_today = 0;
	//add todays mined coal to total
	coal_mined_total += coal_mined_today;
	coal_mined_today = 0;
	
	//handle resetting the time of day clock
	instance_destroy(obj_timeOfDay);
	instance_create_depth(x,y, 0,obj_timeOfDay);
	
	//reset all resources
	instance_activate_all();
	
	//reset daily mission
	obj_RobotManager.daily_crystal_quest = 0;
	
	obj_NPCWorkerManager.image_index = 1;
	
	
	show_debug_message(string(daily_quest_completed));
	
}

