/// @description Insert description here
// You can write your code in this editor
randomize()

if(selectFish)
{
	selectFish = false;
	if(!obj_PCunicorn.fishingBuff)
	{
		rarityOfFish = irandom_range(0,1);
	}
	else if (obj_PCunicorn.fishingBuff)
	{
		show_debug_message("fishing with buff")
		rarityOfFish = irandom_range(0,2);
		show_debug_message(string(rarityOfFish))
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
	obj_PCunicorn.isBusy = false;
}
if(startFishing)
{
	startFishing = false;
	
	obj_PCunicorn.isFishing = true;
	selectFish = true;
	
	//move the fish to the correct p
	obj_randomFishingMovement.y =  obj_PCunicorn.centerOfScreenY+ irandom_range(-68,122);
	alarm[1] = 60
	delay = true;
	obj_PCunicorn.isBusy = true;
}