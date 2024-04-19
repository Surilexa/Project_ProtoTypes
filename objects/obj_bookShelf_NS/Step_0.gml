/// @description Insert description here
// You can write your code in this editor



if (obj_pcBookGrabber.key_int1_press==1)  && (distance_to_object(obj_pcBookGrabber)<=range) 
{
	//if there are books to return
	if(array_length(obj_LibraryManager.books_to_return) > 0){
		//takes the first letter of the book in the first slot of the array
		first_letter_return = string_char_at(array_first(obj_LibraryManager.books_to_return), 1);
		//try returning book to library
		if(array_contains(bookshelf_id, first_letter_return))
		{
			show_debug_message("returned book " + array_first(obj_LibraryManager.books_to_return));
			obj_LibraryManager.handle_return_book_to_library(obj_LibraryManager.books_to_return);
		}
		else
		{
			txtbox = 1;
		}
		
			/*else if (first_letter == bookself_id && obj_LibraryManager.carrying_customer_book ){
				obj_LibraryManager.handle_add_to_return(obj_LibraryManager.books_to_return,
												obj_LibraryManager.customer_order_book_title);
				obj_pcBookGrabber.txtbox = 1;
			}*/
	}
		//if we have a customer book to grab
	if(obj_LibraryManager.carrying_customer_book == 0 && obj_bookCustomer.taking_book == 1)
	{
		first_letter_order = string_char_at(obj_bookCustomer.order_choice, 1);
		if(array_contains(bookshelf_id, first_letter_order))
		{
			show_debug_message("Grabbed book " + obj_bookCustomer.order_choice);
			obj_LibraryManager.carrying_customer_book = 1;
		}
		else
		{
			show_debug_message("Wrong return place");
			txtbox = 2;
		}
	}
	//try take book from library
	
}


if (txtbox<>0) && (distance_to_object(obj_pcBookGrabber)>range)
{
	txtbox = 0;
}
