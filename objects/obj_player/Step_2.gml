/// @description animate


if(moveY == 0)
{
	switch (sign(moveX))
	{
		case -1: sprite_index = spr_playerLeft; break;
		case 1: sprite_index = spr_playerRight; break;
		case 0: break;
	}
}
switch (sign(moveY))
{
	case -1: sprite_index = spr_playerBack; break;
	case 1: sprite_index = spr_playerFront; break;
	case 0: break;
}