/// @description Insert description here
// You can write your code in this editor




//if the fish is still struggling then end the event and let the fish run.
if(currentProgress < maxProgress)
{
	show_debug_message("failed fishing alarm")
	obj_fishingQTEManager.endFishing = true;
	obj_fishingQTEManager.alarm[0] = 60 * 3;
	fishGotAway = true;
	show_debug_message(fishGotAway)
}
fishingAlarm = false;