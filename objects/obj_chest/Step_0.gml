/// @description check if player is close enough to open chest
inst = collision_rectangle(x-4,y-4,x+20,y+20,obj_player,true,true);
if(inst != noone)
{
	if(keyboard_check(ord("E")) && !open)
	{
		open = true;
		image_index = 1;
		scp_dropItemExt(ID,name,info,stack,ammoType,ammo,maxAmmo,fireRate);
	}
}

if(open == false)
{
	image_index = 0;
}