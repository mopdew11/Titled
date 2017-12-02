//scr_melee(weapon, color)
if(!instance_exists(argument0))
{
	switch dir
	{
		case "up": xDir = x; yDir = y - 12; break;
		case "down": xDir = x; yDir = y + 12; break;
		case "right": xDir = x + 12; yDir = y; break;
		case "left": xDir = x - 12; yDir = y; break;
	}

	instance = instance_create_depth(xDir,yDir, 0, argument0);
	with(instance)
	{
		color = argument1;
		damage = argument2;
		dir = obj_player.dir
		switch dir
		{
			case "left": draw_sprite_ext(sprite_index,image_index,x,y,1,1,90,color,1); break;
			case "right": draw_sprite_ext(sprite_index,image_index,x,y,1,1,270,color,1); break;
			case "down": draw_sprite_ext(sprite_index,image_index,x,y,1,1,180,color,1); break;
			case "up": draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,color,1); break;
		}
	}
}