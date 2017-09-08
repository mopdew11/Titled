//scp_itemCheck(itemID);
for(i = 0; i < maxItems; i ++)
{
	// if slot i has itemID
	if(global.inv[i] == argument0)
	{
		return true;
	}
	
}
return false;