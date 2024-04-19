/// @description Insert description here
// You can write your code in this editor

// on step

if (obj_RobotGUI.pc_ID == my_id)
{
	//control when the timer will start
	if(alarm_setter == 0 )
	{
		alarm_setter = 1;
		alarm[0] = drain_rate;
	}
	key_right = keyboard_check(ord("D"));
	key_left = keyboard_check(ord("A"));
	key_up = keyboard_check(ord("W"));
	key_down = keyboard_check(ord("S"));
	key_int1 = keyboard_check_pressed(ord("K"));
	
}
else
{
	key_right = 0;
	key_left = 0;
	key_up = 0;
	key_down = 0;
	key_int1 = 0;
	alarm[0] = -1;
	alarm_setter = 0;
}
	
if (pc2_power<=0)
{
	key_right = 0;
	key_left = 0;
	key_up = 0;
	key_down=0;
	key_int1 = 0;	

}

move_x = key_right - key_left;
move_y= key_down - key_up;

if (move_x != 0)
{
	image_xscale = sign(move_x);
}
	
move_x *= move_speed;
move_y *= move_speed;


// when power counter runs out, convert battery to power
if (pc2_power<=0) && (battery>=1)
{
	if(battery >= maxpower)
	{
		pc2_power = maxpower;
		battery -= maxpower;
	}
	else if(battery < maxpower)
	{
		pc2_power = battery;
		battery = 0;
	}
	if (battery<=0)
	{
		battery =0;
	}
}
	
move_and_collide(move_x, move_y, obj_wall, 4, 0, 0, move_speed, -1);	
	
	// end step
