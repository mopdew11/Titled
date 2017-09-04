/// @description 
if(instance_exists(obj_npc))
{
	NPC = instance_nearest(x,y,obj_npc);
}
else
{
	npc = undefined;
}