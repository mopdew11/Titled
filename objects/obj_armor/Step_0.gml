/// @description i dont have a description yet
x = obj_player.x;
y = obj_player.y;

slot1 = global.inv[0,23];
slot2 = global.inv[0,24];
slot3 = global.inv[0,25];
slot1Defense = global.inv[4,23];
slot2Defense = global.inv[4,24];
slot3Defense = global.inv[4,25];

totalDefense = 0;
if(sign(slot1Defense) ==1)
{
	totalDefense += slot1Defense;
}
if(sign(slot2Defense) ==1)
{
	totalDefense += slot2Defense;
}
if(sign(slot3Defense) ==1)
{
	totalDefense += slot3Defense;
}

player.defense = baseDefense;
player.defense += totalDefense

depth = obj_player.depth -1;

switch obj_player.dir
{
	case "right": index = 2; break;
	case "left":  index = 1; break;
	case "up": index = 3; break;
	case "down": index = 0; break;
}