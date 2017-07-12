//scp_textBox("text",speed,x,y)

txt = instance_create_depth(argument2, argument3,0,obj_text);
with(txt)
{
	padding = 1;
	maxLength = camera_get_view_width(view_camera[0]);
	text = argument0;
	spd = argument1;
	font = fnt_small;
	
	text_length = string_length(text);
	font_size = font_get_size(font);
	
	draw_set_font(font);
	
	text_width = string_width_ext(text,font_size+(font_size/2),maxLength);
	text_height = string_height_ext(text,font_size+(font_size/2),maxLength);
	
	box_width = text_width + (padding*2);
	box_height = text_height +(padding*2);

}