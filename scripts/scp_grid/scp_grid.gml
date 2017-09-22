//scp_grid(columns,rows,startX,startY,xOffset,yOffset,start,length);
//draw inventory slots(moves invisible inventory buttons to the slots)
columns = argument0;
rows = argument1;
startX = argument2;
startY = argument3;
xOffset = 42;
yOffset = 46;
j = 1;
k = 0;

for(i =0; i < maxItems; i++)
{
	if(i < j * columns)
	{			
		ypos = startY + (j * yOffset);
		xpos = startX + (k * xOffset);
		button[i].startX = xpos;
		button[i].startY = ypos;
		k++;
	}
	else
	{
		k = 0;
		j++;
		i--;
	}
}