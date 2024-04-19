/// @description Insert description here
// You can write your code in this editor

randomize();

//after fishing is done logic

fishingRoll = irandom_range(1, 10);

if(fishingRoll <= 4)
{
	obj_pcHorse.fish ++;
}
else if(fishingRoll <= 8)
{
	obj_pcHorse.fish += 2;
}
else if(fishingRoll == 9)
{
	obj_pcHorse.fish += 5;
}
else if(fishingRoll == 10)
{
	obj_pcHorse.fish += irandom_range(8, 10);
}

cooldown =true;
alarm[1] = 60 * cooldownTime;
obj_pcHorse.image_index = 0;
obj_target1.isFishing = false;
obj_pcHorse.isFishing = false;