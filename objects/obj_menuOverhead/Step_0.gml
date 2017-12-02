
//close window
if(keyboard_check_pressed(vk_escape))
{
	game_end();
}

//reset room
if(!instance_exists(obj_player))
{
	if(keyboard_check_pressed(ord("R")))
	{
		room_restart();
	}
}