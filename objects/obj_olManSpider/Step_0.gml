/// @description 
if(instance_exists(obj_player))
{
	if(distance_to_object(obj_player) <= 20)
	{
		if(instance_exists(obj_bubble))
		{
			obj_bubble.sprite_index = spr_bubble;
		}
		obj_player.close = true
	}
	else
	{
		if(instance_exists(obj_bubble))
		{
			obj_bubble.sprite_index = spr_tBubble;
		}
		obj_player.close = false;
	}
}