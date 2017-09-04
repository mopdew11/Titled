/// @description 
if(instance_exists(obj_player))
{
	if(distance_to_object(obj_player) <= 20)
	{
		if(instance_exists(obj_bubble))
		{
			obj_bubble.vis = true;
		}
		close = true
	}
	else
	{
		if(instance_exists(obj_bubble))
		{
			obj_bubble.vis = false;
		}
		close = false;
	}
}

if(close == true && keyboard_check_pressed(ord("E")))
{
	if(alt = false)
	{
		if(!instance_exists(obj_text))
		{
			scp_textBox(dialogue,.5,x+10,y-5);
			obj_player.talking = true;
			alt = true;
		}
	}
	else
	{
		if(!instance_exists(obj_text))
		{
			scp_textBox(altDialogue,.5,x+10,y-5);
			obj_player.talking = true;
		}
	}
}
