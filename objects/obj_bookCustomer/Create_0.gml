/// @description Insert description here
// You can write your code in this editor


randomize()
alarm[0] = -1;
alarm_triggered = 0;
alarm_tip_reduce_time = 20;

taking_book = 0;

finished_tip = 0;
printed_tip = 0;
taking_book_tip = 10;
return_customer_tip = 5;

returning_book = 0;

first_time_speaking = 0;

possible_books_to_order = ["A ducks life","Beautiful feathers","Crappy weather","Duckling tips",
"Every Duck","Farthest flight","Greatest Duck","Hydrodynamics", "I am a duck","Jealous Webbs","Duckula",
"Live Feeders", "Flight height 451", "Little Duck", "Plastic Duck", "Blade Duck", "Value feed deals","Monogamy Practice", 
"Open Season", "Flying 101","Live in a pond", "What's Quackin", "Grabbing Grub", "New nests", "Infinite Pond",
"Kneading Bread","Loaf Lovers","Observabilities", "Rubber Ducks","Sagely plunges","Xenon Liquids","Ugly Duckling","Vacation Ponds"];
randomize();

order_choice = "";

range = 8;

txtbox = 0;

image_speed = 0;
image_index = irandom_range(0, 7);

return_or_pickup = 0;

handle_add_to_return_basket = function (string)
{
	obj_LibraryManager.books_in_the_basket[array_length(obj_LibraryManager.books_in_the_basket)] = string;
	show_debug_message("added to return basket " + string);
	obj_returnBasket.image_index++;
}


