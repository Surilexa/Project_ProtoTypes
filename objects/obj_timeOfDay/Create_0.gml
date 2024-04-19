/// @description Insert description here
// You can write your code in this editor

morning = true;

//hour alarm calculator
hour = 6;
hour_length = 60 * 7;


//min alarm calculator
minute_double = 0;
minute_single = 0;
minute_length = hour_length / 60;

timer_play = true;


alarm[0] = minute_length;

after_hours = false;
after_hour_time = 8;

end_of_day = false;
begining_of_morning = true;

end_of_day_message_length = 10 * 60;
end_of_day_toggle = false;
alarm_end = false;