/// @description Insert description here
// You can write your code in this editor

randomize()
// ON STEP

if (obj_PCsummer2.key_int1_press==1)  && (distance_to_object(obj_PCsummer2)<=range) && drinks_served < 3
{
	
	//if the player doesnt have a customer already.
	show_debug_message("currently serving " + string(obj_PCsummer2.serving_id))
	if(obj_PCsummer2.serving_id == 0)
	{
		obj_PCsummer2.serving_id = customer_id;
		show_debug_message("now serving " + string(obj_PCsummer2.serving_id))
	}
	//if the player already has a drink to make
	else if((obj_PCsummer2.serving_id != customer_id) && obj_PCsummer2.finished_drink == false)
	{
		obj_PCsummer2.txtbox = 1;
	}
	//if the order is not already taken and the serving id is the same as the customer id.
	if((order_taken == false) && (obj_PCsummer2.serving_id == customer_id))
	{
		show_debug_message("serving id matches order false");
		//if the drink is possible to make
		if(drink_diff <= obj_PCsummer2.big_mixer+obj_PCsummer2.manual+obj_PCsummer2.total_drinks_served + 20)
		{
			food_or_drink = irandom_range(1,2);
			show_debug_message("food or drink "+string(food_or_drink));
			if(food_or_drink == 1)
			{
				obj_PCsummer2.is_food = true;
				
			}
			else
			{
				obj_PCsummer2.is_drink = true;
			}
			obj_PCsummer2.current_drink_difficulty = drink_diff;
			show_debug_message("current drink diff " + string(obj_PCsummer2.current_drink_difficulty));
			order_taken = true;
			txtbox = 1;
			image_index = 0;
		}
		else
		{
			txtbox = 4;
			obj_PCsummer2.serving_id = 0;
		}
		
	}
	else if (order_taken == true && obj_PCsummer2.finished_drink == false)  && (obj_PCsummer2.serving_id == customer_id)
	{
		show_debug_message("serving id matches order true");
		txtbox = 2;
	}
	else if (obj_PCsummer2.finished_drink == true)  && (obj_PCsummer2.serving_id == customer_id)
	{
		show_debug_message("serving id matches drink given");
		txtbox = 3;
		num_finished_drinks++;
		if(difficulty_increase < difficulty_increase_max)
		{
			difficulty_increase = num_finished_drinks * 5;
		}
		obj_PCsummer2.finished_drink = false;
		obj_PCsummer2.current_drink_difficulty= 0;
		obj_PCsummer2.serving_id = 0;
		obj_PCsummer2.total_drinks_served++;
		obj_PCsummer2.is_drink = false;
		obj_PCsummer2.is_food = false;
		order_taken = false;
		drink_diff = irandom_range(difficulty_min + difficulty_increase, difficulty_max + difficulty_increase);
		obj_DrinkCode.fixed = 0;
		obj_FoodCode.fixed = 0;
		obj_PCsummer2.image_index = 0;
		drinks_served++;
		food_or_drink = 0;
		if(drinks_served < 3)
		{
			image_index = 1;
		}
		
	}
}
if (txtbox<>0) && (distance_to_object(obj_PCsummer2)>range)
{
	txtbox = 0;
}
if(distance_to_object(obj_PCsummer2)>range && obj_PCsummer2.serving_id != customer_id && obj_PCsummer2.serving_id != 0)
{
	obj_PCsummer2.txtbox = 0;
	//show_debug_message(obj_PCsummer2.txtbox);
}

// END STEP
