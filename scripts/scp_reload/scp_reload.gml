//scp_reload(selected);
if(selected = 0)
{
	find = scr_itemCheck(5);
	while(find == true && !(primaryAmmo >= maxAmmo))
	{
		primaryAmmo++;
		find = scr_itemCheck(5);
	}
}
else
{
	find = scr_itemCheck(5);
	while(find == true && !(secondaryAmmo >= maxAmmo))
	{
		secondaryAmmo++;
		find = scr_itemCheck(5);
	}
}
