/// @description Insert description here
// You can write your code in this editor

questArray = [];
numberOfQuestAccepted = 0;

lemonadeCost = 5;
WatermelonCost = 8;
coconutCost = 1;

addQuest = function (questName)
{
	array_set(questArray, array_length(questArray), questName);
}

removeQuest = function (questName)
{
	array_delete(questArray, array_get_index(questArray, questName), 1);
}
