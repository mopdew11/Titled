/// @description 
if(place_meeting(x,y,obj_player))
{
	if(keyboard_check_pressed(ord("E")))
	{
		if(slot == 1)
		{
			obj_player.Primary = ID;
			instance_destroy();
		}
		else
		{
			obj_player.secondary = ID;
			instance_destroy();
		}
	}
}