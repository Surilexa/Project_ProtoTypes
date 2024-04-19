/// @description Insert description here
// You can write your code in this editor
randomize()
movingBoxXPos = 50;
movingBoxYPos = 0;

randomFishingXpos = 0
randomFishingYpos = irandom_range(200, 400)

artYPos = 0
artXPos = 0


doOnce = false;



//selecting fish variables
rarityOfFish = 0;
typeOfFish = ["GoldFish", "RainbowTrout", "CatFish", "Shark"];
currentFish = 0;
fishSpeed = rarityOfFish;


fishingBuff = false;

selectFish = false;


endFishing = true;
startFishing = false;
delay = false;
