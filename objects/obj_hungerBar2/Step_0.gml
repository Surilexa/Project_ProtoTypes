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
	obj_pcHorse.run = 6/2;
	obj_pcHorse.walk = 3/2;
	obj_pcHorse.slow = 1.5/2;
}
//if they have enough hunger
else
{
	obj_pcHorse.run = 6;
	obj_pcHorse.walk = 3;
	obj_pcHorse.slow = 1.5;
}

