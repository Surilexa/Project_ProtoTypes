/// @description Insert description here
// You can write your code in this editor



if (distance_to_object(obj_pc1)<=range) && (enter) 
{
	if (obj_pc1.golden_duck==0)
	{
		txtbox = 1;
	}
	else if(obj_pc1.golden_duck == 1)
	{
		txtbox = 2;
	}
	enter = false;
}
	
if (txtbox<>0) && (distance_to_object(obj_pc1)>range)
{
	txtbox = 0;
	enter = true;
}