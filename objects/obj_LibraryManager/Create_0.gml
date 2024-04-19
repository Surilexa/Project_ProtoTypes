/// @description Insert description here
// You can write your code in this editor

//gameplay variables
customer_order_book_title = "";
books_to_return = [];
books_in_the_basket = [];

carrying_customer_book = 0;

//quest objectives 
quests = 0;

max_holding_books = 3;
num_returned_books = 0;

total_tip_amount = 0;


//function: call when taking customer order.
//adds book title to books_to_return array.

handle_add_to_return = function (array, string)
{
	array[array_length(array)] = string;
}

//function: call when player returns book to shelf

handle_return_book_to_library = function (array)
{
	if(array_length(array) > 0)
	{
		num_returned_books ++;
		array_shift(array);
	}
}
handle_give_book_to_customer = function ()
{
	obj_pcFrontDesk.carrying_customer_return_book = 0;
	//implement walk off screen here
	//thank the front desk
	if(obj_bookCustomer.alarm_triggered == 0)
	{
		obj_bookCustomer.txtbox = 5;
	}
	else
	{
		obj_bookCustomer.txtbox = 6;
	}
	
	
}