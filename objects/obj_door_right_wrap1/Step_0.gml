/// @description Insert description here
// You can write your code in this editor

// on step

if (distance_to_object(obj_pcHorse)<=range) && (obj_pcHorse.key_int1==1) && (distance_to_point(mouse_x,mouse_y)<=8)
{
	obj_pcHorse.x=target.x+70;
	obj_pcHorse.y=target.y+100;
	obj_target1.x=obj_pcHorse.x;
	obj_target1.y=obj_pcHorse.y;
	//obj_pcHorse.image_index=2;
}

// end step

