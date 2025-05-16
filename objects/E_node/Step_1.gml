/// @description Insert description here
// You can write your code in this editor

if(once){
	var cornerDirections = [2,4,6];
	var straightDirections = [0,8];
	if(isCorner == true && !isStart){
		show_debug_message(string(isCorner));
		image_index = cornerDirections[irandom_range(0,2)];
		startingIndex = image_index;
	}
	else if(isCorner == false && !isStart){
		image_index = straightDirections[irandom_range(0,1)];
		startingIndex = image_index;
	}
	switch(image_index){
	case(0):
		array_push(nodeRotation, 1);
		array_push(nodeRotation, 3);
		break;
	case(2):
		array_push(nodeRotation, 2);
		array_push(nodeRotation, 3);
		break;
	case(4):
		array_push(nodeRotation, 0);
		array_push(nodeRotation, 3);
		break;
	case(6):
		array_push(nodeRotation, 0);
		array_push(nodeRotation, 1);
		break;
	case(8):
		array_push(nodeRotation, 0);
		array_push(nodeRotation, 2);
		break;
	}
	once = false;
}