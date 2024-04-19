/// @description Insert description here
// You can write your code in this editor


if (con_tar==1)
{
	draw_text(10,10,"Player 1: Quest Grabber");
}
else if (con_tar==2)
{
	draw_text(10,10,"Player 2: Front Desk");
}
else if (con_tar==3)
{
	draw_text(10,10,"Player 3: Book Mover");
}

if(array_length(obj_LibraryManager.books_to_return) > 0){
	draw_text(600,10,"Currently Returning");
	draw_text(600,26,"----------------------");
	draw_text(600,40, array_first(obj_LibraryManager.books_to_return));
}
if(obj_bookCustomer.order_choice != "" && obj_bookCustomer.taking_book == 1){
	draw_text(600,64,"Current Customer Order");
	draw_text(600,80,"----------------------");
	draw_text(600,96, obj_bookCustomer.order_choice);
}
if(obj_pcQuestGetter.customer_quest == 1)
{
	draw_text(10,30,"Customers Served " + string(obj_LibraryManager.num_returned_books) + "/" + string(obj_pcQuestGetter.customers_to_serve));
}
if(obj_pcQuestGetter.tip_quest == 1)
{
	draw_text(10,48,"Today's Tips " + string(obj_LibraryManager.total_tip_amount) + "/" + string(obj_pcQuestGetter.tip_needed));
}
if(obj_pcQuestGetter.tutorial == 1)
{
	draw_text(10,30,"Find Employer ");
}