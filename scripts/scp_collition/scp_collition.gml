
//inducts variables
xcol = argument0;
move = argument1;

//if colition is for x
if(xcol == true)
{
	//check if there is something exactly move ahead
	if (place_meeting(x+move,y,obj_terrain))
	{
		//move one in the direction of the object untill there isnt any space left
		while (!place_meeting(x+sign(move),y,obj_terrain))
		{
			x += sign(move);
		}
		//stop when there isnt any space left
		move = 0
	}
	
	//move on x axis
	x += move;
}
//if colltion is for the y
else
{
	//move one in the direction of the object untill there isnt any space left
	if (place_meeting(x,y+move,obj_terrain))
	{
		while (!place_meeting(x,y+sign(move),obj_terrain))
		{
			y += sign(move);
		}
		//stop when there isnt any space left
		move = 0
	}
	//move on y axis
	y += move;
}