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
		if(obj_LibraryManager.total_tip_amount < obj_pcQuestGetter.tip_needed)
		{
			if(first_time == false && txtbox <= 1)
			{
				txtbox = 2;
			}
			else if (txtbox == 2)
			{
				txtbox =3;
				obj_pcQuestGetter.tip_quest = 1;
				obj_pcQuestGetter.tutorial = 1;
			}
		}
		else if (obj_LibraryManager.total_tip_amount >= obj_pcQuestGetter.tip_needed)
		{
			txtbox = 4;
			image_index = 0;
		}
	}
}

if (txtbox<>0) && (distance_to_object(obj_pcQuestGetter)>range)
{
	txtbox = 0;
}