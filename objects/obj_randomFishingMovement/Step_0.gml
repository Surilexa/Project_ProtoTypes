/// @description Insert description here
// You can write your code in this editor
randomize();
if(!obj_PCunicorn.isFishing)
{
	targetYPos = y;
}
//always move to the target y pos
if(y != targetYPos)
{
	//if the target is above the y pos
	if(y-targetYPos > 0)
	{
		y -= 1;
	}
	else if(y-targetYPos < 0)
	{
		y += 1;
	}
	//pause the position for alarm until change new target y pos
	if(targetYPos == y)
	{
		waitInLocation = true;
		alarm[0] = irandom_range(60,100);
	}
	
}

x = obj_movingBar.x;


if(distance_to_object(obj_movingBar)== 0 && obj_PCunicorn.isFishing)
{
	image_index = 1;
}
else
{
	image_index = 0;
}
