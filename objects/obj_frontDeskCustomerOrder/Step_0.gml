/// @description Insert description here
// You can write your code in this editor

//if the front desk tries to take a customers book
if(has_book_ready == 1)
{
	image_index =1;
	//obj_pcFrontDesk.picked_up_order_from_basket = 1;
}
else
{
	image_index = 0;
}
if (obj_pcFrontDesk.key_int1_press==1)  && (distance_to_object(obj_pcFrontDesk)<=range)
{
	//if the order shelf has an order ready
	if(has_book_ready == 1)
	{
		show_debug_message("Front desk takes customer order from basket");
		//front desk carries the book
		obj_pcFrontDesk.carrying_customer_return_book = 1;
		has_book_ready = 0;
	}
	else
	{
		//no book here
		txtbox = 1;
	}
}

if (txtbox<>0) && (distance_to_object(obj_pcFrontDesk)>range)
{
	txtbox = 0;
}