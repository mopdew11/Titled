//scp_alienGun(damage,scale);
//spawns projectile
instId = instance_create_depth(x,y,10, obj_projectile);

//with the spawned projectile
with(instId)
{
	//set the damage to argument0
	damage = argument0;	
	
	//set size to argument1
	image_xscale = argument1;
	image_yscale = image_xscale;
}