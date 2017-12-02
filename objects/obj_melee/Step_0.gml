/// @description destroys the object when its done animating
if(image_index = 3)
{
	instance_destroy();
}
switch dir
{
	case "Down": x = obj_player.x; y = obj_player.y + 12; break;
	case "up": x = obj_player.x; y = obj_player.y - 12; break;
	case "left": x = obj_player.x - 12; y = obj_player.y; break;
	case "right": x = obj_player.x + 12; y = obj_player.y; break;
}