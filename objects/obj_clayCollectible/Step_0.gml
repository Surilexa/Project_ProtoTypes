/// @description Insert description here
// You can write your code in this editor

randomize();
// grow tree

if (clay<2)
	{
	growth_state += irandom_range(die_min,die_max);
	if (growth_state >= growth_max)
		{
		growth_state = 0;
		clay +=1;
		}
	}
	
	


if (obj_TopDownPC.key_int1==1)  && (distance_to_object(obj_TopDownPC)<=range) && (distance_to_point(mouse_x,mouse_y)<=range)
	{
	if (clay == 2)
		{
		obj_TopDownPC.clay += 1;
		clay -= 1;
		}
	else if (clay ==1)
		{
		obj_TopDownPC.clay += 1;
		clay -= 1;	
		}
	}
	
image_index = clay;

// end step

