/// @description Insert description here
// You can write your code in this editor



if (distance_to_object(obj_pcController)<=range)
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
	//confirm control crystal robot
	if(txtbox == 1)
	{
		txtbox = 0;
		first_time = 0;
		//set controller to the crystal robot
		obj_RobotGUI.pc_ID = obj_pcCrystalRobot.my_id;
	}
	
}


if (txtbox<>0) && (distance_to_object(obj_pcController)>range)
{
	txtbox = 0;
	first_time = 0;
}