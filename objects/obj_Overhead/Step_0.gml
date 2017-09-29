/// @description Shortcuts

//set fullscreen
if keyboard_check_pressed(vk_f11)
{
   if window_get_fullscreen()
   {
		window_set_fullscreen(false);
   }
   else
   {
      window_set_fullscreen(true);
   }
}
//close window
if(inventory != true)
{
	if(keyboard_check_pressed(vk_escape))
	{
		game_end();
	}
}else
{
	if(keyboard_check_pressed(vk_escape))
	{
		inventory = false;
	}
}
//reset room
if(!instance_exists(obj_player))
{
	if(keyboard_check_pressed(ord("R")))
	{
		room_restart();
	}
}