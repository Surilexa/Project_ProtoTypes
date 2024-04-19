/// @description Insert description here
// You can write your code in this editor
randomize()

if(selectFish)
{
	selectFish = false;
	if(!fishingBuff)
	{
		rarityOfFish = random_range(0,2);
	}
	else if (fishingBuff)
	{
		rarityOfFish = random_range(1,3);
	}
	currentFish = typeOfFish[rarityOfFish];
	fishSpeed = rarityOfFish;
	show_debug_message("Fighting for " + currentFish);
}
//reset the fishing QTE and end the player fishing event
if(endFishing)
{
	alarm[1] = -1
	endFishing = false;
	obj_fishingProgressBar.alarm[0] = -1;
	obj_fishingProgressBar.fishingAlarm = false;
	obj_movingBar.activateFishing = false;
	obj_PCunicorn.isFishing = false;
	obj_movingBar.visible = false
	obj_randomFishingMovement.visible = false;
	obj_fishingProgressBar.visible = false;
	obj_fishingBorderReel.visible = false;
}
if(startFishing)
{
	startFishing = false;
	
	obj_PCunicorn.isFishing = true;
	selectFish = true;
	
	//move the fish to the correct p
	obj_randomFishingMovement.y =  view_get_hport(0)/2 + irandom_range(-100,100);
	alarm[1] = 60
	delay = true;
}