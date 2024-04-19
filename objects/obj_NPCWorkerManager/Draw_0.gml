/// @description Insert description here
// You can write your code in this editor


draw_self()
if (txtbox=1)
{
	draw_sprite_stretched(spr_guibg_blue,0,x-55,y-85,160,45);
	draw_text(x-50,y-80, "Its a great day");
	draw_text(x-50,y-64, "To work!!");
}
if (txtbox=2)
{
	draw_sprite_stretched(spr_guibg_blue,0,x-55,y-101,215,60);
	draw_text(x-50,y-96, "Talk to your superior");
	draw_text(x-50,y-80, "and get instructions on");
	draw_text(x-50,y-64, "what to do!");
}
if (txtbox=3)
{
	draw_sprite_stretched(spr_guibg_blue,0,x-55,y-69,200,35);
	draw_text(x-50,y-64, "I have a task for you.");
}
if (txtbox=4)
{
	draw_sprite_stretched(spr_guibg_blue,0,x-55,y-85,175,45);
	draw_text(x-50,y-80, "Today's Task");
	draw_text(x-50,y-64, "Mine: " + string(obj_RobotManager.crystals_required) + " Crystals");
}
if (txtbox=5)
{
	draw_sprite_stretched(spr_guibg_blue,0,x-55,y-85,200,45);
	draw_text(x-50,y-80, "Not Enough Crystals");
	draw_text(x-50,y-64, "To Complete my Quest.");
}
if (txtbox=6)
{
	draw_sprite_stretched(spr_guibg_blue,0,x-55,y-85,180,45);
	draw_text(x-50,y-80, "Good Job Today.");
	draw_text(x-50,y-64, "Go Home and rest.");
}
