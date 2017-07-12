/// @description destroy self on collision
if (instance_exists(obj_baddie) && place_meeting(x,y,obj_baddie))
{

	hlth = instance_place(x,y,obj_baddie).baddieHealth;
	hlth -= damage;
	
	if(hlth <= 0)
	{
		instance_destroy(instance_place(x,y,obj_baddie));
	}
	
	instance_destroy();
}


if(instance_exists(obj_terrain) && place_meeting(x,y,obj_terrain))
{
	instance_destroy();
}
