/// @description Insert description here
// You can write your code in this editor
if(detected == true)
{
	scp_badShoot(baddieDamage,1.5);
	
	if(!collision_line(x,y,obj_player.x,obj_player.y,obj_terrain,true,false) && alarm[1] == -1)
	{
		pX = (obj_player.x div 16) * 16 + 8;
		pY = (obj_player.y div 16) * 16 + 8
		alarm[1] = 15;
	}
}

if(baddieHealth <= 0)
{
	scp_dropItemExt(item,iName,iInfo,stack,ammoType,ammo,maxAmmo,fireRate);
	instance_destroy();
}