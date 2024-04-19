/// @description Insert description here
// You can write your code in this editor

// on draw gui

// pl1 coin counter



//quest tracker
if (obj_pc1.quest1==1) && (obj_pc1.water_bottles<5)
	{
	draw_text(10,36,"Bartender needs 5 bottles.");
	draw_text(10,10, "Water Bottles: " +string(obj_pc1.water_bottles));
	}
else if (obj_pc1.quest1==1) && (obj_pc1.water_bottles>=5)
	{
	draw_text(10,36, "Get the bottles to the bartender.");
	}

	
//npc1 dialogue boxes

if (obj_npc1.txtbox==1)
	{
	draw_sprite_stretched(spr_guibg_blue,0,370,353,365,60);
	draw_text(375,358, "Hey!");
	draw_text(375,374, "There are people leaving bottles around.");
	draw_text(375,390, "Go grab them for me.");
	}
	
else if (obj_npc1.txtbox==2)
	{
	draw_sprite_stretched(spr_guibg_blue,0,370,353,300,60);
	draw_text(375,358, "Hello.");
	draw_text(375,374, "Please come back");
	draw_text(375,390, "when you have those bottles.");
	}
	
else if (obj_npc1.txtbox==3)
	{
	draw_sprite_stretched(spr_guibg_blue,0,370,353,320,60);
	draw_text(375,358, "You got them bottles?");
	draw_text(375,374, "Excellent! Here are some keys.");
	obj_npc1.keys = 1;
	}

	
//npc2 dialogue boxes

if (obj_npc2.txtbox==1)
	{
	draw_sprite_stretched(spr_guibg_blue,0,400,400,300,60);
	draw_text(405,405, "Hey!");
	draw_text(405,421, "You need a key to get in here.");
	draw_text(405,437, "Find someone else to talk to.");
	}
	
else if (obj_npc2.txtbox==2)
	{
	draw_sprite_stretched(spr_guibg_blue,0,400,400,225,40);
	draw_text(405,405, "Find the key yet?");
	draw_text(405,421, "Please come back");
	}
	
else if (obj_npc2.txtbox==3)
	{
	draw_sprite_stretched(spr_guibg_blue,0,400,400,220,60);
	draw_text(405,405, "Sick the Key!");
	draw_text(405,421, "Excellent! Find the");
	draw_text(405,437, "GOLDEN DUCK!");
	}
else if (obj_npc2.txtbox==4)
{
	draw_sprite_stretched(spr_guibg_blue,0,400,400,250,40);
	draw_text(405,405, "You found it!");
	draw_text(405,421, "Give the duck to the kid");
}
else if (obj_npc2.txtbox==5)
{
	draw_sprite_stretched(spr_guibg_blue,0,400,400,300,30);
	draw_text(405,405, "Still looking for that duck?");
}

//npc3 dialogue boxes

if (obj_npc3.txtbox==1)
	{
	draw_sprite_stretched(spr_guibg_blue,0,245,495,225,55);
	draw_text(250,500, "I heard of a legendary");
	draw_text(250,516, "Golden Duck in the sky!");
	}
	
else if (obj_npc3.txtbox==2)
	{
	draw_sprite_stretched(spr_guibg_blue,0,245,495,200,60);
	draw_text(250,500, "Its the fabled...");
	draw_text(250,516, "GOLDEN DUCK!!!");
	draw_text(250,532, "Thank you so much!");
	}
	
	
//END DRAW GUI EVENT
