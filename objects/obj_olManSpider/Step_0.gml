/// @description
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

if(close == true && keyboard_check_pressed(ord("E")))
{
	if(step = 0)
	{
		scp_textBox(dialogue,.5,x+10,y-5,false);
		obj_player.talking = true;
		step = 1;
	}
	else if(step = 1)
	{
		instance_destroy(instance_nearest(x,y,obj_text));
		scp_textBox("respond\n" + r1 + "\n" + r2,.5,x+10,y-5,true);
		step = 2;
	}
	else if(step = 2)
	{
		if(response = 0)
		{
			instance_destroy(instance_nearest(x,y,obj_text));
			scp_textBox(d1,.5,x+10,y-5,false);
			step = 3;
		}else if(response = 1)
		{
			instance_destroy(instance_nearest(x,y,obj_text));
			scp_textBox(d2,.5,x+10,y-5,false);
			step = 3;	
		}else
		{
			instance_destroy(instance_nearest(x,y,obj_text));
			scp_textBox("something has fucked up, you shouldnt see this unless you're debugging",.5,x,y,false);
			step = 3;
		}
		
	}
	
	else if(step = 3)
	{
		instance_destroy(instance_nearest(x,y,obj_text));
		scp_textBox(altDialogue,.5,x+10,y-5,false);
		obj_player.talking = true;
	}
}
