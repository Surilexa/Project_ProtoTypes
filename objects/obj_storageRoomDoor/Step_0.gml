/// @description Insert description here
// You can write your code in this editor

if (obj_pc1.key_collect==1)  && (distance_to_object(obj_pc1)<=range) && (obj_pc1.keys == 1)
	{
		instance_deactivate_object(obj_gui2);
		instance_deactivate_object(obj_storageRoomDoor);
	}

if (distance_to_object(obj_pc1)<=range) && (enter) && (obj_pc1.keys == 1)
{
	txtbox = 1;
}

if (txtbox<>0) && (distance_to_object(obj_pc1)>range)
{
	txtbox = 0;
	enter = false;
}