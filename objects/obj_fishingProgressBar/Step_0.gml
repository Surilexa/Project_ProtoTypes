/// @description Insert description here
// You can write your code in this editor
if(obj_PCunicorn.isFishing)
{
	if(fishingAlarm == false)
	{
		alarm[0] = 60 * timeToFail;
		fishingAlarm = true;
	}
	progressIncrease = 1 - obj_fishingQTEManager.rarityOfFish * .1;
	if(obj_randomFishingMovement.image_index == 1)
	{
		currentProgress += progressIncrease;
	}
	if(currentProgress >= maxProgress)
	{
		//obj_AnimFishingSpot.cooldown = true;
		instance_nearest(obj_PCunicorn.x,obj_PCunicorn.y, obj_AnimFishingSpot).cooldown = true;
		fishingAlarm = false;
		obj_fishingQTEManager.endFishing = true;
		// give the reward to the player
		if(obj_fishingQTEManager.currentFish == "GoldFish")
		{
			obj_PCunicorn.goldFish++;
			instance_create_layer(obj_PCunicorn.x,obj_PCunicorn.y-20,"fish",obj_goldfishSpawn);
		}
		else if (obj_fishingQTEManager.currentFish == "Carp")
		{
			obj_PCunicorn.carp++;
			instance_create_layer(obj_PCunicorn.x,obj_PCunicorn.y-20,"fish",obj_carpSpawn);
		}
		else if (obj_fishingQTEManager.currentFish == "Catfish")
		{
			obj_PCunicorn.catfish++;
			instance_create_layer(obj_PCunicorn.x,obj_PCunicorn.y-20,"fish",obj_catfishSpawn);
		}
	}
}
else if(obj_PCunicorn.isFishing == false)
{
	currentProgress = minProgress;
	alarm[0] = -1;
}


