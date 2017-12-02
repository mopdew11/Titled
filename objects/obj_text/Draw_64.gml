/// @description add text over time
if(instance_nearest(x,y,obj_npc).close == true)
{
	if(keyboard_check_pressed(ord("E"))&& start = 1)
	{
		time = text_length -1;	
	}
	if (time < text_length)
	{
		time += spd;
		print = string_copy(text,0,time);
		if(i > 3)
		{
			audio_play_sound(snd_talk1,5,false);
			i = 0;			
		}
		i++;
		start = 1;
	}
	else
	{
		obj_player.talking = false;
	}
	
	//calculate offsets
	x = 0;
	y = (display_get_gui_height()/4)*3;
	box_height = display_get_gui_height()/4;
	box_width = display_get_gui_width();
	
	//render textbox and text
	draw_set_alpha(alpha);	
	if(alpha < 1) alpha += spd/10; else alpha = 1;

	draw_set_font(font);
	draw_set_color(c_dkgray);
	draw_rectangle(x,y,x+box_width,y+box_height,0);
	draw_set_color(c_gray);
	draw_rectangle(x,y,x+box_width,y+box_height,1);

	draw_set_font(font);
	draw_set_color(c_gray);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_text_ext
	(
		x + padding +3,
		y + padding,
		print,
		font_size+(font_size/2),
		maxLength
	);
	
	//create boxes for interaction
	//calculate offsets
	ny = (display_get_gui_height()/4)*3 + string_height("E");
	
	//create them
	inst = instance_create_depth(x,ny,depth,obj_rButtons);
	with inst
	{
		width = display_get_gui_width();
		height = string_height("E");
	}
	
	
	draw_set_alpha(1);
	
	//skip prompt
	//E
	draw_set_font(fnt_prompt);
	xx = window_get_width() - string_width("E") - 40;
	yy = window_get_height() - string_height("E")- 20;
	draw_text(xx,yy,"E");
	
	//arrow
	draw_sprite(spr_arrow,0,xx+string_width("E"),yy);
}else
{
	instance_destroy();
}

