/// @description Shortcuts

//mouse lock
if(inventory == false)
{
	window_mouse_set(clamp(window_mouse_get_x(),0,window_get_width()),clamp(window_mouse_get_y(),0,window_get_height()));
}

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
//close inventory
if(inventory == true)
{
	if(keyboard_check_pressed(vk_escape))
	{
		inventory = false;
	}
}
//close game
if(keyboard_check_pressed(vk_f11))
	game_end();
//go to tutorial
if(keyboard_check_pressed(vk_f1))
{
	room_goto(rm_tutorial);
	obj_player.x = 880;
	obj_player.y = 368;
}
//go to first level
if(keyboard_check_pressed(vk_f2))
{
	room_goto(rm_level0);
	obj_player.x = 232;
	obj_player.y = 119;
}
//go to sescond level
if(keyboard_check_pressed(vk_f3))
{
	room_goto(rm_level1);
	obj_player.x = 327;
	obj_player.y = 183;
}