//scr_temPckup_slot(slot,temD,name,nfo,stack,ammoType,anno,maxAmmo);
if(global.inv[0,argument0] == -1)
{
		global.inv[0,argument0] = argument1;//id
		global.inv[1,argument0] = argument2;//name
		global.inv[2,argument0] = argument3;//info
		global.inv[3,argument0] = argument4;//stack
		global.inv[4,argument0] = argument5;//ammoType
		global.inv[5,argument0] = argument6;//ammo
		global.inv[6,argument0] = argument7;//maxAmmo
		
		return true;
}
return false;