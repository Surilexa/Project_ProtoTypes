/// @description Insert description here
// You can write your code in this editor

randomize();
// grow tree

if (pineapple<1)
	{
	growth_state += irandom_range(die_min,die_max);
	if (growth_state >= growth_max)
		{
			growth_state = 0;
			pineapple +=1;
		}
	}
	
	


if (obj_PCunicorn.key_int1==1)  && (distance_to_object(obj_PCunicorn)<=range) && (distance_to_point(mouse_x,mouse_y)<=range)
{
	if (pineapple > 0)
	{
		obj_PCunicorn.pineapple += 1;
		pineapple -= 1;
	}
		
}
	
image_index = pineapple;

// end step

