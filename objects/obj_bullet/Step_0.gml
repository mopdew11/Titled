/// @description 



if (instance_exists(obj_baddie) && place_meeting(x,y,obj_baddie))
{
	bad = instance_place(x,y,obj_baddie)
	bad.baddieHealth -= damage;	
	instance_destroy();
}

if(instance_exists(obj_terrain) && place_meeting(x,y,obj_terrain))
{
	instance_destroy();
}