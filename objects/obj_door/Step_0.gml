/// @description open/close door
if((!locked && (distance_to_object(obj_player) < 10 )) || ( distance_to_object(obj_baddie) < 10))
{
	open = true;
} 
else
{
	open = false;
}
