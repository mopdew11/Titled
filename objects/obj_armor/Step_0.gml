/// @description i dont have a description yet
x = obj_player.x;
y = obj_player.y;

slot1 = global.inv[0,23];
slot2 = global.inv[0,24];
slot3 = global.inv[0,25];

depth = obj_player.depth -1;

switch obj_player.dir
{
	case "right": index = 2; break;
	case "left":  index = 1; break;
	case "up": index = 3; break;
	case "down": index = 0; break;
}