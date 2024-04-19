/// @description Insert description here
// You can write your code in this editor

// on step

if (distance_to_object(obj_pcHorse)<=range) && (obj_pcHorse.key_int1==1) && (distance_to_point(mouse_x,mouse_y)<=8)
{
	if(target.image_index == 0)
	{
		obj_pcHorse.x=target.x+12;
		obj_pcHorse.y=target.y+128;
		obj_target1.x=obj_pcHorse.x;
		obj_target1.y=obj_pcHorse.y;
	}
	else if(target.image_index == 2)
	{
		obj_pcHorse.x=target.x-20;
		obj_pcHorse.y=target.y+50;
		obj_target1.x=obj_pcHorse.x;
		obj_target1.y=obj_pcHorse.y;
	}
	else
	{
		obj_pcHorse.x=target.x+20;
		obj_pcHorse.y=target.y+150;
		obj_target1.x=obj_pcHorse.x;
		obj_target1.y=obj_pcHorse.y;
	}
	
	//obj_pcHorse.image_index=0;
}
	


