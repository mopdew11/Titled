/// @description go to next room
if(death = true)
{
	obj_player.x = startPosX;
	obj_player.y = startPosY;
	instance_destroy();
}
if room_exists(room_next(room)) room_goto_next();
death = true;