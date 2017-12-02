if(distance_to_object(obj_player <=4))
	close = true;

inst = collision_rectangle(x-4,y-4,x+20,y+20,obj_player,true,true);
if(inst != noone)
{
	if(keyboard_check_pressed(ord("E")) && !instance_exists(obj_text))
	{
		scp_textBox(text,.5,x,y);
	}
}