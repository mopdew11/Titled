//scp_moveInv(inventory to,inventory from,slot to, slot from);
if(argument0[argument2] == -1 && argument1[argument3] != -1)
{
	argument0[argument2] = argument1[argument3];
	argument1[argument3] = -1;
	return true;
}
return false;