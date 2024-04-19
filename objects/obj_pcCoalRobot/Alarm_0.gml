/// @description Insert description here
// You can write your code in this editor


if(pc2_power > 0){
	pc2_power--;
	//show_debug_message("Crystal Robot power" + string(pc2_power));
}
if(drain_power){
	alarm[0] = drain_rate;
}
else
{
	alarm[0] = -1;
}


