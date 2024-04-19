/// @description Insert description here
// You can write your code in this editor



if(morning)
{
	draw_sprite_stretched(spr_guibg_blue,0,370,15,100,25);
	draw_text(375,20, string(hour) + " : " + string(minute_double) + string(minute_single) + " AM");
}
else if(morning == false)
{
	draw_sprite_stretched(spr_guibg_blue,0,370,15,100,25);
	draw_text(375,20, string(hour) + " : " + string(minute_double) + string(minute_single) + " PM");
}


if(end_of_day && alarm_end == false)
{
	
	draw_sprite_stretched(spr_guibg_blue,0,370,225,250,45);
	draw_text(375,230, "Hey! Its the End Of Day");
	draw_text(375,246, "Pack it up! Or get FIRED!!");
	if(end_of_day_toggle == false)
	{
		end_of_day_toggle = true;
		alarm[1] = end_of_day_message_length;
	}
}



