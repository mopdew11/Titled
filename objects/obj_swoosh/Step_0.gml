
x = obj_player.x;
y = obj_player.y;
visible = false;
if(obj_player.sprint = true)
{
	up = keyboard_check(ord("W"));
	down = -keyboard_check(ord("S"));
	left = keyboard_check(ord("A"));
	right = -keyboard_check(ord("D"));

	visible = true;

	vert = up + down;
	hori = right + left;

	if(vert = 1)
	{
		switch hori
		{
			case 1: image_angle = 315; break;
			case -1: image_angle = 225; break;
			default: image_angle = 270; break
		}
	}
	else if(vert = -1)
	{
		switch hori
		{
			case 1: image_angle = 45; break;
			case -1: image_angle = 135; break;
			default: image_angle = 90; break;
		}
	}
	else
	{
		switch hori
		{
			case 1: image_angle = 0; break;
			case -1: image_angle = 180; break;
			default: visible = false; break;
		}
	}

	if(x = prevX && y = prevY)
		visible = false;
	else
		visible = true;
	prevX = x;
	prevY = y;
}
