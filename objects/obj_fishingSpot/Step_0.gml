/// @description Insert description here
// You can write your code in this editor
/*if(obj_pcHorse.fishingBuff == true)
{
	cooldownTime = 7;
	fishingTime = 2;
}
else
{
	cooldownTime = 15;
	fishingTime = 3;
}
*/

if(enter)
{
	//change hand to fishing rod
	obj_hand.isFishing = true;
}
else
{
	obj_hand.isFishing = false;
}
if(cooldown)
{
	image_index = 1;
}
else
{
	image_index = 0;
}

//if the player steps in range of the fishing spot
if((distance_to_object(obj_pcHorse)<=range) && (cooldown == false))
{
	enter = true;
	
	//if the player interacts with the fishing spot
	if (obj_pcHorse.key_int1==1) && enter && (distance_to_point(mouse_x,mouse_y)<=range)
	{
		//start fishing event
		obj_fishingQTEManager.startFishing = true;
		alarm[0] = 60 * fishingTime;
		obj_target1.isFishing = true;
		obj_pcHorse.isFishing = true;
	}
}
//too far away
else if (distance_to_object(obj_pcHorse)>range)
{
	enter = false;
}

//the player wont move while fishing
if(alarm[0] > 0)
{
	obj_target1.x = obj_pcHorse.x;
	obj_target1.y = obj_pcHorse.y;
	
	obj_pcHorse.image_index = 2;
}
