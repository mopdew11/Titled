//scr_melee(weapon)
if(!instance_exists(argument0))
{
	switch dir
	{
		case "up": xDir = x; yDir = y - 12; break;
		case "down": xDir = x; yDir = y + 12; break;
		case "right": xDir = x + 12; yDir = y; break;
		case "left": xDir = x - 12; yDir = y; break;
	}

	instance = instance_create_layer(xDir,yDir, layer, argument0);
	with(instance)
	{
		dir = obj_player.dir
		switch dir
		{
			case "left": draw_sprite_ext(sprite_index,image_index,x,y,1,1,90,c_white,1); break;
			case "right": draw_sprite_ext(sprite_index,image_index,x,y,1,1,270,c_white,1); break;
			case "down": draw_sprite_ext(sprite_index,image_index,x,y,1,1,180,c_white,1); break;
			case "up": draw_sprite(sprite_index,image_index,x,y); break;
		}
	}
}