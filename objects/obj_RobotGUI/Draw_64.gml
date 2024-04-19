/// @description Insert description here
// You can write your code in this editor
if(pc_ID == 1)
{
	draw_text (10,10, "Robot Manager");
}

if (pc_ID==2)
{
	draw_text (10,10, "Power: " +string(obj_pcCrystalRobot.pc2_power) + "/" + string(obj_pcCrystalRobot.maxpower));
	draw_text (10,26, "Reserve Battery: " +string(obj_pcCrystalRobot.battery) + "/" + string(obj_pcCrystalRobot.battery_max));
}

if (pc_ID==3)
{
	draw_text (10,10, "Power: " +string(obj_pcCoalRobot.pc2_power) + "/" + string(obj_pcCoalRobot.maxpower));
	draw_text (10,26, "Reserve Battery: " +string(obj_pcCoalRobot.battery)+ "/" + string(obj_pcCoalRobot.battery_max));
}

draw_text(580,10,"Day " + string(obj_RobotManager.day));

if(todays_quest == 1)
{
	draw_text(580,50,"Crystals Mined Today " + string(obj_RobotManager.crystals_mined_today));
	draw_text(580,66,"Coal Mined Today " + string(obj_RobotManager.coal_mined_today));
}

if(obj_RobotManager.daily_crystal_quest == 1 && obj_NPCWorkerManager.first_claim_today == 0)
{
	draw_text(10,210,"Daily Quest ");
	draw_text(10,226,"----------------");
	draw_text(10,242, "Mine " + string(obj_RobotManager.crystals_required) + " Crystals");
}
if(obj_RobotManager.weekly_quest = 1 && obj_RobotManager.weekly_quest_completed == 0)
{
	draw_text(10,142,"Weekly Quest ");
	draw_text(10,158,"----------------");
	draw_text(10,174, "Complete " + string(obj_RobotManager.weekly_quest_required) + " Daily Quests");
}
