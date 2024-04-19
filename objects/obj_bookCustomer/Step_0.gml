/// @description Insert description here
// You can write your code in this editor
randomize();

if (obj_pcFrontDesk.key_int1_press==1)  && (distance_to_object(obj_pcFrontDesk)<=range && taking_book != 1)
{
	return_or_pickup = irandom_range(0,2);
	show_debug_message("return or pickup decided " + string(return_or_pickup));
	order_choice = possible_books_to_order[irandom_range(0, array_length(possible_books_to_order)-1)];
	//find out if they are returning or picking up a book
	if(return_or_pickup >= 1 && first_time_speaking == 0)
	{
		if(first_time_speaking == 0)
		{
			first_time_speaking = 1;
		}
		returning_book = 1;
		taking_book = 0;
	}
	else if (return_or_pickup == 0 && first_time_speaking == 0)
	{
		if(first_time_speaking == 0)
		{
			first_time_speaking = 1;
		}
		taking_book = 1;
		returning_book = 0;
		
		//20 for player to get the book the customer needs seconds
		show_debug_message("set alarm to 20 seconds")
		//instance_activate_object(alarm[0]);
		alarm[0] = 60 *alarm_tip_reduce_time;
		
		//tip for order customer
		if(finished_tip == 0){
				finished_tip = taking_book_tip;
			}
	}
	
	//if they are returning a book
	if(returning_book == 1)
	{
		//check if return basket has enough space
		//instance_deactivate_object(alarm[0]);
		alarm[0] = -1;
		if(obj_returnBasket.current_book_count < obj_returnBasket.max_books)
		{
			//place book in return basket
			obj_LibraryManager.total_tip_amount +=finished_tip;
			txtbox = 2;
			handle_add_to_return_basket(order_choice);
			show_debug_message("added book to return basket " + order_choice);
			
		}
		//if the return basket doesnt have enough space
		else if (obj_returnBasket.current_book_count >= obj_returnBasket.max_books)
		{
			txtbox = 3;
		}
		if(txtbox == 2){
			instance_create_depth(x,y, 1, obj_finishedCustomer);
			obj_LibraryManager.total_tip_amount += return_customer_tip;
			//reset to new customer
			obj_returnBasket.current_book_count++;
			first_time_speaking =0;
			
			returning_book = 0;
			obj_LibraryManager.num_returned_books ++;
			show_debug_message("Customers Served = " + string (obj_LibraryManager.num_returned_books));
			image_index = irandom_range(0, 7);
			image_xscale *= -1;
		}
		
	}
	//if they are taking a book
	else if (taking_book == 1)
	{
		//wait for the book to arrive
		txtbox = 1;
	}

}
//carrying the customers book
else if (obj_pcFrontDesk.key_int1_press==1)  && (distance_to_object(obj_pcFrontDesk)<=range && obj_pcFrontDesk.carrying_customer_return_book == 1)
{
	show_debug_message("Gave customer " + order_choice);
	obj_LibraryManager.handle_give_book_to_customer();
	obj_LibraryManager.total_tip_amount +=finished_tip;
	printed_tip = finished_tip;
	//reset to new customer
	finished_tip = 0;
	alarm_triggered = 0;
	instance_create_depth(x,y, 1, obj_finishedCustomer);
	obj_bookCustomer.first_time_speaking =0;
	obj_bookCustomer.order_choice = "";
	obj_bookCustomer.taking_book = 0;
	obj_LibraryManager.num_returned_books ++;
	show_debug_message("Customers Served = " + string (obj_LibraryManager.num_returned_books));
	image_index = irandom_range(0, 7);
	image_xscale = -1;
}

if (txtbox<>0) && (distance_to_object(obj_pcFrontDesk)>range)
{
	//if they are waiting for a book
	if(taking_book ==1){
		txtbox = 4;
	}
	else
	{
		txtbox = 0;
	}
}

