/// @description Insert description here
// You can write your code in this editor



if (obj_pc1.key_collect==1) && (distance_to_object(obj_pc1)<=range)
	{
	if (obj_pc1.quest1==0)
		{
		txtbox =1;
		obj_pc1.quest1=1;
		}
	else if (obj_pc1.quest1==1)
		{
		if (obj_pc1.water_bottles>=5)
			{
			txtbox = 3;
			obj_pc1.quest1=2;
			obj_pc1.water_bottles-=5;
			obj_pc1.keys = 1;
			}
		else if (obj_pc1.water_bottles<5)
			{
			txtbox = 2;
			}
		}
	}
	
if (txtbox<>0) && (distance_to_object(obj_pc1)>range)
	{
	txtbox = 0;
	}