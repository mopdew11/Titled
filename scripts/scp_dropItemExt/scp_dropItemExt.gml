//scp_dropItemExt(id,name,info,stack,ammoType,ammo,maxAmmo,fireRate)
item = instance_create_depth(x,y,depth,obj_item);
with item
{
	name = argument1;
	info = argument2;
	stack = argument3;
	ID = argument0;
	ammoType = argument4;
	ammo = argument5;
	maxAmmo = argument6;
	fireRate = argument7;
}