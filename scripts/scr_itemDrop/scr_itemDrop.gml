//scp_itemDrop(itemID)
for(i = 0; i < maxItems; i ++)
{
	// if slot i is has itemID
	if(global.inv[0,i] == argument0)
	{
		for(j = 0; j < array_height_2d(global.inv); j ++)
		{
			global.inv[j,i] = -1;
		}
		return true;
	}
	
}
return false;