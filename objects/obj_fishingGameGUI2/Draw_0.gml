/// @description Insert description here
// You can write your code in this editor

//gold coins
draw_sprite_stretched(spr_MoneyBackground,0,camera_get_view_x(view_get_camera(0))+675, camera_get_view_y(view_get_camera(0))+ 10,120,40);
draw_sprite_stretched(spr_goldCoin,0,camera_get_view_x(view_get_camera(0))+670, camera_get_view_y(view_get_camera(0))+ 10,40,40);
draw_text_transformed(camera_get_view_x(view_get_camera(0))+700, camera_get_view_y(view_get_camera(0))+ 10, string(obj_PCunicorn.goldCoins), 2,2, 0)

//quest tracker
draw_sprite_stretched(spr_questBackground,0,camera_get_view_x(view_get_camera(0))+600, camera_get_view_y(view_get_camera(0))+ 55,195,45 + (array_length(questArray) *20));
draw_text(camera_get_view_x(view_get_camera(0))+605, camera_get_view_y(view_get_camera(0))+ 60, "Quests ");
draw_text(camera_get_view_x(view_get_camera(0))+605, camera_get_view_y(view_get_camera(0))+ 76, "---------------------");



/*if(array_contains(questArray, "RedDragon"))
{
	draw_text(650,76 + ((array_get_index(questArray, "RedDragon") + 1)*20),
					"Red: " + string(obj_NPCRedDragon.fetchItem) + " " + string(obj_NPCRedDragon.fetchItemAmount));
}*/

if(array_contains(questArray, "FishingBuffDragon"))
{
	draw_text(camera_get_view_x(view_get_camera(0))+605, camera_get_view_y(view_get_camera(0))+ 76 + ((array_get_index(questArray, "FishingBuffDragon") + 1)*20),
					"Upgrade: " + string(obj_NPCFishingBuff.fetchItemAmount) + " Gold");
}
if(array_contains(questArray, "Customer1"))
{
	draw_text(camera_get_view_x(view_get_camera(0))+605, camera_get_view_y(view_get_camera(0))+ 76 + ((array_get_index(questArray, "Customer1") + 1)*20),
					"Red " + string(obj_NPCDragonCustomer1.fetchItem) + " " + string(obj_NPCDragonCustomer1.fetchItemAmount));
}
if(array_contains(questArray, "Customer2"))
{
	draw_text(camera_get_view_x(view_get_camera(0))+605, camera_get_view_y(view_get_camera(0))+ 76 + ((array_get_index(questArray, "Customer2") + 1)*20),
					"Green " + string(obj_NPCDragonCustomer2.fetchItem) + " " + string(obj_NPCDragonCustomer2.fetchItemAmount));
}
if(array_contains(questArray, "Customer3"))
{
	draw_text(camera_get_view_x(view_get_camera(0))+605, camera_get_view_y(view_get_camera(0))+ 76 + ((array_get_index(questArray, "Customer3") + 1)*20),
					"Blue " + string(obj_NPCDragonCustomer3.fetchItem) + " " + string(obj_NPCDragonCustomer3.fetchItemAmount));
}

// END DRAW GUI




