/// @description Insert description here
// You can write your code in this editor


key_int1=mouse_check_button_pressed(mb_right);

//if the horizontal movement is greater than the vertical
if (abs(hspeed)>abs(vspeed))
{
//moving right
	if (hspeed>=1)
	{
		image_index = 1;

	}
	if (hspeed<=-1)
	{
		image_index = 0;
	}
}
//if the vertical speed is greater than the horizontal
else
{
	if (vspeed>=1)
	{
		if(hspeed >= 0)
		{
			image_index = 1;
		}
		else
		{
			image_index = 0;
		}
		//image_xscale = abs(image_xscale);
	}
	if (vspeed<=-1)
	{
		image_index = 2;
		//image_xscale = abs(image_xscale) * -1;
	}
}


		
if (distance_to_point(obj_target1.x,obj_target1.y-32)>rundist)
	{
	move_towards_point(obj_target1.x,obj_target1.y-32,run);	
	}
else if (distance_to_point(obj_target1.x,obj_target1.y-32)>walkdist)
	{
	move_towards_point(obj_target1.x,obj_target1.y-32,walk);
	}
else if (distance_to_point(obj_target1.x,obj_target1.y-32)>=slowdist)
	{
	move_towards_point(obj_target1.x,obj_target1.y-32,slow);
	}
else 
	{
		speed = 0;
	}

if (place_meeting(x+hspeed,y+vspeed,obj_wall))
	{
		speed = 0;		
		obj_target1.x = x;
		obj_target1.y = y;
	}
	




