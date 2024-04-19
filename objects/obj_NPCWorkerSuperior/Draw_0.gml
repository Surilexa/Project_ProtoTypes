/// @description Insert description here
// You can write your code in this editor


draw_self()
if (txtbox=1)
{
	draw_sprite_stretched(spr_guibg_blue,0,x-55,y-85,190,45);
	draw_text(x-50,y-80, "Its a wonderful week");
	draw_text(x-50,y-64, "To work!!");
}
if (txtbox=2)
{
	draw_sprite_stretched(spr_guibg_blue,0,x-55,y-69,270,35);
	draw_text(x-50,y-64, "I got work for you this week.");
}

if (txtbox=3)
{
	draw_sprite_stretched(spr_guibg_blue,0,x-55,y-85,210,45);
	draw_text(x-50,y-80, "This weeks task.");
	draw_text(x-50,y-64, "Complete " + string(obj_RobotManager.weekly_quest_required) + " daily quest");
}
if (txtbox=5)
{
	draw_sprite_stretched(spr_guibg_blue,0,x-55,y-85,250,45);
	draw_text(x-50,y-80, "There are more daily quests");
	draw_text(x-50,y-64, "To Complete for my Quest.");
}
if (txtbox=6)
{
	draw_sprite_stretched(spr_guibg_blue,0,x-55,y-69,180,35);
	draw_text(x-50,y-64, "Good Job this week");
}
if (txtbox=7)
{
	draw_sprite_stretched(spr_guibg_blue,0,x-55,y-69,180,35);
	draw_text(x-50,y-64, "No new weekly quest");
}