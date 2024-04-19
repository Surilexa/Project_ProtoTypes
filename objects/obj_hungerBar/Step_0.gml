/// @description Insert description here
// You can write your code in this editor
if(hunger > 0)
{
	blink = false;
	toggleBlink = false;
}

//if they are starving
if(hunger == 0)
{
	if(toggleBlink == false)
	{
		toggleBlink = true;
		alarm[1] = blinkSpeed;
	}
	//half the speed of player
	obj_PCunicorn.run = 4/2;
	obj_PCunicorn.walk = 2/2;
	obj_PCunicorn.slow = 1/2;
}
//if they have enough hunger
else
{
	obj_PCunicorn.run = 4;
	obj_PCunicorn.walk = 2;
	obj_PCunicorn.slow = 1;
}

