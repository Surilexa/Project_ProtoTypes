/// @description Insert description here
// You can write your code in this editor
if (obj_guiLibrary.con_tar==my_id)
{
	key_left = keyboard_check(ord("A"));
	key_right = keyboard_check(ord("D"));
	key_up = keyboard_check(ord("W"));
	key_down = keyboard_check(ord("S"));

	key_int1_press = keyboard_check_pressed(ord("K"));
}
else
{
	key_left = 0;
	key_right = 0;
	key_down = 0;
	key_up = 0;
	key_int1_press = 0;
}

move_x = key_right - key_left;
move_y = key_down - key_up;

if (move_x != 0)
	{
		image_xscale = sign(move_x);
	}
move_x *= move_speed;
move_y *= move_speed;

if (place_meeting(x, y+2, obj_wall))
	{
	if (!place_meeting(x+move_x, y+2, obj_wall) && place_meeting(x+move_x, y+10, obj_wall))
		{
			move_x = 0;
		}
	}

move_and_collide(move_x, move_y, obj_wall, 4, 0, 0, move_speed, -1);

//show how many books are being carried
if(array_length(obj_LibraryManager.books_to_return) == 0 && obj_LibraryManager.carrying_customer_book == 1){
	image_index = 1;
}
else if(array_length(obj_LibraryManager.books_to_return) == 1 && obj_LibraryManager.carrying_customer_book == 0){
	image_index = 2;
}
else if(array_length(obj_LibraryManager.books_to_return) == 1 && obj_LibraryManager.carrying_customer_book == 1){
	image_index = 3;
}
else if(array_length(obj_LibraryManager.books_to_return) == 2 && obj_LibraryManager.carrying_customer_book == 0){
	image_index = 4;
}
else if(array_length(obj_LibraryManager.books_to_return) == 2 && obj_LibraryManager.carrying_customer_book == 1){
	image_index = 5;
}
else if(array_length(obj_LibraryManager.books_to_return) == 3 && obj_LibraryManager.carrying_customer_book == 0){
	image_index = 6;
}
else if(array_length(obj_LibraryManager.books_to_return) == 3 && obj_LibraryManager.carrying_customer_book == 1){
	image_index = 7;
}
else{
	image_index = 0;
}