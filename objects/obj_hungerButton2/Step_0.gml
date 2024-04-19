/// @description Insert description here
// You can write your code in this editor




if (mouse_check_button_released(mb_right)) && (position_meeting(mouse_x, mouse_y, self))
{
	// if the player is not full hunger
	if(obj_hungerBar2.hunger != obj_hungerBar2.maxHunger && obj_pcHorse.fish > 0)
	{
		//if the hunger goes above max
		if(obj_hungerBar2.hunger + hungerValue > obj_hungerBar2.maxHunger)
		{
			obj_hungerBar2.hunger = obj_hungerBar2.maxHunger;
		}
		//add to hunger
		else
		{
			obj_hungerBar2.hunger += hungerValue;
		}
		obj_pcHorse.fish --;
		obj_hungerBar2.alarm[0] = obj_hungerBar2.hungerDecreaseRate;
	}
	
}



