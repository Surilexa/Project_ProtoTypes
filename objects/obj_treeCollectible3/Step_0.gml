/// @description Insert description here
// You can write your code in this editor

randomize();
// grow tree

if (wood<2)
	{
	growth_state += irandom_range(die_min,die_max);
	if (growth_state >= growth_max)
		{
		growth_state = 0;
		wood +=1;
		}
	}
	
	


if (obj_TopDownPC.key_int1==1)  && (distance_to_object(obj_TopDownPC)<=range) && (distance_to_point(mouse_x,mouse_y)<=range)
	{
	if (wood == 2)
		{
		obj_TopDownPC.wood += 1;
		wood -= 1;
		}
	else if (wood ==1)
		{
		obj_TopDownPC.wood += 1;
		wood -= 1;	
		}
	}
	
image_index = wood;

// end step

