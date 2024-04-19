/// @description Insert description here
// You can write your code in this editor



if(position_meeting(mouse_x, mouse_y, self))
{
	image_index = 1;
	//show_debug_message(string(x) + st);
}
else
{
	image_index = 0;
}


if (mouse_check_button_pressed(mb_left)) && (position_meeting(mouse_x, mouse_y, self) && mouseDown == false)
{
	mouseDown = true;
	//increase coconut sell amount: limit number of coconuts by player inv
	if(obj_SellCoconutAmount.sellAmount < obj_PCunicorn.coconut)
	{
		obj_SellCoconutAmount.sellAmount ++;
	}
}
if((mouse_check_button_released(mb_left)))
{
	mouseDown = false;
}





