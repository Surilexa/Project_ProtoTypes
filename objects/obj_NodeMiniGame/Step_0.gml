/// @description Insert description here
// You can write your code in this editor
if (mouse_check_button_pressed(mb_left)) && (position_meeting(mouse_x, mouse_y, self) && mouseDown == false)
{
	if(layer_get_visible(MiniGameName)){
		layer_set_visible(MiniGameName, false);
	}
	else{
		layer_set_visible(MiniGameName, true);
	}
}
if(mouse_check_button_released(mb_left))
{
	mouseDown = false;
}