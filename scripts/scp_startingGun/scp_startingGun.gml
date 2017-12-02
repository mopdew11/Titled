//scp_startingGun(damage);
instId = instance_create_depth(x,y,0,obj_bullet);
with(instId)
{
	//set the damage to argument0
	damage = argument0;
}