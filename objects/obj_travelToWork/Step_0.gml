/// @description Insert description here
// You can write your code in this editor



if (distance_to_object(obj_pcController)<=range && first_time == 0)
{
	
	//show the confirm message
	if(first_time == 0)
	{
		txtbox = 1;
		first_time = 1;
	}
	
	
}
if (obj_pcController.key_int1_press==1)  && (distance_to_object(obj_pcController)<=range)
{
	if(txtbox == 1 && obj_timeOfDay.end_of_day == false)
	{
		alarm[0] = 1;
	}
}

if (txtbox<>0) && (distance_to_object(obj_pcController)>range)
{
	txtbox = 0;
	first_time = 0;
}