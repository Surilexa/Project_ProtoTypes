/// @description Insert description here
// You can write your code in this editor



//resource layout for player
draw_sprite_stretched(spr_gui_grey,0,5,5,180,170);

draw_sprite_stretched(spr_wood,0,0,0,90,128);
draw_sprite_stretched(spr_stoneRock,0,-20,40,128,128);
draw_sprite_stretched(spr_clayRock,0,-20,80,128,128);


draw_text(10,10, "Resources ");
draw_text(10,26, "-------------------");


draw_text(90,56, string(obj_TopDownPC.wood));
draw_text(90,96, string(obj_TopDownPC.rock));
draw_text(90,136, string(obj_TopDownPC.clay));





//quest tracker
draw_sprite_stretched(spr_gui_grey,0,5,190,180,45 + (array_length(questArray) *20));
draw_text(10,195, "Quests ");
draw_text(10,211, "-------------------");



if(starQuest)
{
	draw_text(10,211 + ((array_get_index(questArray, "StarQuest") + 1)*20), "Stars Earned " + string(currentStars) + " / " + string(starsRequired));
}
if(obj_TopDownPC.dragonHouseQuest)
{
	draw_text(10,211 + ((array_get_index(questArray, "DragonQuest") + 1)*20), "Houses Built " + string(obj_TopDownPC.housesBuilt) + " / " + string(obj_GameGuideNPC.housesRequired));
}
if(obj_oldManNPC.gatherWoodQuest)
{
	draw_text(10,211 + ((array_get_index(questArray, "GatherWoodQuest") + 1)*20), "Gather Wood " + string(obj_TopDownPC.wood) + " / " + string(obj_oldManNPC.woodRequired));
}



// END DRAW GUI


