//scp_itemCheck(itemID);
for(i = 0; i < maxItems; i ++)
{
	// if slot i has itemID
	if(global.inv[0,i] == argument0)
	{
		return i;
	}
}
return false;