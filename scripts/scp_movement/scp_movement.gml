//determin what direction the player moves by adding inputs
//and then multiplying it by argument0
moveY = (down + up) * argument0;
moveX = (right + left) * argument0;

//collision
if (place_meeting(x+moveX,y,obj_terrain))
{
	while (!place_meeting(x+sign(moveX),y,obj_terrain))
	{
		x += sign(moveX);
	}
	moveX = 0;
}
//move on x axis
x += moveX;

if (place_meeting(x,y+moveY,obj_terrain))
{
	while (!place_meeting(x,y+sign(moveY),obj_terrain))
	{
		y += sign(moveY);
	}
	moveY = 0;
}
//move on y axis
y += moveY;


//you don't need coments on this, you've seen this code lots