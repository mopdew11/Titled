/// @description detect if player is close, then allow for interaction to open door
if(place_meeting(x+8,y+9,obj_player))
{
	
	if(keyboard_check_pressed(ord("E")))
	{
		target.locked = false;
	}
}
