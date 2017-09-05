/// @description rotates sprite so its facing the right way
//dir = obj_player.dir
switch dir
{
	case "left": draw_sprite_ext(sprite_index,image_index,x,y,1,1,90,c_white,1); break;
	case "right": draw_sprite_ext(sprite_index,image_index,x,y,1,1,270,c_white,1); break;
	case "down": draw_sprite_ext(sprite_index,image_index,x,y,1,1,180,c_white,1); break;
	case "up": draw_sprite(sprite_index,image_index,x,y); break;
}