/// @description Insert description here
// You can write your code in this editor

questArray = [];
numberOfQuestAccepted = 0;

addQuest = function (questName)
{
	array_set(questArray, array_length(questArray), questName);
}

removeQuest = function (questName)
{
	array_delete(questArray, array_get_index(questArray, questName), 1);
}


//fishing resources
goldFish = 0;
rainbowTrout = 0;
catfish = 0;
sharks = 0;