/// @description open/close door
if((!locked && (distance_to_object(obj_player) < distance_buffer )) || ( distance_to_object(obj_baddie) < 10))
{
	open = true;
} 
else
{
	open = false;
}
