if(pause)
{
	textOffset = string_height("PAUSED FOR DAYS< YO");
	guiX = device_mouse_x_to_gui(0);
	guiY = device_mouse_y_to_gui(0);
	startX = display_get_gui_width()-130;
	startY = display_get_gui_height()- 70;
	startXR = (display_get_gui_width()/2)-128+textOffset;
	startYR = (display_get_gui_height()/2)+64;
	
	
	
	draw_set_color(c_black);
	draw_rectangle(0,0,display_get_gui_width(),display_get_gui_height(),false);
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_font(fnt_largest);
	draw_text(display_get_gui_width()/2,display_get_gui_height()/2,"PAUSED FOR DAYS, YO");
	draw_set_halign(fa_left);
	
	if(guiX > startXR && guiX < startXR +129 && guiY > startYR && guiY < startYR + 64) 
	{
		draw_sprite(spr_return,1,startXR,startYR);
		returnActive = true;
	}
	else
	{
		draw_sprite(spr_return,0,startXR,startYR);
		returnActive = false;
	}
	
	if(guiX > startX && guiY > startY)
	{
		draw_sprite(spr_closeGame,1,display_get_gui_width()-130,display_get_gui_height()- 70);
		exitActive = true;
	}
	else
	{
		draw_sprite(spr_closeGame,0,display_get_gui_width()-130,display_get_gui_height()- 70);
		exitActive = false;
	}
}