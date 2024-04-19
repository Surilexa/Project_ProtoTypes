/// @description Insert description here
// You can write your code in this editor

//if the front desk tries to take a customers book

if (obj_pcBookGrabber.key_int1_press==1)  && (distance_to_object(obj_pcBookGrabber)<=range)
{
	//if the grabber is carrying the customer order
	if(obj_LibraryManager.carrying_customer_book == 1)
	{
		txtbox = 2;
		obj_LibraryManager.carrying_customer_book = 0;
		obj_frontDeskCustomerOrder.has_book_ready = 1;
	}
	else
	{
		txtbox = 1;
	}
}

if (txtbox<>0) && (distance_to_object(obj_pcFrontDesk)>range)
{
	txtbox = 0;
}