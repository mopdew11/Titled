/// @description add text over time
if(obj_player.close == true)
{
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
	}
	

	//render textbox and text
	
	draw_set_alpha(alpha);	
	if(alpha < 1) alpha += spd/10; else alpha = 1;

	draw_set_font(font);
	draw_set_color(c_dkgray);
	draw_rectangle(x,y,x+box_width,y+box_height,0);
	draw_set_color(c_red);
	draw_rectangle(x,y,x+box_width,y+box_height,1);

	draw_set_color(c_red);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_text_ext
	(
		x + padding,
		y + padding,
		print,
		font_size+(font_size/2),
		maxLength
	);

	draw_set_alpha(1);
}