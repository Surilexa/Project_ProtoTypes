/// @description Insert description here
// You can write your code in this editor

// on step

if (fixed==0 && obj_PCsummer2.is_drink == true)
{
	dccheck = obj_PCsummer2.current_drink_difficulty;
	if (obj_PCsummer2.key_int1==1)  && (distance_to_object(obj_PCsummer2)<=range) && (obj_PCsummer2.current_drink_difficulty > 0)
		{
			dieroll = irandom_range(1,20);
			total=obj_PCsummer2.big_mixer+obj_PCsummer2.manual+obj_PCsummer2.total_drinks_served+dieroll;	
			textline =1;
		}
	if (obj_PCsummer2.key_int1==0)  && (distance_to_object(obj_PCsummer2)<=range) && (dieroll<>0) && (total<<dccheck)
		{
			textline =2;
		}		
	if (obj_PCsummer2.key_int1==0) && (total>=dccheck) && (dieroll<>0)
		{
			textline=3;
			fixed = 1;
			obj_PCsummer2.finished_drink = true;
			if(obj_PCsummer2.image_index == 0)
			{
				obj_PCsummer2.image_index = irandom_range(1,4);
			}
		}
}	

	
if (distance_to_object(obj_PCsummer2)>range)
{
	textline =0;
	dieroll=0;
}

// end step
