/// @description Insert description here
// You can write your code in this editor
if(position_meeting(mouse_x,mouse_y, self)){
	image_xscale = 1.2;
	image_yscale = 1.2;
}
else{
	image_yscale = 1;
	image_xscale = 1;
}
if(isConnected){
	image_index = startingIndex+1;
}
else{
	image_index = startingIndex;
}

if (mouse_check_button_pressed(mb_left)) && (position_meeting(mouse_x, mouse_y, self) && mouseDown == false && !isStart)
{
	show_debug_message(string(id));
	var count = 0;
	for(var j = 0; j < array_length(nodeRotation); j++){
		count++;
		nodeRotation[j] += 1;
		if(nodeRotation[j] > 3){
			nodeRotation[j] = 0;
		}
		
		//show_debug_message("This has happened " + string(count) + "times " + string(nodeRotation[j]));
	}
	image_angle -= 90;
	checkConnection();
}
if(mouse_check_button_released(mb_left))
{
	mouseDown = false;
}