//scp_itemDrop(itemID)
for(i = 0; i < maxItems; i ++)
{
	// if slot i is has itemID
	if(global.inv[i] == argument0)
	{
		global.inv[i] = -1;
		return true;
	}
	
}
return false;