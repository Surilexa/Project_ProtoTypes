/// @description Insert description here
// You can write your code in this editor

if(isFishing)
{
	image_index = 1;
}
else if (!isFishing)
{
	image_index = 0;
}
key_int1 = mouse_check_button_pressed(mb_right);

/*if(obj_NPCMerchant.merchantWindow == true || obj_NPCMerchantSell.merchantWindow == true || obj_NPCMerchantApple.merchantWindow == true)
{
	//show_debug_message("merchantwindowOn");
	obj_tar1.x = x;
	obj_tar1.y = y;
}*/
if(isBusy)
{
	obj_tar1.y = y;
	if(instance_nearest(x,y,obj_AnimFishingSpot).x > x)
	{
		obj_tar1.x = x+2;
	}
	else
	{
		obj_tar1.x = x-2;
	}
}

pd = point_direction(x, y, obj_tar1.x, obj_tar1.y);
		
if (distance_to_point(obj_tar1.x,obj_tar1.y)>rundist)
{
	move_towards_point(obj_tar1.x,obj_tar1.y,run);	
}
else if (distance_to_point(obj_tar1.x,obj_tar1.y)>walkdist)
{
	move_towards_point(obj_tar1.x,obj_tar1.y,walk);
}
else if (distance_to_point(obj_tar1.x,obj_tar1.y)>=slowdist)
{
	move_towards_point(obj_tar1.x,obj_tar1.y,slow);
}
else 
{
	speed = 0;
}

if (place_meeting(x+hspeed,y+vspeed,obj_wall))
{
	speed = 0;		
	obj_tar1.x = x;
	obj_tar1.y = y;
}

if(obj_tar1.x < x)
{
	image_xscale = 1
}
else
{
	image_xscale = -1;	
}
	