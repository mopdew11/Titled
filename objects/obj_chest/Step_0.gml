/// @description 
if(open == false)
{
	image_index = 0;
}else
{
	image_index = 1;
}
if(place_meeting(x,y,obj_player))
{
	if(keyboard_check(ord("E")) && open == false)
	{
		inst = instance_create_depth(x,y,-100,obj_item);
		inst.ID = item;
		open = true;
	}
}