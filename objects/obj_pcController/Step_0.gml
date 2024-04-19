/// @description Insert description here
// You can write your code in this editor


if (obj_RobotGUI.pc_ID==my_id)
{
	key_right = keyboard_check(ord("D"));
	key_left = keyboard_check(ord("A"));
	key_jump = keyboard_check_pressed(ord("J"));
	key_int1_press = keyboard_check_pressed(ord("K"));
}
else
{
	key_right = 0;
	key_left = 0;
	key_jump = 0;
	key_int1_press = 0;
}


move_x = key_right - key_left;

if (move_x != 0)
	{
	image_xscale = sign(move_x);
	}
move_x *= move_speed;


if (place_meeting(x, y+2, obj_wall))
	{
	move_y = 0;
	if (!place_meeting(x+move_x, y+2, obj_wall) && place_meeting(x+move_x, y+10, obj_wall))
		{
		move_y = abs(move_x);
		move_x = 0;
		}
	if (key_jump=1)
		{
		move_y = -jump_speed;
		}
	}
else if (move_y < 10)
	{
	move_y += 1;
	}

move_and_collide(move_x, move_y, obj_wall, 4, 0, 0, move_speed, -1);
