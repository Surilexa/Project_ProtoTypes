/// @description Insert description here
// You can write your code in this editor



// ON STEP

if (obj_PCsummer2.key_int1_press==1)  && (distance_to_object(obj_PCsummer2)<=range) 
	{
	obj_PCsummer2.manual +=value;
	instance_destroy();
	}


// END STEP
