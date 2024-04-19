/// @description Insert description here
// You can write your code in this editor


if (obj_PCunicorn.key_int1==1) && (distance_to_point(mouse_x,mouse_y)<=range &&
!obj_PCunicorn.isFishing && distance_to_point(obj_PCunicorn.x,obj_PCunicorn.y)<=range && turnOn)
{
	obj_fishingQTEManager.startFishing = true;
}
else if (obj_PCunicorn.key_int1==1 && obj_PCunicorn.isFishing && !antispam)
{
	obj_fishingQTEManager.endFishing = true;
}
visible = turnOn;
if(cooldown)
{
	turnOn = false;
	cooldown = false;
	alarm[0] = cooldownTime;
}
