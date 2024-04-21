/// @description Insert description here
// You can write your code in this editor
if(obj_PCunicorn.isFishing)
{
	ymaxpos = obj_PCunicorn.centerOfScreenY+104;
	yminpos = obj_PCunicorn.centerOfScreenY-54;
	if(activateFishing == false)
	{
		x = obj_PCunicorn.centerOfScreenX;
		y = obj_PCunicorn.centerOfScreenY;
		baseXPos = x;
		baseYPos = y;
		
		//show_debug_message(string(((((view_get_wport(0)/2) - (obj_PCunicorn.x)) /2) *-1 ) + (view_get_wport(0)/2)))
		//show_debug_message(string(((((view_get_hport(0)/2) - (obj_PCunicorn.y)) /2) *-1 ) + (view_get_hport(0)/2)))
		activateFishing = true;
	}
	if(mouse_check_button_released(mb_left))
	{
		//the y pos is less than the max and a single increase is less than max
		if(y >= yminpos + fishingPower * fishingMultiplier)
		{
			y -= fishingPower * fishingMultiplier;
		}
		//if the y pos is between the max value and the max minus the base increase
		else if (y > yminpos && y <= yminpos + fishingPower * fishingMultiplier)
		{
			y = yminpos;
		}
	}
}
//cannot go bellow min pos
if(y < ymaxpos)
{
	y+= barGravityAffect;
}







