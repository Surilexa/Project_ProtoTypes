/// @description Insert description here
// You can write your code in this editor

if (obj_pcQuestGetter.key_int1_press==1)  && (distance_to_object(obj_pcQuestGetter)<=range)
{
	if(first_time)
	{
		txtbox = 1;
		first_time = false;

	}
	else
	{
		if(obj_LibraryManager.num_returned_books < obj_pcQuestGetter.customers_to_serve)
		{
			if(first_time == false && txtbox <= 1)
			{
				txtbox = 2;
			}
			else if (txtbox == 2)
			{
				txtbox =3;
			}
			else if (txtbox == 3)
			{
				txtbox =4;
			}
			else if (txtbox == 4)
			{
				txtbox =5;
				obj_pcQuestGetter.customer_quest = 1;
				obj_guiLibrary.characters_Unlocked = 1;
				obj_pcQuestGetter.tutorial = 0;
			}
		}
		else if (obj_LibraryManager.num_returned_books >= obj_pcQuestGetter.customers_to_serve)
		{
			txtbox = 7;
			image_index = 0;
		}
	}
}

if (txtbox<>0) && (distance_to_object(obj_pcQuestGetter)>range)
{
	txtbox = 0;
}