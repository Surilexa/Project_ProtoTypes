/// @description Insert description here
// You can write your code in this editor

if (obj_PCsummer2.key_int1_press==1)  && (distance_to_object(obj_PCsummer2)<=range)
{
	if(first_time)
	{
		txtbox = 1;
		obj_PCsummer2.quest = 1;
		first_time = false;
	}
	else
	{
		if(obj_PCsummer2.total_drinks_served < 9)
		{
			txtbox = irandom_range(2,3);
		}
		else if (obj_PCsummer2.total_drinks_served >= 9)
		{
			txtbox = 4;
			image_index = 0;
		}
	}
}

if (txtbox<>0) && (distance_to_object(obj_PCsummer2)>range)
{
	txtbox = 0;
}