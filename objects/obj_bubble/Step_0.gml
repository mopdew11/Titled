/// @description
if(instance_exists(obj_npc))
{
	npc = instance_nearest(x,y,obj_npc);
}
else
{
	npc = undefined;
}


if(npc != undefined)
{
	if(obj_player.talking != true && npc.close == true)
	{
		obj_bubble.sprite_index = spr_bubble;
	}
	else if(obj_player.talking == true && npc.close == true)
	{
		obj_bubble.sprite_index = spr_tBubble;
	}
	else if(npc.close == false)
	{
		obj_bubble.sprite_index = spr_tBubble;
	}
}