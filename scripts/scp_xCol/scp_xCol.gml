//scp_wallCol(); makes sure that the item isnt in a wall when spawned
//position
i = 0;
j = 0;
while(place_meeting(x+i,y,obj_terrain))
{
	i++;
}
while(place_meeting(x-j,y,obj_terrain))
{
	j++;
}
switch(sign(i - j))
{
	case 1: while(place_meeting(x,y+1000,obj_terrain))
			{
				x++;
			}
			break;
	case -1: while(place_meeting(x,y+1000,obj_terrain))
			{
				x--;
			}
			break;
	case 0: x++;
	default: break;
}

