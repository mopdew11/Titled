//scp_reload(selected);
if(argument0 = 0)
{
	find = scr_itemCheck(global.inv[4,20]);
	if(find != false)
	{
		while(global.inv[3,find] != 0 && global.inv[5,20] < global.inv[6,20])
		{
			global.inv[5,20]++;
			global.inv[3,find]--;
		}
		if(global.inv[3,find] == 0)
		{
			scp_itemDrop_slot(find);
		}
	}
}
else
{
	find = scr_itemCheck(global.inv[4,21]);
	if(find != false)
	{
		while(global.inv[3,find] != 0 && global.inv[5,21] < global.inv[6,21])
		{
			global.inv[5,21]++;
			global.inv[3,find]--;
		}
		if(global.inv[3,find] == 0)
		{
			scp_itemDrop_slot(find);
		}
	}
}
