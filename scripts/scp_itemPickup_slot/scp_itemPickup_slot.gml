//scr_itemPickup_slot(slot,itemID);
if(global.inv[argument0] == -1)
{
		global.inv[argument0] = argument1;
		return true;
}
return false;