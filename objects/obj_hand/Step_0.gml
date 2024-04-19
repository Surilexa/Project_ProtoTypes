/// @description Insert description here
// You can write your code in this editor

//on step

x=mouse_x;
y=mouse_y;
if(isFishing)
{
	image_index = 3;
}

else if (mouse_check_button(mb_left) && isFishing == false)
{
	image_index=1;
}
else if (mouse_check_button(mb_right) && isFishing == false)
{
	image_index=2;
}
	
else if(isFishing == false)
{
	image_index=0;
}


// end step


