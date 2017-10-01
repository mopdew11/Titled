//scp_maxAmmo(selected, selectedID)
if(argument0 = 0)
{
	switch primary
	{
		case 0:maxAmmo = 20; break
		case 4: maxAmmo = 2; break;
		default: break;
	}
}else
{
	switch secondary
	{
		case 3: maxAmmo = 50;break;
	}
}