/// @description Insert description here
// You can write your code in this editor


//WHEN DUPLICATING

//IN DRAW CHANGE THE DRAW drink_diff to the correct customer number.
//CHANGE COLOR
//CHANGE CUSTOMER ID
//CHANGE MIN AND MAX OF DIFFICULTY

randomize();

customer_id = 1;

order_taken = false;
finished_order = false;
num_finished_drinks = 0;

difficulty_increase = 0;
difficulty_increase_max = 10;

difficulty_max = 20;
difficulty_min = 1;


txtbox = 0;

range = 8;
drinks_served = 0;
past_difficulty = 0;

food_or_drink = 0;

image_speed = 0;
image_index = 1;

//gui_x_pos = ((obj_customer.x / obj_room_camS2.sizew) - int64((obj_customer.x / obj_room_camS2.sizew))) * obj_room_camS2.sizew
//gui_y_pos = ((obj_customer.y / obj_room_camS2.sizeh) - int64((obj_customer.y / obj_room_camS2.sizeh))) * obj_room_camS2.sizeh

drink_diff = irandom_range(difficulty_min,difficulty_max) + difficulty_increase;