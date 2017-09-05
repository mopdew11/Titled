/// @description Shortcuts

//set fullscreen
/*if(keyboard_check_pressed(ord("F")) && fullscreenToggle == true)
{
	window_set_fullscreen(false);
	fullscreenToggle = false;
}
if(keyboard_check_pressed(ord("F")))
{
	window_set_fullscreen(true);
	fullscreenToggle = true;
}
*/
//close window
if(keyboard_check(vk_escape))
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