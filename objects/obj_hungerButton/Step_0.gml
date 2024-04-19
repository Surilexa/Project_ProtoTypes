/// @description Insert description here
// You can write your code in this editor




if (mouse_check_button_released(mb_right)) && (position_meeting(mouse_x, mouse_y, self))
{
	// if the player is not full hunger
	if(obj_hungerBar.hunger != obj_hungerBar.maxHunger && obj_PCunicorn.apple > 0)
	{
		//if the hunger goes above max
		if(obj_hungerBar.hunger + hungerValue > obj_hungerBar.maxHunger)
		{
			obj_hungerBar.hunger = obj_hungerBar.maxHunger;
		}
		//add to hunger
		else
		{
			obj_hungerBar.hunger += hungerValue;
		}
		obj_PCunicorn.apple --;
		obj_hungerBar.alarm[0] = obj_hungerBar.hungerDecreaseRate;
	}
	
}



