/// @description Insert description here
// You can write your code in this editor



if (obj_pc1.key_collect==1) && (distance_to_object(obj_pc1)<=range)
{
	if (obj_pc1.quest2==0)
	{
		txtbox = 1;
		obj_pc1.quest2=1;
	}
	else if (obj_pc1.quest2==1)
	{
		if (obj_pc1.keys == 1)
		{
			txtbox = 3;
			obj_pc1.quest2=2;
		}
		else
		{
			txtbox = 2;
		}
			
	}
	else if (obj_pc1.quest2==2)
	{
		if (obj_pc1.golden_duck==1)
		{ 
			txtbox = 4;
		}
		else
		{
			txtbox = 5;
		}
	}
}
	
if (txtbox<>0) && (distance_to_object(obj_pc1)>range)
{
	txtbox = 0;
}