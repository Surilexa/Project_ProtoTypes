/// @description Insert description here
// You can write your code in this editor

//send the books to the grabber
if (obj_pcFrontDesk.key_int1_press==1)  && (distance_to_object(obj_pcFrontDesk)<=range)
{
	//has books to return
	if(current_book_count > 0 && txtbox == 0)
	{
		txtbox = 1;
	}
	//confirm message is already up
	else if (txtbox == 1)
	{
		//for each book in the return basket untill the grabber is full
		for(var i = 0; i < array_length(obj_LibraryManager.books_in_the_basket)+removed; i += 1)
		{
			//if grabber is not full
			if(array_length(obj_LibraryManager.books_to_return) < obj_pcBookGrabber.max_holding_capacity)
			{
				//give books to the grabber/books to return array.
				obj_LibraryManager.handle_add_to_return(obj_LibraryManager.books_to_return, obj_LibraryManager.books_in_the_basket[0])
				//remove the books in the basket being sent to the return array
				removed++;
				array_delete(obj_LibraryManager.books_in_the_basket, 0, 1);
				//change appearence for each book removed
				image_index -=1;
				current_book_count --;
			}
		}
		removed = 0;
		txtbox = 0;
		
	}
	
	//send to the grabber player
	
	
}

if (txtbox<>0) && (distance_to_object(obj_pcFrontDesk)>range)
{
	txtbox = 0;
}


