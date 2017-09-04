/// @description animate


if(moveY == 0)
{
	switch (sign(moveX))
	{
		case -1: sprite_index = spr_playerLeft; dir = "left"; break;
		case 1: sprite_index = spr_playerRight;dir = "right"; break;
		case 0: break;
	}
}
switch (sign(moveY))
{
	case -1: sprite_index = spr_playerBack; dir = "up"; break;
	case 1: sprite_index = spr_playerFront; dir = "down"; break;
	case 0: break;
}