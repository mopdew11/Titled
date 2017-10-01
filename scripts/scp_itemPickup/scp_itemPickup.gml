//scp_itemPickup(itemID,canStack);
for(i = 0; i < maxItems; i ++)
{
	// if slot i is empty
	if(global.inv[i] == -1)
	{
		global.inv[i] = argument0;
		return true;
	}
	
}

return false;