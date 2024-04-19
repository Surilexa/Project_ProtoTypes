/// @description Insert description here
// You can write your code in this editor



if (distance_to_object(obj_PCsummer2)<=range) && (enter) 
{
	txtbox = 1;
	enter = false;
}
	
if (txtbox<>0) && (distance_to_object(obj_PCsummer2)>range)
{
	txtbox = 0;
	enter = true;
}