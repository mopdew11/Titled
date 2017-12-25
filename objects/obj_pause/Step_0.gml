if(exitActive == true && mouse_check_button_pressed(mb_left))
{
	game_end();	
}
if(returnActive == true && mouse_check_button_pressed(mb_left))
{
	pause = false;
	instance_activate_all();
}