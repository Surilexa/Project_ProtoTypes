/// @description Insert description here
// You can write your code in this editor

if (obj_PCsummer2.quest==1) && (obj_PCsummer2.total_drinks_served < 9)
	{
	draw_text(10,10,"Serve 9 Orders.");
	draw_text(10,36, "Progress " + string(obj_PCsummer2.total_drinks_served));
	}
else if (obj_PCsummer2.quest==1) && (obj_PCsummer2.total_drinks_served >= 9)
	{
	draw_text(10,10, "Check in with the Owner");
	}