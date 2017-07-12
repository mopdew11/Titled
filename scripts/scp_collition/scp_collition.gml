xcol = argument0;
move = argument1;

if(xcol == true)
{
	if (place_meeting(x+move,y,obj_terrain))
	{
		while (!place_meeting(x+sign(move),y,obj_terrain))
		{
			x += sign(move);
		}
		move = 0
	}

	//move on x axis
	x += move;
}
else
{
	if (place_meeting(x,y+move,obj_terrain))
	{
		while (!place_meeting(x,y+sign(move),obj_terrain))
		{
			y += sign(move);
		}
		move = 0
	}
	//move on y axis
	y += move;
}