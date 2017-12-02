/// @description detect if player is close, then allow for interaction to open door
if(place_meeting(x+8,y+9,obj_player))
{
	draw_set_color(c_yellow);
	draw_set_font(fnt_prompt);
	draw_text(x-(string_width("E")/2),y-9,"E");
	if(keyboard_check_pressed(ord("E")))
	{
		target.locked = false;
	}
}
