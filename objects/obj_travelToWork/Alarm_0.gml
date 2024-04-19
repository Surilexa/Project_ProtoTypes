/// @description Insert description here
// You can write your code in this editor


obj_pcController.x = obj_travelToHome.x-40;
obj_pcController.y = obj_travelToHome.y-50;
show_debug_message("desired x " + string(obj_travelToHome.x-40) + " Desired y " + string(obj_travelToHome.y-50));
show_debug_message("actual x " + string(obj_pcController.x) + " actual y " + string(obj_pcController.y));

alarm[0] = -1;