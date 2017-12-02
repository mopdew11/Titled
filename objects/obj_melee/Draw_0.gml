/// @description rotates sprite so its facing the right way
//dir = obj_player.dir
switch dir
{
	case "left": draw_sprite_ext(sprite_index,image_index,x,y,1,1,90,color,1); break;
	case "right": draw_sprite_ext(sprite_index,image_index,x,y,1,1,270,color,1); break;
	case "down": draw_sprite_ext(sprite_index,image_index,x,y,1,1,180,color,1); break;
	case "up": draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,color,1); break;
}