/// @description detect if player is close, then allow for interaction to open door
if(collision_rectangle(x-4,y-4,x+20,y+20,obj_player,false,false))
{
	
	if(keyboard_check_pressed(ord("E")))
	{
		target.locked = false;
	}
}
