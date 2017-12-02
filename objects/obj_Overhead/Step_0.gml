/// @description Shortcuts

//mouse lock
window_mouse_set(clamp(window_mouse_get_x(),0,window_get_width()),clamp(window_mouse_get_y(),0,window_get_height()));

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
