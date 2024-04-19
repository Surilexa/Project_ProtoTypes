/// @description Insert description here
// You can write your code in this editor
buildProgress ++;
if(buildProgress < 2)
{
	alarm[0] = 60 * 4;
}
show_debug_message("Build Progress " + string(buildProgress));
if(buildProgress == 2)
{
	obj_TopDownPC.housesBuilt ++;
	show_debug_message("Houses Built " + string(obj_TopDownPC.housesBuilt));
	houseDone = 1;
}
