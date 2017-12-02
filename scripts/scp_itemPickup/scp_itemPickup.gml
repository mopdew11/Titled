//scp_itemPickup(itemID,name,info,stack,ammotype,ammo,maxAmmo);
itemExists = scr_itemCheck(argument0);
if(itemExists != false)
{
	global.inv[3,itemExists] += argument3;
	return true;
}else
{
	for(i = 0; i < maxItems; i ++)
	{
		// if slot i is empty
		if(global.inv[i] == -1)
		{
			global.inv[0,i] = argument0;//id
			global.inv[1,i] = argument1;//name
			global.inv[2,i] = argument2;//info
			global.inv[3,i] = argument3;//stack
			global.inv[4,i] = argument4;//ammoType
			global.inv[5,i] = argument5;//ammo
			global.inv[6,i] = argument6;//maxAmmo
			global.inv[7,i] = argument7;
		
			return true;
		}
	}

	return false;
}