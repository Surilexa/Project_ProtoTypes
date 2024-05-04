/// @description Insert description here
// You can write your code in this editor

startx = camera_get_view_x(view_get_camera(0))+21;
starty = camera_get_view_y(view_get_camera(0))+50;


//apple icon and amount txt
draw_sprite_ext(spr_appleInv, 0, camera_get_view_x(view_get_camera(0))-10, camera_get_view_y(view_get_camera(0))+ 455, 1.7,1.7,0,c_white,1);
draw_sprite_ext(spr_dialogBox1, 0, camera_get_view_x(view_get_camera(0))+65, camera_get_view_y(view_get_camera(0))+500, .6, .6, 0, c_white, 1);
if(obj_PCunicorn.apple < 10)
{
	draw_text(camera_get_view_x(view_get_camera(0))+74, camera_get_view_y(view_get_camera(0))+503, string(obj_PCunicorn.apple));
}
else
{
	draw_text(camera_get_view_x(view_get_camera(0))+70, camera_get_view_y(view_get_camera(0))+503, string(obj_PCunicorn.apple));
}



if(inventory)
{
	draw_sprite_ext(spr_inventory, 0, camera_get_view_x(view_get_camera(0)), camera_get_view_y(view_get_camera(0))-40, 2, 2, 0, c_white, 1)
	//coconut
	draw_sprite_ext(spr_dialogBox1, 0, distanceBetweenBoxes+startx, starty, .6, .6, 0, c_white, 1);
	if(obj_PCunicorn.coconut <10)
	{
		draw_text(distanceBetweenBoxes+startx+9, starty+3, string(obj_PCunicorn.coconut));
	}
	else
	{
		draw_text(distanceBetweenBoxes+startx+5, starty+3, string(obj_PCunicorn.coconut));
	}
	
	//pineapple
	draw_sprite_ext(spr_dialogBox1, 0, 2*distanceBetweenBoxes+startx, starty, .6, .6, 0, c_white, 1);
	if(obj_PCunicorn.pineapple <10)
	{
		draw_text(2*distanceBetweenBoxes+startx+9, starty+3, string(obj_PCunicorn.pineapple));
	}
	else
	{
		draw_text(2*distanceBetweenBoxes+startx+5, starty+3, string(obj_PCunicorn.pineapple));
	}
	
	//watermelon
	draw_sprite_ext(spr_dialogBox1, 0, 3*distanceBetweenBoxes+startx, starty, .6, .6, 0, c_white, 1);
	if(obj_PCunicorn.watermelon <10)
	{
		draw_text(3*distanceBetweenBoxes+startx+9, starty+3, string(obj_PCunicorn.watermelon));
	}
	else
	{
		draw_text(3*distanceBetweenBoxes+startx+5, starty+3, string(obj_PCunicorn.watermelon));
	}
	
	//pinappleJuice
	draw_sprite_ext(spr_dialogBox1, 0, 4*distanceBetweenBoxes+startx, starty, .6, .6, 0, c_white, 1);
	if(obj_PCunicorn.pineappleJuice <10)
	{
		draw_text(4*distanceBetweenBoxes+startx+9, starty+3, string(obj_PCunicorn.pineappleJuice));
	}
	else
	{
		draw_text(4*distanceBetweenBoxes+startx+5, starty+3, string(obj_PCunicorn.pineappleJuice));
	}
	
	//watermelonJuice
	draw_sprite_ext(spr_dialogBox1, 0, 5*distanceBetweenBoxes+startx, starty, .6, .6, 0, c_white, 1);
	if(obj_PCunicorn.watermelonJuice <10)
	{
		draw_text(5*distanceBetweenBoxes+startx+9, starty+3, string(obj_PCunicorn.watermelonJuice));
	}
	else
	{
		draw_text(5*distanceBetweenBoxes+startx+5, starty+3, string(obj_PCunicorn.watermelonJuice));
	}
	
	//goldfish
	draw_sprite_ext(spr_dialogBox1, 0, 6*distanceBetweenBoxes+startx, starty, .6, .6, 0, c_white, 1);
	if(obj_PCunicorn.goldFish <10)
	{
		draw_text(6*distanceBetweenBoxes+startx+9, starty+3, string(obj_PCunicorn.goldFish));
	}
	else
	{
		draw_text(6*distanceBetweenBoxes+startx+5, starty+3, string(obj_PCunicorn.goldFish));
	}
	
	//rainbowtrout
	draw_sprite_ext(spr_dialogBox1, 0, 7*distanceBetweenBoxes+startx, starty, .6, .6, 0, c_white, 1);
	if(obj_PCunicorn.carp <10)
	{
		draw_text(7*distanceBetweenBoxes+startx+9, starty+3, string(obj_PCunicorn.carp));
	}
	else
	{
		draw_text(7*distanceBetweenBoxes+startx+5, starty+3, string(obj_PCunicorn.carp));
	}
	
	
	//catfish
	draw_sprite_ext(spr_dialogBox1, 0, 8*distanceBetweenBoxes+startx, starty, .6, .6, 0, c_white, 1);
	if(obj_PCunicorn.catfish <10)
	{
		draw_text(8*distanceBetweenBoxes+startx+9, starty+3, string(obj_PCunicorn.catfish));
	}
	else
	{
		draw_text(8*distanceBetweenBoxes+startx+5, starty+3, string(obj_PCunicorn.catfish));
	}
}

