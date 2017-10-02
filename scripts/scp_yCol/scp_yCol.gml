//y colision
i = 0;
j = 0;
while(place_meeting(x,y+i,obj_terrain))
{
	i++;
}
while(place_meeting(x,y-j,obj_terrain))
{
	j++;
}
switch(sign(i - j))
{
	case 1: while(place_meeting(x+1000,y,obj_terrain))
			{
				y++;
			}
			break;
	case -1: while(place_meeting(x+1000,y,obj_terrain))
			{
				y--;
			}
			break;
	case 0: y++;
	default: break;
}