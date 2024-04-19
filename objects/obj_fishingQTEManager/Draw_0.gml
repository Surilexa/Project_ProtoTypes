/// @description Insert description here
// You can write your code in this editor


if(obj_fishingProgressBar.fishGotAway == true)
{
	draw_text_transformed_color(obj_PCunicorn.x +5, obj_PCunicorn.y-20, "The fish got away...", 1.4,1.4,0,
	c_black,c_black,c_black,c_black,1)
}

if(obj_PCunicorn.isFishing && !delay)
{
	draw_sprite_ext(spr_FishingBorder, 0, obj_movingBar.x+25, obj_movingBar.baseYPos - 75, .5, 1.1, 0, c_white,1);
	draw_sprite_ext(spr_fishingProgressBar, 0, obj_movingBar.x + 31, obj_movingBar.baseYPos+133, 2.15, -obj_fishingProgressBar.currentProgress, 0, c_white,1 );
}


