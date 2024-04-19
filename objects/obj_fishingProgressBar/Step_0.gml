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
		fishingAlarm = false;
		obj_fishingQTEManager.endFishing = true;
		alarm[0] = -1;
		// give the reward to the player
		if(obj_fishingQTEManager.currentFish == "GoldFish")
		{
			obj_PCunicorn.goldFish++;
		}
		else if (obj_fishingQTEManager.currentFish == "RainbowTrout")
		{
			obj_PCunicorn.rainbowTrout++;
		}
		else if (obj_fishingQTEManager.currentFish == "CatFish")
		{
			obj_PCunicorn.catfish++;
		}
		else if (obj_fishingQTEManager.currentFish == "Shark")
		{
			obj_PCunicorn.sharks++;
		}
	}
}
else if(obj_PCunicorn.isFishing == false)
{
	currentProgress = minProgress;
	
}

