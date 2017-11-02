//scp_dropItem
item = instance_create_depth(x,y,depth,obj_item);
with item
{
	name = other.iName;
	info = other.iInfo;
	stack = other.stack;
	ID = other.item;
	ammoType = other.ammoType;
	ammo = other.ammo;
	maxAmmo = other.maxAmmo;
	fireRate = other.fireRate;
}