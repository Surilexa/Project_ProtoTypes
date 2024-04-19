/// @description Insert description here
// You can write your code in this editor

randomize();
// grow tree
	
image_index = buildProgress;
if(houseDone == 0)
{
	
	if (obj_TopDownPC.key_int1==1)  && (distance_to_object(obj_TopDownPC)<=range) && (distance_to_point(mouse_x,mouse_y)<=range && firstTime ==0)
	{
		//ask for confirm on the build
		if(firstTime = 0)
		{
			txtbox = 1;
			firstTime = 1;
		}
	
	
	}

	else if (obj_TopDownPC.key_int1==1)  && (distance_to_object(obj_TopDownPC)<=range) && (distance_to_point(mouse_x,mouse_y)<=range && firstTime == 1)
	{
		//if the player has enough wood to build.
		if(obj_TopDownPC.wood >= woodCost && buildHouse != 1 && obj_TopDownPC.clay >= clayCost)
		{
			buildHouse = 1;
			txtbox = 4;
			obj_TopDownPC.wood -= woodCost;
			obj_TopDownPC.clay -= clayCost;
			alarm[0] = 60 * 4;
		}
		//if the player interacts again and the house is being built
		else if(buildHouse == 1)
		{
			txtbox = 2;
		}
		//if the house is too expensive
		else if(obj_TopDownPC.wood < woodCost || obj_TopDownPC.clay < clayCost)
		{
			txtbox = 3;
		}
	}
}

if(buildProgress == 2){
	txtbox = 0;
}

if (txtbox<>0) && (distance_to_object(obj_TopDownPC)>range)
{
	txtbox = 0;
	if(buildHouse == 0)
	{
		firstTime = 0;
	}
	
}
// end step

