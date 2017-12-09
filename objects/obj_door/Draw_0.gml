/// @description animate sprite
if(open)
{
	//if(image_index != 4)
	//	image_index++;
	//else
		image_index = 4;
}
else
{
	//if(image_index != 0)
	//	image_index--;
	//else
		image_index = 0;
}

if(locked && distance_to_object(obj_baddie) > distance_buffer)
	image_index = 5;
draw_self();